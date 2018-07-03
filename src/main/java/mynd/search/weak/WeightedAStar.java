package mynd.search.weak;

import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Set;

import mynd.heuristic.Heuristic;
import mynd.problem.Problem;
import mynd.search.AbstractSearch;
import mynd.search.policy.Policy;
import mynd.search.policy.WeakPlan;
import mynd.search.policy.WeakPlan.WeakPlanEntry;
import mynd.search.weak.WeightedAStarNode.WeightedAStarConnector;
import mynd.search.weak.WeightedAStarNode.WeightedAStarNodeComparator;
import mynd.state.Operator;
import mynd.state.State;

/**
 * @author Philipp Lerche
 */

public class WeightedAStar extends AbstractWeakPlanSearch {

  WeakPlan solution;
  public final Comparator<WeightedAStarNode> comparator;
  private int nodeExpansions;

  public WeightedAStar(Problem problem, Comparator<WeightedAStarNode> comparator) {
    super(problem);
    this.comparator = comparator;
    nodeExpansions = 0;
  }

  public WeightedAStar(Problem problem, int gWeight, int hWeight) {
    this(problem, new WeightedAStarNodeComparator(gWeight, hWeight));
  }

  @Override
  public Result run(State from, int maxdepth) {
    assert heuristic != null : "no estimator specified!";
    solution = null;
    Result result = AbstractSearch.Result.DISPROVEN;

    // init
    Queue<WeightedAStarNode> open = new PriorityQueue<WeightedAStarNode>(1000, comparator);
    open.add(new WeightedAStarNode(from, 0, 0));
    Map<State, Integer> closed = new HashMap<State, Integer>();

    // main loop
    while (!open.isEmpty()) {
      WeightedAStarNode currentNode = open.poll();

      if (currentNode.gValue > maxdepth) {
        result = Result.UNDECIDED;
        break;
      } else if (super.timeout()) {
        result = Result.TIMEOUT;
        break;
      }

      Integer i = closed.get(currentNode.state);
      if (i == null || currentNode.gValue < i) {
        closed.put(currentNode.state, currentNode.gValue);

        int goalDistance = super.checkGoal(currentNode.state);

        // There is already a policy entry for this node or it is a goal node.
        if (goalDistance >= 0) {
          extractSolution(currentNode, goalDistance);
          open.clear();
          closed.clear();
          result = AbstractSearch.Result.PROVEN;
          break;
        }

        // Goal distance is -1 meaning that there is no policy entry for this node.
        open.addAll(expand(currentNode));
      }
    }
    return result;
  }

  protected List<WeightedAStarNode> expand(WeightedAStarNode currentNode) {
    List<WeightedAStarNode> result = new LinkedList<WeightedAStarNode>();
    for (Operator operator : super.getAllowedOperators(currentNode.state)) {
      // the application of an operator can have multiple outcomes
      // FOND: non-deterministic outcomes
      // POND: splitting of belief states by sensing actions
      Set<State> succStates = currentNode.state.apply(operator);
      WeightedAStarNode[] succNodes = new WeightedAStarNode[succStates.size()];
      int i = 0;
      for (State successorState : succStates) {
        WeightedAStarNode childNode =
            new WeightedAStarNode(successorState, (int) (currentNode.gValue + operator.getCost()),
                (int) super.heuristic.getHeuristic(successorState));
        if (childNode.hValue < Heuristic.INFINITE_HEURISTIC) {
          result.add(childNode);
        }
        succNodes[i++] = childNode;
      }
      new WeightedAStarConnector(currentNode, operator, succNodes);
    }
    NODE_EXPANSIONS++; // Overall node expansions
    nodeExpansions++;
    return result;
  }

  protected void extractSolution(WeightedAStarNode node, int goalDistance) {
    solution = new WeakPlan(problem, node.state, goalDistance);
    WeightedAStarNode currentNode = node;
    while (currentNode.incomingConnector != null) {
      WeakPlanEntry newEntry =
          new WeakPlanEntry(currentNode.incomingConnector.from.state,
              currentNode.incomingConnector.operator);
      for (WeightedAStarNode sibling : currentNode.incomingConnector.to) {
        if (!sibling.state.equals(currentNode.state)) {
          newEntry.unintendedOutcomes.add(sibling.state);
        }
      }
      solution.entries.addFirst(newEntry);
      currentNode = currentNode.incomingConnector.from;
    }
  }

  @Override
  public Policy getPolicy() {
    return solution.toPolicy();
  }

  @Override
  public WeakPlan getPlan() {
    return solution;
  }

  @Override
  public void dumpPlan() {
    assert solution != null;
    System.out.println(solution.toString());
  }

  @Override
  public void printStats(boolean simulatePlan) {
    System.out.println("Max depth: " + maxDepth);
    System.out.println("Node expansions: " + nodeExpansions);
  }
}
