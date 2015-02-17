package mynd.search;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
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
import mynd.Global.ExitCode;
import mynd.heuristic.Heuristic;
import mynd.search.policy.Policy;
import mynd.simulator.PlanSimulator;
import mynd.state.Operator;
import mynd.state.State;
import mynd.util.NodeComparator;


/**
 * An AO* search engine working similarly as described in Nilsson (1980).
 * Aggregation of estimates is done by minimizing over OR choices and maximizing
 * over AND choices.
 * 
 * @author Robert Mattmueller
 * @author Manuela Ortlieb
 */
public class AOStarSearch extends HeuristicSearch {

    /**
     * Selection function to choose non-expanded nodes when tracing 
     * the current best partial solution graph.
     */
    public enum SelectionFunction {
        MINH, MAXH, OLDEST, NEWEST
    }; 

    /**
     * How to tie break between unexpanded nodes if the selection
     * function returns the same value for them.
     *
     */
    public enum TieBreaker {
        OLDEST, NEWEST
    };

    /**
     * Epsilon (for double comparison)
     */
    protected static final double EPSILON = 0.0001;

    /**
     * Indicates that neither the cost estimate nor the proof status of a node
     * was changed during an update step.
     */
    private static final int UPDATED_NOTHING = 0;

    /**
     * Indicates that the proof status (and thus also the cost estimate) of a
     * node was changed during an update step.
     */
    private static final int UPDATED_PROOF_STATUS = 1;

    /**
     * Indicates that only the cost estimate, but not the proof status of a node
     * was changed during an update step.
     */
    private static final int UPDATED_COST_ESTIMATE = 2;

    /**
     * Contains all operators which are only sensing, not causative.
     */
    protected List<Operator> sensingOps = new ArrayList<Operator>();

    /**
     * Contains all operators, which are causative.
     */
    protected List<Operator> causativeOps = new ArrayList<Operator>();

    /**
     * Only apply one sensing op, which causes a splitting.
     */
    public static boolean restrictSensingOps = false;

    /**
     * Mapping from unique hash value of world states to nodes in AND/OR graph
     * representing them.
     */
    protected Map<BigInteger, AOStarNode> stateNodeMap = new LinkedHashMap<BigInteger, AOStarNode>(
            100000);


    private AOStarNode nodeToStartTracing;

    private PriorityQueue<AOStarNode> unexpandedNodesFromTracing = new PriorityQueue<AOStarNode>(100, new NodeComparator());

    /**
     * Mapping from states to actions, aka. plan.
     */
    private Policy policy;

    /**
     * Counter for number of dumped plans.
     */
    private int dumpingCounterPlan = 0;

    /**
     * Counter for number of dumped states spaces.
     */
    private int dumpingCounterStateSpace = 0;

    /**
     * Counter for number of traced nodes.
     */
    private int numberOfTracedNodes = 0;

    public static boolean sensingFirst = false;

    public static Integer maxNumberOfNodesToExpandInOneStep = 1;

    /**
     * Set DEBUG true for more outputs.
     */
    public static boolean DEBUG = false;

    /**
     * Set DUMP true to dump the state space and partial plan after each iteration.
     */
    public static boolean DUMP = false;


    /**
     * Create an AO* search manager using a given heuristic estimator.
     * 
     * @param problem
     *            The problem to be solved
     */
    public AOStarSearch(Heuristic heuristic) {
        super(heuristic);
        if (!Global.problem.isFullObservable) {
            // Collect all operators which are sensing but not causative.
            for (Operator op : Global.problem.getOperators()) {
                if (op.isSensing && !op.isCausative) {
                    sensingOps.add(op);
                } else {
                    causativeOps.add(op);
                }
            }
        }
    }

    /**
     * Perform one iteration of the AO* algorithm, i.e. choice of nodes to
     * expand, expansion, and (recursive) update. 
     */
    @Override
    public void doIteration() {
        List<AOStarNode> nodesToExpand = nodesToExpand();
        if (timeout()) {
            return;
        }
        assert nodesToExpand != null;
        for (AOStarNode node : nodesToExpand) {
            expand(node);
            if (timeout()) {
                return;
            }
        }
        assert !nodesToExpand.isEmpty();
        updateUntilFixpoint(nodesToExpand);
    }

