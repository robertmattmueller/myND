package mynd.search;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Set;

import mynd.Global;
import mynd.heuristic.Heuristic;
import mynd.problem.Problem;
import mynd.state.Operator;
import mynd.state.State;
import mynd.util.Pair;


/**
 * An LAO* search engine.
 *
 * @author Robert Mattmueller
 */
public class LAOStarSearch extends AOStarSearch {

  /**
   * Set true for debug information output.
   */
  public static boolean DEBUG = false;

  /**
   * Set DUMP true to dump the state space and partial plan after each iteration.
   */
  public static boolean DUMP = false;

  public static final float DISCOUNT_FACTOR = 0.75f;


  /**
   * Create an LAO* search manager using a given heuristic estimator.
   *
   * @param problem The problem searched on
   * @param estimator Heuristic estimator used for leaf nodes
   */
  public LAOStarSearch(Problem problem, Heuristic heuristic) {
    super(problem, heuristic);
  }

  /**
   * Perform one iteration of the LAO* algorithm.
   */
  @Override
  public void doIteration() {
    if (DEBUG) {
      System.out.println("New iteration: Unexpanded nodes:");
      System.out.println(unexpandedNodes.get(0));
    }
    super.doIteration();
  }

  /**
   * Trace down all marked connectors starting from a given state, collecting all unexpanded nodes
   * encountered. Prune trace at proven and disproven nodes.
   *
   * @param initial initial node to start from
   * @return The set of all unexpanded nodes in the partial solution graph induced by the marked
   *         connectors which are neither proven nor disproven sorted by decreasing h-Values. //
   *         TODO remove sorting?
   */
  @Override
  protected PriorityQueue<AOStarNode> traceMarkedConnectors(AOStarNode initial) {
    if (DEBUG) {
      System.out.println();
      System.out.println("Tracing...");
    }
    PriorityQueue<AOStarNode> result = new PriorityQueue<AOStarNode>();
    Set<AOStarNode> seen = new HashSet<AOStarNode>();
    Queue<AOStarNode> queue = new LinkedList<AOStarNode>();
    queue.offer(initial);

    while (!queue.isEmpty()) {
      if (timeout()) {
        return null;
      }

      AOStarNode next = queue.poll();
      seen.add(next);
      if (!next.isProven() && !next.isDisproven()) {
        if (!next.isExpanded()) {
          if (DEBUG) {
            System.out.println("Node " + next + " is added to result... (not expanded).");
          }
          result.add(next);
        } else {
          if (next.markedConnector != null) {
            if (DEBUG) {
              System.out.println("Node " + next.index + " " + next
                  + " has a marked connector. Add children of marked connector to queue.");
            }
            for (AOStarNode child : next.markedConnector.children) {
              // System.out.print(child.index + " ;");
              if (!seen.contains(child) && !queue.contains(child)) {
                queue.offer(child);
              }
            }
            // System.out.println();
          } else {
            System.err.println("Strange case where no connector is marked while tracing...");
            Global.ExitCode.EXIT_CRITICAL_ERROR.exit();
          }
        }
      }
    }
    return result;
  }


