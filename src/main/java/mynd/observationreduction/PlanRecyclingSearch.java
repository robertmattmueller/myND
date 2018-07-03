package mynd.observationreduction;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

import mynd.Global;
import mynd.MyNDPlanner;
import mynd.problem.Problem;
import mynd.search.AOStarNode;
import mynd.search.AOStarSearch;
import mynd.search.AbstractSearch.Result;
import mynd.search.Connector;
import mynd.search.policy.Policy;
import mynd.simulator.PlanSimulator;
import mynd.state.Operator;
import mynd.state.State;
import mynd.symbolic.BeliefState;
import mynd.symbolic.PartiallyObservableProblem;
import mynd.util.Pair;
import javabdd.BDD;


/**
 *
 * @author Manuela Ortlieb
 *
 */

public class PlanRecyclingSearch extends GreedySearch {

  /**
   * Set true to start the DEBUG mode with additional output information.
   */
  public static boolean DEBUG = false;

  public PlanRecyclingSearch(MyNDPlanner solver) {
    super(solver);
    search = (AOStarSearch) solver.getSearch();
    search = search.getCleanedSearchOnlyContainsThePlan(); // TODO: necessary?
  }

  @Override
  public boolean run(Operator deleteOperator) {
    Problem problem = solver.getProblem();
    assert search.getInitNode().state.equals(originalInitState);
    long start = System.currentTimeMillis();
    Set<AOStarNode> gaps = getGaps(deleteOperator);
    if (true) {
      System.out.println("Gaps are: " + gaps);
    }
    System.out.println("Gaps computation time: " + (System.currentTimeMillis() - start));

    Set<Operator> oldOperators = updateOperatorsOfGlobalProblem(deleteOperator);
    if (!gaps.isEmpty()) {
      //ArrayList<Pair<AOStarSearch, AOStarNode>> searchList = new ArrayList<Pair<AOStarSearch, AOStarNode>>();

      Map<State, AOStarNode> beliefStatesCovered = new HashMap<State, AOStarNode>();
      while (gaps.size() > 0) {
        // Start with the gap with minimal depth.
        AOStarNode n = getNodeWithMinimalDepth(gaps);
        gaps.remove(n);

        if (!beliefStatesCovered.containsKey(n.state)) {
          // We start from n.
          problem.setInitialState(n.state);

          boolean foundPlan = solver.runProblem() == Result.PROVEN;
          AOStarNode initNode = ((AOStarSearch) solver.getSearch()).getInitNode();

          Set<AOStarNode> seen = new HashSet<AOStarNode>();
          Queue<AOStarNode> queue = new LinkedList<AOStarNode>();
          queue.offer(initNode);
          seen.add(initNode);
          while (!queue.isEmpty()) {
            AOStarNode node = queue.poll();
            beliefStatesCovered.put(node.state, node);
            if (node.getMarkedConnector() != null) {
              for (AOStarNode child : node.getMarkedConnector().getChildren()) {
                if (!seen.contains(child)) {
                  queue.offer(child);
                  seen.add(child);
                }
              }
            }
          }

          if (!foundPlan){
            problem.setOperators(oldOperators, true);
            problem.setInitialState(originalInitState);
            System.out.println("Plan recycling time (not successful): " + (System.currentTimeMillis() - start));
            return false;
          }
        }
      }
      // Finished computing plans for gaps.

      // Restore the initial state.
      problem.setInitialState(originalInitState);

      // Now build a new solution graph from the resulting searches.
      // This is realized by building a somehow artificial AOStarSearch.
      AOStarSearch mergedPlanSearch = new AOStarSearch(problem, search.heuristic);
      AOStarNode newInitNode = new AOStarNode(originalInitState, mergedPlanSearch, 0);
      newInitNode = mergedPlanSearch.setInitNode(newInitNode);

      AOStarNode init = search.getInitNode();
      assert init.state.equals(originalInitState);
      Set<State> seen = new HashSet<State>();
      Queue<Pair<AOStarNode, Integer>> queue = new LinkedList<Pair<AOStarNode, Integer>>();
      queue.offer(new Pair<AOStarNode, Integer>(init, 0));
      seen.add(init.state);

      Map<AOStarNode, AOStarNode> equivalentNodes = new HashMap<AOStarNode, AOStarNode>();
      equivalentNodes.put(init, newInitNode);

      while (!queue.isEmpty()) {
        Pair<AOStarNode, Integer> pair = queue.poll();
        AOStarNode node = pair.first;
        AOStarNode equivalentNode = equivalentNodes.get(node);
        //System.out.println("Equiv node from queue: " + equivalentNode);
        assert node.equals(equivalentNode);
        if (node.state.isGoalState()) {
          assert equivalentNode.state.isGoalState();
        }

        // Follow the policy until a belief state from the belief state covered set is found.
        if (beliefStatesCovered.containsKey(node.state)) {
          node = beliefStatesCovered.get(node.state);
        }
        if (node.getMarkedConnector() != null) {
          // Apply the marked connector's operator in the MergedPlanSearch.
          Set<AOStarNode> successors = mergedPlanSearch.apply(equivalentNode, node.getMarkedConnector().operator);
          assert equivalentNode.getOutgoingConnectors().size() == 1;
          equivalentNode.setMarkedConnector(equivalentNode.getOutgoingConnectors().iterator().next());

          Map<State, AOStarNode> successorMap = new HashMap<State, AOStarNode>();
          for (AOStarNode successor : successors) {
            successorMap.put(successor.state, successor);
          }
          assert successors.size() == node.getMarkedConnector().getChildren().size();
          for (AOStarNode child : node.getMarkedConnector().getChildren()) {
            assert successors.contains(child);
            if (!seen.contains(child.state)) {
              seen.add(child.state);
              queue.offer(new Pair<AOStarNode, Integer>(child, pair.second + 1));
              equivalentNodes.put(child, successorMap.get(child.state));
            }
          }
        }
        else {
          assert node.state.isGoalState();
          assert equivalentNodes.get(node).state.isGoalState();
        }
      }
      assert newInitNode.getMarkedConnector() != null;
      search = mergedPlanSearch;
      assert correctPlan(newInitNode, deleteOperator);
      search.deleteStateActionTable(); // TODO not needed?
      Policy table = search.getPolicy();
      System.out.println("Policy entries: " + table.size());
      if (Global.options.computeCosts) {
        long simulatorTime = System.currentTimeMillis();
        double planCost = new PlanSimulator(problem).performValueIteration(table);
        long simulatorEndTime = System.currentTimeMillis();
        System.out.println("Plan cost (expected number of steps to goal): "
            + planCost);
        System.out.println("Plan simulator time: "
            + (simulatorEndTime - simulatorTime) / 1000 + " seconds.");
      }
      System.out.println("Number of sensing applications in policy: " + table.getNumberOfSensingApplication());
      System.out.println("Plan recycling time (successful): " + (System.currentTimeMillis() - start));
      if (Global.options.dumpPlan) {
        System.out.println("Merged Plan:");
        System.out.println(table);
      }
      return true;
    }
    else {
      // Sensing action was not part of the old solution graph.
      System.out.println("Plan recycling time (nothing to do): " + (System.currentTimeMillis() - start));
      return true;
    }
  }