    public void dumpStateSpace() {
        File plan = new File("statespace_" + dumpingCounterStateSpace + ".dot");
        dumpingCounterStateSpace++;
        try {
            FileWriter writer = new FileWriter(plan);
            writer.write(new GraphvizWriter(this).createOutput(true));
            writer.flush();
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void dumpPartialSolution() {
        dumpPartialSolution("plan" + "_" + dumpingCounterPlan);
        dumpingCounterPlan++;
    }

    public void dumpPartialSolution(String filename) {
        File plan = new File(filename + ".dot");
        try {
            FileWriter writer = new FileWriter(plan);
            writer.write(new GraphvizWriter(this).createOutput(false));
            writer.flush();
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Expands a given node by creating all outgoing connectors and the
     * corresponding successor states. New states and connectors are installed
     * in the explicit game graph representation.
     * 
     * @param node
     *            Node to expand
     */
    protected void expand(AOStarNode node) {
        if (DEBUG) {
            System.out.println("Node " + node + " is expaneded now!");
        }
        node.setExpanded();
        if (!node.isDecided()) {
            List<Operator> applicableOps;
            if (restrictSensingOps) {
                assert (!Global.problem.isFullObservable);

                // We apply only one sensing op to reduce branching.
                List<Operator> applicableSensingOps = node.state
                        .getApplicableOps(sensingOps);
                if (!applicableSensingOps.isEmpty()) {
                    // We use the first sensing op.
                    applicableOps = new LinkedList<Operator>(
                            Arrays.asList(applicableSensingOps.get(0)));
                    if (!sensingFirst) {
                        // We also apply causative ops.
                        applicableOps.addAll(node.state
                                .getApplicableOps(causativeOps));
                    }
                } else {
                    // No applicable sensing op. Apply all causative actions.
                    applicableOps = node.state.getApplicableOps(causativeOps);
                }
            } else {
                applicableOps = node.state.getApplicableOps(Global.problem
                        .getOperators());
            }
            boolean hasSuccessor = false; // which is different from node (no self-loop)
            for (Operator op : applicableOps) {
                Set<State> successorStates = node.state.apply(op);
                assert !successorStates.isEmpty();
                Set<AOStarNode> children = new LinkedHashSet<AOStarNode>();
                Set<AOStarNode> ancestors = new HashSet<AOStarNode>((int) (node.ancestorNodes.size() / 0.75 + 1) + 1);
                ancestors.addAll(node.ancestorNodes);
                ancestors.add(node);
                for (State successor : successorStates) {
                    AOStarNode newNode = lookupAndInsert(successor);
                    // In case of AO* search, we only add a connector 
                    // if it does not lead to a cycle.
                    if (ancestors.contains(newNode)) {
                        children.clear();
                        break;
                    }
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
    

    /**
     * Fill the state action table by following marked 
     * connectors in the search graph.
     */
    private void fillStateActionTable(AOStarNode node) {
        HashSet<AOStarNode> seen = new HashSet<AOStarNode>();
        Queue<AOStarNode> queue = new LinkedList<AOStarNode>();
        seen.add(node);
        queue.add(node);
        while (!queue.isEmpty()) {
            node = queue.poll();
            if (!node.isGoalNode) {
                policy.addEntry(node.state, node.markedConnector.operator);
                for (AOStarNode child : node.markedConnector.children) {
                    if (!seen.contains(child)) {
                        seen.add(child);
                        queue.add(child);
                    }
                }
            }
        }
    }

    /**
     * Return a plan in the form of an explicit state-action table.
     * 
     * @return policy or null iff no plan was found
     */
    @Override
    public Policy getPolicy() {
        if (initialNode.isDisproven()) {
            System.out.println("Planning task is unsolvable. There is no policy.");
            return null;
        }
        else if (!initialNode.isProven()) {
            System.out.println("Planning task is not solved so far. No policy so far.");
            return null;
        }
        else {
            if (policy == null) {
                policy = new Policy();
                fillStateActionTable((AOStarNode) initialNode);
            }
            return policy;
        }
    }

    /**
     * Delete state action table.
     */
    public void deleteStateActionTable() {
        policy = null;
    }

    /**
     * Test whether a node for a given state has already been allocated or not.
     * If there is already such a node, return it, otherwise create a new node
     * for the given state and associate it with the state in the state-node
     * mapping <tt>setOfAllNodes</tt>. Return the new node.
     * 
     * @param state
     *            State to be represented by a node in the game graph
     * @return The unique node corresponding to the given state, either newly
     *         created or old.
     */
    private AOStarNode lookupAndInsert(State state) {
        AOStarNode node;
        if (!stateNodeMap.containsKey(state.uniqueID)) {
            // This is a new node.
            node = new AOStarNode(state, this, 0);
            stateNodeMap.put(state.uniqueID, node);
            if (node.isDecided()) {
                node.setExpanded();
            }
            if (DEBUG) {
                System.out.println("New node " + node);
            }
        } else {
            node = stateNodeMap.get(state.uniqueID);
            assert state.equals(node.state);
            if (DEBUG) {
                System.out.println("Known node " + node);
            }
        }
        return node;
    }

    /**
     * Find nodes to expand.
     * 
     * @return A set of nodes which will be expanded in the next step.
     */
    protected List<AOStarNode> nodesToExpand() {
        PriorityQueue<AOStarNode> nodesToExpand = traceMarkedConnectors(nodeToStartTracing);
        if (timeout()) {
            return null;
        }
        int num;
        boolean expandAllNodes = false;
        if (expandAllNodes) {
            num = nodesToExpand.size();
        }
        else {
            num = Math.min(nodesToExpand.size(), maxNumberOfNodesToExpandInOneStep);
        }
        List<AOStarNode> result = new ArrayList<AOStarNode>(num);
        for (int i = 0; i < num; i++) {
            result.add(i, nodesToExpand.poll());
        }

        // Used in the case that complete tracing is not necessary in the next iteration
        // (meaning that during update nothing changed).
        unexpandedNodesFromTracing = nodesToExpand; 
        return result;
    }

    @Override
    public String toString() {
        StringBuffer buffer = new StringBuffer();
        for (AOStarNode node : stateNodeMap.values()) {
            buffer.append("node ");
            buffer.append(node.toString());
            buffer.append("\n");
            for (Connector conn : node.outgoingConnectors) {
                buffer.append("    ");
                buffer.append(conn.toString());
                buffer.append("\n");
            }
        }
        return buffer.toString();
    }

    /**
     * Trace down all marked connectors starting from a given state, collecting
     * all unexpanded nodes encountered. Prune trace at proven and disproven
     * nodes.
     * 
     * @param initial node to start from
     * @return The set of all unexpanded nodes in the partial solution graph
     *         induced by the marked connectors which are neither proven nor
     *         disproven sorted by decreasing h-Values.
     */
    protected PriorityQueue<AOStarNode> traceMarkedConnectors(AOStarNode initial) {
        if (timeout()) {
            return null;
        }
        if (DEBUG) {
            System.out.println();
            System.out.println("Tracing...");
        }
        boolean improveTracing = true;
        if (!improveTracing) {
            unexpandedNodesFromTracing.clear();
            initial = (AOStarNode) initialNode;
        }
        PriorityQueue<AOStarNode> result = unexpandedNodesFromTracing;
        Set<AOStarNode> seen = new HashSet<AOStarNode>(unexpandedNodesFromTracing);
        Queue<AOStarNode> queue = new LinkedList<AOStarNode>();
        if (DEBUG) {
            System.out.println("Start node: " + nodeToStartTracing);
        }
        queue.offer(initial);

        while (!queue.isEmpty()) {
            numberOfTracedNodes++;
            if (timeout()) {
                return null;
            }
            AOStarNode next = queue.poll();
            seen.add(next);
            if (!next.isDecided()) {
                if (!next.isExpanded()) {
                    if (DEBUG) {
                        System.out.println("Node " + next
                                + " is added to result... (not expanded).");
                    }
                    result.add(next);
                } 
                else {
                    assert next.markedConnector != null : "Strange case where no connector is marked while tracing...";
                    if (DEBUG) {
                        System.out
                        .println("Node "
                                + next.index + " " + next
                                + " has a marked connector. Add children of marked connector to queue.");
                    }
                    for (AOStarNode child : next.markedConnector.children) {
                        if (!seen.contains(child) && !queue.contains(child)) {
                            queue.offer(child);
                        }
                    }
                }
            }
        }
        nodeToStartTracing = (AOStarNode) initialNode; // Reset.
        return result;
    }

    /**
     * Update the given node by (re)computing its cost estimate as a function of
     * the cost estimates of nodes reached via connectors. If applicable, the
     * flag indicating that the given node has been solved is set. Connector
     * marks are changed where necessary.
     * 
     * @return An integer indicating what changes the update caused.
     *         <tt>AOStar.UPDATED_NOTHING</tt> if neither proof status nor cost
     *         estimate were changed, <tt>AOStar.UPDATED_PROOF_STATUS</tt> if
     *         both proof status and cost estimate were changed,
     *         <tt>AOStar.UPDATED_COST_ESTIMATE</tt> if cost estimate but not
     *         the proof status was changed.
     */
    private int update(AOStarNode node) {
        assert node.isExpanded();
        if (DEBUG) {
            System.out.println("\nUpdate node... " + node);
        }
        if (node.isDecided()) {
            new Exception("Error: Must not call update(node) on nodes already decided.").printStackTrace();
            ExitCode.EXIT_CRITICAL_ERROR.exit();
        }
        // Use first proven connector and break. Else
        // minimize among all proven connectors.
        boolean useFirstProvenConnector = false;

        // 1. Node has a marked proven connector
        if (node.markedConnector != null && node.markedConnector.isProven()) {
            node.setProven();
            node.costEstimate = node.markedConnector.getMaxChildEstimate() + node.markedConnector.baseCost;
            if (!useFirstProvenConnector) {
                Connector oldMarkedConnector = node.markedConnector;
                // minimize among all proven connectors
                for (Connector out : node.outgoingConnectors) {
                    if (out != oldMarkedConnector && out.isProven()) {
                        if (out.getMaxChildEstimate() + out.baseCost < node.costEstimate) {
                            node.markedConnector = out;
                            node.costEstimate = out.getMaxChildEstimate() + out.baseCost; 
                        }
                    }
                }
            }
            return AOStarSearch.UPDATED_PROOF_STATUS;
        }

        // 2. Node has no marked proven connector
        Connector oldMarkedConnector = node.markedConnector;
        double oldCostEstimate = node.costEstimate; // initially this is the h-value.
        if (node.markedConnector == null) {
            node.costEstimate = AbstractNode.DISPROVEN; 
        }
        else {
            node.costEstimate = node.markedConnector.getMaxChildEstimate() + node.markedConnector.baseCost;
        }

        boolean allConnectorsDisproven = true;
        assert node.outgoingConnectors.size() > 0;
        // Find the cheapest outgoing (maybe proven) connector
        for (Connector out : node.outgoingConnectors) {
            if (!out.isDisproven()) {
                allConnectorsDisproven = false;
            }
            if (out != oldMarkedConnector) {
                if (out.isProven()) {
                    if (!node.isProven()) { // first proven connector we found
                        node.markedConnector = out;
                        node.costEstimate = out.getMaxChildEstimate() + out.baseCost;
                        node.setProven();
                        if (useFirstProvenConnector) {
                            return UPDATED_PROOF_STATUS;
                        }
                    }
                    else { // check if this proven connector is cheaper
                        if (out.getMaxChildEstimate() + out.baseCost < node.costEstimate) {
                            node.markedConnector = out;
                            node.costEstimate = out.getMaxChildEstimate() + out.baseCost;
                        }
                    }
                }
                else {
                    if (!node.isProven()) {
                        if (out.getMaxChildEstimate() + out.baseCost < node.costEstimate) {
                            node.markedConnector = out;
                            node.costEstimate = out.getMaxChildEstimate() + out.baseCost;
                        }
                    }
                }
            }
        }
        if (allConnectorsDisproven) {
            node.setDisproven();
            node.markedConnector = null;
        }
        if (node.isProven() || node.isDisproven()) {
            assert !node.isProven() || node.markedConnector != null;
            return UPDATED_PROOF_STATUS;
        }
        else if (Math.abs(node.costEstimate - oldCostEstimate) < AOStarSearch.EPSILON) {
            assert node.markedConnector != null;
            return UPDATED_NOTHING;
        }
        else {
            assert node.markedConnector != null;
            return UPDATED_COST_ESTIMATE;
        }
    }

    /**
     * Update nodes by propagating cost estimates and proof/disproof information
     * backward through the graph.
     * 
     * @param nodes
     *            Nodes to start the update with
     */
    protected void updateUntilFixpoint(List<AOStarNode> nodes) {
        Queue<AOStarNode> queue = new LinkedList<AOStarNode>(nodes);
        Set<AOStarNode> seen = new HashSet<AOStarNode>();
        while (!queue.isEmpty()) {
            if (timeout()) {
                return;
            }
            AOStarNode node = queue.poll();
            seen.add(node);
            double oldCostEstimate = node.costEstimate;

            int updateEffect;
            if (node.isDisproven()) {
                updateEffect = AOStarSearch.UPDATED_PROOF_STATUS;
            } else {
                updateEffect = update(node);
            }
            if (DEBUG) {
                System.out.println("Update state: " + updateEffect);
            }

            if (updateEffect != UPDATED_NOTHING) {
                for (Connector connector : node.incomingConnectors) {
                    AOStarNode parent = connector.parent;

                    // Non-marked connector nodes get not updated unless the cost estimate is decreasing.
                    if (connector != parent.markedConnector && !connector.isProven()) {
                        if (node.costEstimate >= oldCostEstimate) {
                            continue;
                        }
                    }
                    // Marked connector parent is added to the queue unless it it already decided.
                    if (!parent.isDecided() && !queue.contains(parent)) {
                        // Note: We have no closed list here because the graph is by construction acyclic.
                        queue.offer(parent);
                    }
                }
            }
        }
        if (seen.size() == 1) {
            // In this case there was nothing updated in the graph.
            nodeToStartTracing = seen.iterator().next();
            //System.out.println("Update status: nothing changed.");
        }
        else {
            unexpandedNodesFromTracing.clear(); // Reset.
        }

    }

    /**
     * Print statistics about number of created and number of expanded nodes
     * during search.
     */
    @Override
    public void printStats(boolean simulatePlan) {
        int proven = 0;
        for (AOStarNode node : stateNodeMap.values()) {
            if (node.isProven()) {
                ++proven;
            }
        }
        System.out.println("Out of " + stateNodeMap.size()
                + " nodes, " + proven + " are proven");
        System.out.println("Number of node expansions: " + NODE_EXPANSIONS);
        System.out.println("Policy entries: " + getPolicy().size());
        if (simulatePlan) {
            long simulatorTime = System.currentTimeMillis();
            double planCost = PlanSimulator.performValueIteration(getPolicy());
            long simulatorEndTime = System.currentTimeMillis();
            System.out.println("Plan cost (expected number of steps to goal): "
                    + planCost);
            System.out.println("Plan simulator time: "
                    + (simulatorEndTime - simulatorTime) / 1000 + " seconds.");
        }
        if (!Global.problem.isFullObservable) {
            System.out.println("Number of sensing applications in policy: " + getPolicy().getNumberOfSensingApplication());
        }
        if (DEBUG) {
            System.out.println("Number of traced nodes: " + numberOfTracedNodes);
        }
    }

    /**
     * Perform a complete run of the AO* algorithm.
     * 
     * @return Indicator of result. <tt>AbstractSearch.PROTAGONIST_WINS</tt> if
     *         the protagonist provably wins,
     *         <tt>AbstractSearch.ANTAGONIST_WINS</tt> if the antagonist
     *         provably wins, and <tt>AbstractSearch.TIMEOUT</tt> if time-out
     *         occurred before proof.
     */
    @Override
    public Result run() {
        // Start measuring search time.
        starttime = System.currentTimeMillis();

        // Get initial state and insert it with depth 0.
        initialNode = lookupAndInsert(Global.problem.getSingleInitialState());
        nodeToStartTracing = (AOStarNode) initialNode;

        // Search until initial node is proven or disproven or a timeout occurs.
        int i = 0;
        while (!initialNode.isProven() && !initialNode.isDisproven() && !timeout()) {
            if (DEBUG) {
                System.out.println("Performing iteration " + i + " of AO* algorithm.");
                System.out.println("  Number of nodes created: " + stateNodeMap.size());
            }
            doIteration();
            if (DEBUG || DUMP) {
                dumpStateSpace();
                dumpPartialSolution();
            }
            i++;
        }

        // Finish measuring search time.
        endtime = System.currentTimeMillis();

        if (initialNode.isProven()) {
            System.out
            .println("The protagonist has got a winning strategy.");
            return Result.PROVEN;
        } else if (initialNode.isDisproven()) {
            System.out
            .println("The protagonist does not have a winning strategy.");
            return Result.DISPROVEN;
        } else {
            System.out
            .println("No winning strategy for the protaginist found due to time-out.");
            return Result.TIMEOUT;
        }
    }

    /**
     * Get initial node of this search.
     * 
     * @return initial node.
     */
    public AOStarNode getInitNode() {
        return (AOStarNode) initialNode;
    }

    public AOStarNode setInitNode(AOStarNode init) {
        initialNode = lookupAndInsert(init.state);
        return (AOStarNode) initialNode;
    }

    // TODO move this
    /**
     * Apply an operator to the node and create corresponding connectors.
     * 
     * @param node
     * @param op
     * @return the set of successors.
     */
    public Set<AOStarNode> apply(AOStarNode node, Operator op) {
        assert stateNodeMap != null;
        assert node != null;
        assert stateNodeMap.containsKey(node.state.uniqueID);
        Set<AOStarNode> successorNodes = new HashSet<AOStarNode>();
        Set<State> successorStates = node.state.apply(op);
        if (!successorStates.isEmpty()) {
            Set<AOStarNode> ancestors = new HashSet<AOStarNode>((int) (node.ancestorNodes.size() / 0.75 + 1) + 1);
            ancestors.addAll(node.ancestorNodes);
            ancestors.add(node);
            for (State successor : successorStates) {
                AOStarNode newNode = lookupAndInsert(successor);
                successorNodes.add(newNode);
            }
            assert (!successorNodes.isEmpty());
            new Connector(node, successorNodes, op);
        }
        return successorNodes;
    }

    public AOStarSearch getCleanedSearchOnlyContainsThePlan() {
        AOStarSearch result = new AOStarSearch(heuristic);
        AOStarNode init = result.setInitNode(new AOStarNode(getInitNode().state, result, 0));
        assert init != null;
        AOStarNode node = getInitNode();
        Queue<AOStarNode> queue = new LinkedList<AOStarNode>();
        Set<AOStarNode> seen = new HashSet<AOStarNode>();
        queue.add(node);
        seen.add(node);
        Map<AOStarNode, AOStarNode> equivalentNodes = new HashMap<AOStarNode, AOStarNode>();
        assert init != null;
        equivalentNodes.put(node, init);
        while (!queue.isEmpty()) {
            node = queue.poll();
            assert equivalentNodes.containsKey(node);
            if (node.getMarkedConnector() != null) {
                AOStarNode equivalentNode = equivalentNodes.get(node);
                Operator op = node.getMarkedConnector().operator;
                assert equivalentNode != null;
                Set<AOStarNode> successors = result.apply(equivalentNode, op);
                equivalentNode.setMarkedConnector(equivalentNode.getOutgoingConnectors().iterator().next());
                Map<State, AOStarNode> map = new HashMap<State, AOStarNode>();
                for (AOStarNode succ : successors) {
                    map.put(succ.state, succ);
                }


                for (AOStarNode child : node.getMarkedConnector().getChildren()) {
                    if (!seen.contains(child)) {
                        assert map.get(child.state) != null;
                        equivalentNodes.put(child, map.get(child.state));
                        seen.add(child);
                        queue.offer(child);
                    }
                }
            }
            else {
                assert node.isGoalNode;
                assert equivalentNodes.get(node).state.isGoalState();
            }
        }
        return result;
    }
}