  /**
   * Find nodes to expand.
   *
   * @return A set of nodes which will be expanded in the next step.
   */
  @Override
  protected List<AOStarNode> nodesToExpand() {
    AOStarNode initial;
    initial = (AOStarNode) initialNode;
    PriorityQueue<AOStarNode> nodesToExpand = traceMarkedConnectors(initial);
    if (timeout()) {
      return null;
    }
    List<AOStarNode> bestNodes = null;
    if (!nodesToExpand.isEmpty()) { // Case 1: There is an unexpanded node
      // in current best solution graph.
      if (DEBUG) {
        System.out
        .println("There is at least one unexpaneded node in current best solution graph.");
      }
      bestNodes = new ArrayList<AOStarNode>(nodesToExpand.size());
      int num = nodesToExpand.size();
      for (int i = 0; i < num; i++) {
        bestNodes.add(i, nodesToExpand.poll());
      }
    } else { // Case 2: Choose maxNumberOfNodesToExpand other unexpanded
      // node from the AND/OR-graph.
      if (DEBUG) {
        System.out.println("Case 2: Tracing was not successful!");
        System.out.println("unexpanded nodes " + unexpandedNodes);
      }

      PriorityQueue<AOStarNode> unexpanded = unexpandedNodes.get(alternatingIndex);
      int size = 0;
      if (rateOfNodesToExpandInOneStep == 1.0) {
        size = Math.min(Global.options.getMaxNumberOfNodesToExpand(), unexpanded.size());
      } else {
        if (unexpanded.size() > 0) {
          size = (int) (rateOfNodesToExpandInOneStep * unexpanded.size()) + 1;
        }
      }
      bestNodes = new ArrayList<AOStarNode>(size);
      for (int i = 0; i < size; i++) {
        bestNodes.add(i, unexpanded.poll());
      }
      alternatingIndex = (alternatingIndex + 1) % unexpandedNodes.size();
    }
    return bestNodes;
  }

  private Pair<Map<Connector, Integer>, Set<Connector>> computeBackwardReachableConnectors() {
    Set<Connector> connectorsAtCurrentDistance = new LinkedHashSet<Connector>();
    Set<Connector> backwardReachableConnectors = new LinkedHashSet<Connector>();

    Map<Connector, Integer> distanceMap = new LinkedHashMap<Connector, Integer>();
    int currentDistance = 1;

    Set<AOStarNode> goalNodes = new LinkedHashSet<AOStarNode>();
    for (AOStarNode node : stateNodeMap.values()) {
      if (node.isGoalNode) {
        goalNodes.add(node);
        for (Connector c : node.incomingConnectors) {
          if (!c.parent.isGoalNode && c.isSafe) {
            connectorsAtCurrentDistance.add(c);
            backwardReachableConnectors.add(c);
            distanceMap.put(c, currentDistance);
          }
        }
      }
    }

    while (!connectorsAtCurrentDistance.isEmpty()) {
      currentDistance++;

      Set<Connector> newlyFoundConnectors = new LinkedHashSet<Connector>();

      for (Connector c : connectorsAtCurrentDistance) {
        for (Connector d : c.parent.incomingConnectors) {
          if (!backwardReachableConnectors.contains(d) && !d.parent.isGoalNode && d.isSafe) {
            newlyFoundConnectors.add(d);
            backwardReachableConnectors.add(d);
            distanceMap.put(d, currentDistance);
          }
        }
      }

      connectorsAtCurrentDistance = newlyFoundConnectors;
    }

    for (AOStarNode node : stateNodeMap.values()) {
      if (node != null) {
        for (Connector c : node.outgoingConnectors) {
          c.isSafe = backwardReachableConnectors.contains(c);
        }
      }
    }

    return new Pair<Map<Connector, Integer>, Set<Connector>>(distanceMap,
        backwardReachableConnectors);
  }

