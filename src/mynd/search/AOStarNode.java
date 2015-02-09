package mynd.search;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

import mynd.state.State;


/**
 * Node in the AO* search space.
 * 
 * @author Robert Mattmueller
 */
public class AOStarNode extends AbstractNode implements Comparable<AOStarNode> {

    /**
     * Heuristic value of this node
     */
    int heuristic;

    /**
     * Cost estimate of this node
     */
    double costEstimate;

    /**
     * Weak goal distance of this node.
     */
    double weakGoalDistance;

    /**
     * Incoming connectors
     */
    Set<Connector> incomingConnectors = new LinkedHashSet<Connector>();

    /**
     * Outgoing connectors
     */
    Set<Connector> outgoingConnectors = new LinkedHashSet<Connector>();;

    /**
     * The outgoing connector currently marked.
     */
    Connector markedConnector = null;
    
    /**
     * Set of all ancestor nodes.
     */
    Set<AOStarNode> ancestorNodes = new HashSet<AOStarNode>();

    /**
     * Creates a new node for a given state.
     * 
     * @param state
     *            State to be represented
     * @param manager
     *            The AOStar search instance controlling this node
     */
    public AOStarNode(State state, HeuristicSearch searchManager, int depth) {
        super(state, depth);
        assert searchManager.heuristic != null;
        heuristic = (int) searchManager.heuristic.getHeuristic(state);
        costEstimate = heuristic;
        if (state.isGoalState()) {
            isGoalNode = true;
            setProven();
            weakGoalDistance = 0;
        }
        else {
            weakGoalDistance = Double.POSITIVE_INFINITY;
        }
        // TODO: Assumption that dead ends are reliable
        if (costEstimate == AbstractNode.DISPROVEN) {
            setDisproven();
        }
        
    }

    @Override
    public String toString() {
        return state.toString() + ":" + costEstimate + " (depth: " + getDepth() + ", h-value: " + heuristic + ", cost estimate: " + costEstimate + ", index: " + index + ")";
    }

    public int getHeuristic() {
        return heuristic;
    }

    /**
     * Prefer nodes with higher h-value.
     */
    public int compareTo(AOStarNode o) {
        return o.heuristic - heuristic;
    }

    /**
     * Get marked connector of this AO* node.
     * 
     * @return marked connector.
     */
    public Connector getMarkedConnector() {
        return markedConnector;
    }

    public void setMarkedConnector(Connector c) {
        this.markedConnector = c;
    }

    /**
     * Get incoming connectors of this AO* node.
     * @return
     */
    public Set<Connector> getIncomingConnectors() {
        return incomingConnectors;
    }

    /**
     * Get outgoing connectors of this AO* node.
     * @return
     */
    public Set<Connector> getOutgoingConnectors() {
        return outgoingConnectors;
    }
    
    @Override
    public void setDisproven() {
        super.setDisproven();
        costEstimate = DISPROVEN;
    }
}