  // TODO: move to BDD manager?!
  private boolean isVarKnownInThisState(State state, BDD obsVarSetComplement, Set<Integer> obsVarSet) {
    // Test if var is unknown in the current state
    BeliefState bs = (BeliefState) state;
    BDD abs = bs.beliefStateBDD.id().exist(obsVarSetComplement);
    // Now get the valuation of the abstracted belief state BDD.
    List<Map<Integer, Integer>> vals =
        ((PartiallyObservableProblem) solver.getProblem()).BDDManager.getValuations(abs, obsVarSet);
    abs.free();
    if (vals.size() > 1) {
      return false;
    }
    return true;
  }

  private Set<AOStarNode> getGaps(Operator op) {
    PartiallyObservableProblem problem = (PartiallyObservableProblem) solver.getProblem();
    Set<AOStarNode> result = new HashSet<AOStarNode>();
    int obsVar = op.observation.iterator().next().first;
    assert op.observation.size() == 1;
    if (!problem.variablesWhichAreInitiallyKnown
        .contains(obsVar)) {
      result.add(search.getInitNode());
      return result;
    }

    Queue<AOStarNode> queue = new LinkedList<AOStarNode>();
    queue.add(search.getInitNode());
    assert search.getInitNode().state.equals(originalInitState);
    Set<AOStarNode> seen = new HashSet<AOStarNode>();
    seen.add(search.getInitNode());

    Set<Integer> obsVarSet = new HashSet<Integer>(Arrays.asList(obsVar));
    BDD obsVarSetComplement = problem.BDDManager.getSymbolicPatternComplement(problem, obsVarSet);
    // TODO delete this BDD

    while (!queue.isEmpty()) {
      AOStarNode node = queue.poll();
      if (node.getMarkedConnector() != null) {
        if (node.getMarkedConnector().operator.equals(op)) {
          // We found an application of the sensing action which should be deleted.

          // Search the parent nodes, where the variable was known
          Set<AOStarNode> closed = new HashSet<AOStarNode>();
          Queue<AOStarNode> parents = new LinkedList<AOStarNode>();

          for (Connector con : node.getIncomingConnectors()) {
            // Each incoming connector has to be marked.
            assert con.getParent().getMarkedConnector() == con;
            //assert search.getPolicy().getStates().contains(con.getParent().state);
            //assert search.getPolicy().findMatchingOperator(con.getParent().state).equals(con.operator);
            if (!closed.contains(con.getParent())) {
              parents.add(con.getParent());
              closed.add(con.getParent());
            }
          }
          while (!parents.isEmpty()) {
            AOStarNode p = parents.poll();
            if (!isVarKnownInThisState(p.state, obsVarSetComplement, obsVarSet)) {
              // The the value of the sensed var is unknown in this state.
              // Add its parents.
              for (Connector c : p.getIncomingConnectors()) {
                // Each incoming connector has to be marked.
                assert c.getParent().getMarkedConnector() == c;
                //assert search.getExplicitStateActionTable().getStates().contains(c.getParent().state);
                //assert search.getExplicitStateActionTable().findMatchingOperator(c.getParent().state).equals(c.operator);
                if (!closed.contains(c.getParent())) {
                  parents.add(c.getParent());
                  closed.add(c.getParent());
                }
              }
            }
            else {
              result.add(p);
            }
          }
        }
        else {
          for (AOStarNode child : node.getMarkedConnector().getChildren()) {
            if (!seen.contains(child)) {
              seen.add(child);
              queue.add(child);
            }
          }
        }
      }
      else {
        assert node.state.isGoalState();
      }
    }
    return result;
  }