  /**
   * Expands a given node by creating all outgoing connectors and the corresponding successor
   * states. New states and connectors are installed in the explicit game graph representation.
   *
   * @param node Node to expand
   */
  @Override
  protected void expand(AOStarNode node) {
    if (DEBUG) {
      System.out.println("Node " + node + " is expaneded now!");
    }
    node.setExpanded();
    for (PriorityQueue<AOStarNode> queue : unexpandedNodes) {
      queue.remove(node); // O(n) - TODO improve this!
    }
    if (!node.isDecided()) {
      List<Operator> applicableOps;
      if (restrictSensingOps) {
        assert (!problem.isFullObservable);

        // We apply only one sensing op to reduce branching.
        List<Operator> applicableSensingOps = node.state.getApplicableOps(sensingOps);
        if (!applicableSensingOps.isEmpty()) {
          // We use the first sensing op.
          applicableOps = new LinkedList<Operator>(Arrays.asList(applicableSensingOps.get(0)));
          if (!Global.options.senseFirst()) {
            // We also apply causative ops.
            applicableOps.addAll(node.state.getApplicableOps(causativeOps));
          }
        } else {
          // No applicable sensing op. Apply all causative actions.
          applicableOps = node.state.getApplicableOps(causativeOps);
        }
      } else {
        applicableOps = node.state.getApplicableOps(problem.getOperators());
      }
      boolean hasSuccessor = false; // which is different from node (no self-loop)
      for (Operator op : applicableOps) {
        Set<State> successorStates = node.state.apply(op);
        assert !successorStates.isEmpty();
        Set<AOStarNode> children = new LinkedHashSet<AOStarNode>();
        for (State successor : successorStates) {
          AOStarNode newNode = lookupAndInsert(successor, (int) (node.getDepth() + op.getCost()));
          children.add(newNode);
        }
        if (!children.isEmpty()) {
          new Connector(node, children, op);
          if (!(children.size() == 1 && children.iterator().next() == node)) {
            hasSuccessor = true;
          }
        }
      }
      if (!hasSuccessor) {
        node.setDisproven(); // Dead end.
      }
      NODE_EXPANSIONS++;
    } else {
      assert false : "Node to expand is already decided.";
    }
  }

  private void computeWeakDiscretePlanSteps(List<AOStarNode> nodes) {
    if (DEBUG) {
      System.out.println("computeWeakDiscretePlanSteps of " + nodes);
    }

    Queue<AOStarNode> queue = new LinkedList<AOStarNode>();
    // Set<AOStarNode> seen = new HashSet<AOStarNode>(); // FIXME Do we need a closed list here?

    // Compute weak goal distances.
    for (AOStarNode node : nodes) {
      boolean weakGoalDistanceReduced = false;
      for (Connector c : node.outgoingConnectors) {
        for (AOStarNode child : c.children) {
          if (child.weakGoalDistance + 1.0 < node.weakGoalDistance) {
            node.weakGoalDistance = child.weakGoalDistance + c.baseCost;
            weakGoalDistanceReduced = true;
          }
        }
      }
      if (weakGoalDistanceReduced) {
        assert !queue.contains(node);
        queue.add(node);
      }
    }

    // Update parents
    while (!queue.isEmpty()) {
      AOStarNode next = queue.poll();
      for (Connector connector : next.incomingConnectors) {
        AOStarNode parent = connector.parent;
        if (next.weakGoalDistance + 1.0 < parent.weakGoalDistance) {
          parent.weakGoalDistance = next.weakGoalDistance + 1;
          if (!queue.contains(parent)) {
            queue.add(parent);
          }
        }
      }
    }
  }

  private boolean connectorIsPromising(Connector connector) {
    for (AOStarNode child : connector.children) {
      if (child.weakGoalDistance < connector.parent.weakGoalDistance) {
        return true;
      }
    }
    return false;
  }

  private int deleteUnprovenConnectors(Set<Connector> backwardReachableConnectors) {
    Set<AOStarNode> goalNodes = new LinkedHashSet<AOStarNode>();
    for (AOStarNode node : stateNodeMap.values()) {
      if (node != null) {
        if (node.isGoalNode) {
          goalNodes.add(node);
        }
      }
    }

    Queue<Connector> deleteQueue = new LinkedList<Connector>();

    Map<AOStarNode, Integer> counter = new LinkedHashMap<AOStarNode, Integer>();

    Set<AOStarNode> candidateParents = new LinkedHashSet<AOStarNode>();
    for (Connector c : backwardReachableConnectors) {
      candidateParents.add(c.parent);
    }

    for (AOStarNode parent : candidateParents) {
      counter.put(parent, 0);
    }

    for (Connector c : backwardReachableConnectors) {
      counter.put(c.parent, counter.get(c.parent) + 1);
    }

    for (Connector c : backwardReachableConnectors) {
      for (AOStarNode child : c.children) {
        if (!goalNodes.contains(child) && !candidateParents.contains(child)) {
          deleteQueue.add(c);
          break;
        }
      }
    }

    while (!deleteQueue.isEmpty()) {
      Connector c = deleteQueue.poll();
      c.isSafe = false;

      AOStarNode parent = c.parent;
      if (counter.containsKey(parent)) {
        counter.put(parent, counter.get(parent) - 1);
        if (counter.get(parent) == 0) {
          for (Connector d : parent.incomingConnectors) {
            deleteQueue.add(d);
          }
        }
      }
    }

    int num_safe = 0;

    for (AOStarNode node : stateNodeMap.values()) {
      for (Connector c : node.outgoingConnectors) {
        if (c.isSafe) {
          num_safe++;
        }
      }
    }

    return num_safe;
  }

  private void performValueIteration(Collection<AOStarNode> allNodes) {
    if (DEBUG) {
      System.out.println("performValueIteration on");
      System.out.println(allNodes);
    }
    // Auxiliary data structures.
    Map<Integer, Double> oldCostEstimate =
        new HashMap<Integer, Double>((int) (allNodes.size() / 0.75 + 1));
    // Connector[] oldMarkedConnectors = new Connector[AbstractNode.numberOfNodes()];

    // Initialization.
    for (AOStarNode node : allNodes) {
      if (node.isProven()) {
        // if (node.isGoalNode) {
        node.costEstimate = 0.0; // TODO Is this correct or if (node.isGoalNode())
      } else if (node.isDisproven()) {
        node.costEstimate = Heuristic.INFINITE_HEURISTIC;
      } else {
        node.costEstimate = node.heuristic;
      }
    }

    // main loop
    boolean converged = false;
    do {
      // update
      for (AOStarNode node : allNodes) {
        oldCostEstimate.put(node.index, node.costEstimate);
        // oldMarkedConnectors[node.index] = node.markedConnector; // TODO Use for check if
        // connectors changed?
      }
      for (AOStarNode node : allNodes) {
        if (!node.isProven()) { // We do not change marked connectors of proven nodes.
          node.markedConnector = null;

          for (Connector connector : node.outgoingConnectors) {
            // A connector is promising only if it has at least one
            // child such that the shortest path from that child to a
            // goal is strictly shorter than the shortest path from
            // the parent of the connector to a goal.
            // TODO Assert that at least one outgoing connector of
            // each expanded node is promising. otherwise the node
            // should be marked as losing.
            if (connectorIsPromising(connector)) {
              markBestConnector(connector, node, oldCostEstimate);
            }
          }

          if (node.markedConnector == null && !node.outgoingConnectors.isEmpty()) {
            for (Connector connector : node.outgoingConnectors) {
              markBestConnector(connector, node, oldCostEstimate);
            }
          }

          if (node.markedConnector == null) {
            // No outgoing connector or only connectors where at least one child is a dead end.
            node.setDisproven();
            node.costEstimate = Heuristic.INFINITE_HEURISTIC;
            if (node == initialNode) {
              if (DEBUG) {
                dumpStateSpace();
              }
              break;
            }
          }
        }
      }

      // convergence test
      converged = true;
      for (AOStarNode node : allNodes) {
        if (Math.abs(node.costEstimate - oldCostEstimate.get(node.index)) >
                EPSILON) {
          converged = false;
          break;
        }
      }

    } while (!converged);
  }