  // TODO move to node class
  public AOStarNode getNodeWithMinimalDepth(Set<AOStarNode> nodes) {
    AOStarNode result = null;
    int minDepth = Integer.MAX_VALUE;
    for (AOStarNode node : nodes) {
      if (node.getDepth() < minDepth) {
        minDepth = node.getDepth();
        result = node;
      }
    }
    assert result != null;
    return result;
  }

  /**
   * Check if the plan starting in initNode is a valid plan.
   *
   * @param initNode
   * @param forbiddenOps
   * @return true iff. the plan is valid
   */
  public boolean correctPlan(AOStarNode initNode, Operator deleteOperator) {
    Set<Operator> forbiddenOps = new HashSet<Operator>(ObservationReduction.deletedOperators);
    forbiddenOps.add(deleteOperator);
    if (DEBUG) {
      System.out.println("Dump merged plan...");
    }
    Queue<AOStarNode> queue = new LinkedList<AOStarNode>();
    Set<AOStarNode> seen = new HashSet<AOStarNode>();
    seen.add(initNode);
    queue.add(initNode);
    while (!queue.isEmpty()) {
      AOStarNode currentNode = queue.poll();
      if (currentNode.getMarkedConnector() == null) {
        if (!currentNode.state.isGoalState()) {
          System.out.println("Plan is not closed. " + (currentNode.state == originalInitState));
          return false;
        }
      }
      else {
        if (DEBUG) {
          System.out.println("if " + currentNode.state);
          System.out.println("then " + currentNode.getMarkedConnector().operator);
        }
        if (forbiddenOps.contains(currentNode.getMarkedConnector().operator)) {
          System.out.println("Plan contains forbidden operator " + currentNode.getMarkedConnector().operator);
          return false;
        }
        for (AOStarNode child : currentNode.getMarkedConnector().getChildren()) {
          if (!child.getIncomingConnectors().contains(currentNode.getMarkedConnector())) {
            System.out.println("Incoming connectors broken!");
            return false;
          }
          if (!seen.contains(child)) {
            seen.add(child);
            queue.offer(child);
          }
        }
      }
    }
    return true;
  }

}