  public void markBestConnector(Connector connector, AOStarNode node,
      Map<Integer, Double> oldCostEstimate) {
    double avgChildEstimate = 0;
    double maxChildEstimate = 0;

    assert connector.children.size() != 0;
    // double cardinalityOfChildWorldStates = 0;
    for (AOStarNode child : connector.children) {
      if (child.isDisproven()) {
        return; // Do not mark a connector which leads to a dead end.
      }
      double childEstimate = child.costEstimate;
      if (oldCostEstimate.containsKey(child.index)) {
        childEstimate = oldCostEstimate.get(child.index);
      }
      if (childEstimate > maxChildEstimate) {
        maxChildEstimate = childEstimate;
      }
      // if (MyNDPlanner.weighBeliefStatesByCardinality && node.state instanceof BeliefState) {
      // double numWorldStates = ((BeliefState) child.state).getNumberOfWorldStates();
      // avgChildEstimate += numWorldStates * childEstimate;
      // cardinalityOfChildWorldStates += numWorldStates;
      // }
      // else {
      avgChildEstimate += childEstimate;
      // }
    }
    // if (MyNDPlanner.weighBeliefStatesByCardinality && node.state instanceof BeliefState) {
    // avgChildEstimate /= cardinalityOfChildWorldStates;
    // }
    // else {
    avgChildEstimate /= connector.children.size();
    // }

    boolean useMax = false; // Experiments show that it seems to be preferable to average about
    // child nodes.
    if (useMax) {
      if (node.markedConnector == null
          || connector.baseCost + DISCOUNT_FACTOR * maxChildEstimate < node.costEstimate) {
        node.costEstimate = connector.baseCost + DISCOUNT_FACTOR * maxChildEstimate;
        node.markedConnector = connector;
      }
    } else {
      if (node.markedConnector == null
          || connector.baseCost + DISCOUNT_FACTOR * avgChildEstimate < node.costEstimate) {
        node.costEstimate = connector.baseCost + DISCOUNT_FACTOR * avgChildEstimate;
        node.markedConnector = connector;
      }
    }


  }

  /**
   * Perform a complete run of the LAO* algorithm.
   *
   * @return Indicator of result. <tt>AbstractSearch.PROTAGONIST_WINS</tt> if the protagonist
   *         provably wins, <tt>AbstractSearch.ANTAGONIST_WINS</tt> if the antagonist provably wins,
   *         and <tt>AbstractSearch.TIMEOUT</tt> if time-out occurred before proof.
   */
  @Override
  public Result run() {
    // Start measuring search time.
    starttime = System.currentTimeMillis();

    // Get initial state and insert it with depth 0.
    initialNode = lookupAndInsert(problem.getSingleInitialState(), 0);
    assert ((AOStarNode) initialNode).getDepth() == 0;

    // Search until initial node is proven or disproven or a timeout occurs.
    int i = 0;
    while (!initialNode.isProven() && !initialNode.isDisproven() && !timeout()) {
      if (DEBUG) {
        System.out.println("Performing iteration " + i++ + " of LAO* algorithm.");
        System.out.println("  Number of nodes created: " + stateNodeMap.size());
      }
      doIteration();

      if (!initialNode.isProven() && !initialNode.isDisproven()) {
        unsafeAndProvenLabelling(stateNodeMap.values());
      }
      if (DEBUG) {
        dumpStateSpace();
        dumpPartialSolution();
      }
    }

    // Finish measuring search time.
    endtime = System.currentTimeMillis();

    if (initialNode.isProven()) {
      return Result.PROVEN;
    } else if (initialNode.isDisproven()) {
      return Result.DISPROVEN;
    } else {
      return Result.TIMEOUT;
    }
  }

  /**
   * Test whether a node for a given state has already been allocated or not. If there is already
   * such a node, return it, otherwise create a new node for the given state and associate it with
   * the state in the state-node mapping <tt>setOfAllNodes</tt>. Return the new node.
   *
   * @param state State to be represented by a node in the game graph
   * @return The unique node corresponding to the given state, either newly created or old.
   */
  @Override
  public AOStarNode lookupAndInsert(State state, int depth) {
    assert depth >= 0;
    AOStarNode node;
    if (!stateNodeMap.containsKey(state.uniqueID)) {
      // This is a new node.
      node = new AOStarNode(state, this, depth);
      stateNodeMap.put(state.uniqueID, node);
      if (node.isProven() || node.isDisproven()) {
        node.setExpanded();
      } else {
        for (PriorityQueue<AOStarNode> queue : unexpandedNodes) {
          queue.add(node);
        }
      }
      if (DEBUG) {
        System.out.println("New node " + node);
      }
    } else {
      node = stateNodeMap.get(state.uniqueID);
      if (!state.equals(node.state)) {
        assert false;
      }
      if (DEBUG) {
        System.out.println("Known node " + node);
      }

      // depth = cheapest path from root node to this node
      if (node.getDepth() > depth) {
        node.setDepth(depth);
        if (!node.isExpanded()) { // FIXME: Avoid this if depth is not
          // used.
          for (PriorityQueue<AOStarNode> queue : unexpandedNodes) {
            queue.remove(node); // O(n)
            queue.add(node);
          }
        }
      }

    }
    return node;
  }


  // TODO Do we have to check all nodes or only those which have been updated before!
  // TODO What about disproven labelling?
  private void unsafeAndProvenLabelling(Collection<AOStarNode> nodes) {
    if (DEBUG) {
      System.out.println("Unsafe and proven labelling.");
    }
    int num_safe = 0;
    for (AOStarNode node : nodes) {
      for (Connector c : node.outgoingConnectors) {
        c.isSafe = true;
        num_safe++;
      }
    }
    int old_num_safe;
    Map<Connector, Integer> layers;
    do {
      old_num_safe = num_safe;

      // Backward reachable connectors.
      Pair<Map<Connector, Integer>, Set<Connector>> p = computeBackwardReachableConnectors();
      layers = p.first;
      Set<Connector> backwardReachable = p.second;

      // int intermediate_num_safe = 0;
      // for (AOStarNode node : nodes) {
      // for (Connector c : node.outgoingConnectors) {
      // if (c.isSafe) {
      // intermediate_num_safe++;
      // }
      // }
      // }

      // unprovable connectors
      num_safe = deleteUnprovenConnectors(backwardReachable);
    } while (num_safe != old_num_safe);

    LinkedList<AOStarNode> updatedNodes = new LinkedList<AOStarNode>();
    for (AOStarNode node : nodes) {
      Connector bestConnector = null;
      int bestDistance = -1;
      for (Connector c : node.outgoingConnectors) {
        if (c.isSafe) {
          if (node.isProven() == false) {
            node.setProven();
            updatedNodes.add(node);
          }

          if (bestConnector == null || bestDistance > layers.get(c)) {
            bestConnector = c;
            bestDistance = layers.get(c);
          }
        }
      }

      if (node.isProven()) {
        // if (node.markedConnector != bestConnector) {
        // System.err.println("Marked connector changed in unsafeAndProvenLabelling.");
        // }
        node.markedConnector = bestConnector;
      }
    }
  }

  @Override
  protected void updateUntilFixpoint(List<AOStarNode> nodes) {
    if (DEBUG) {
      System.out.println("Update until fixpoint.");
    }
    assert !nodes.isEmpty();
    computeWeakDiscretePlanSteps(nodes);
    Queue<AOStarNode> queue = new LinkedList<AOStarNode>();
    Set<AOStarNode> seen = new LinkedHashSet<AOStarNode>();
    queue.addAll(nodes);

    // Compute set Z (= seen) of nodes to be updated
    while (!queue.isEmpty()) {
      AOStarNode node = queue.poll();
      assert (!seen.contains(node));
      seen.add(node);
      for (Connector connector : node.incomingConnectors) {
        AOStarNode parent = connector.parent;
        if (connector != parent.markedConnector) { // FIXME If heuristic is not admissible, this is
          // probably not enough.
          continue;
        }
        if (!parent.isProven() && !parent.isDisproven() && !seen.contains(parent)
            && !queue.contains(parent)) {
          queue.offer(parent);
        }
      }
    }
    performValueIteration(seen);
  }
}
