package mynd.search;

import java.util.LinkedHashSet;
import java.util.Set;

import mynd.heuristic.ZeroHeuristic;
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
    int            heuristic;

    /**
     * Cost estimate of this node
     */
    double         costEstimate;
    
    /**
     * Weak goal distance of this node.
     */
    double weakGoalDistance;

    /**
     * Incoming connectors
     */
    Set<Connector> incomingConnectors;

    /**
     * Outgoing connectors
     */
    Set<Connector> outgoingConnectors;

    /**
     * The outgoing connector currently marked.
     */
    Connector      markedConnector = null;

    /**
     * Creates a new node for a given state.
     * 
     * @param state
     *            State to be represented
     * @param manager
     *            The AOStar search instance controlling this node
     */
    public AOStarNode(State state, AOStarSearch searchManager, int depth) {
        super(state, depth);
    	if (searchManager.estimator == null) {
    		searchManager.estimator = new ZeroHeuristic();
    	}
        heuristic = (int) searchManager.estimator.getHeuristic(state);
        costEstimate = heuristic;
        isProven = state.isGoalState();
        isGoalNode = state.isGoalState();
        if (isGoalNode) {
        	weakGoalDistance = 0;
        }
        else {
        	weakGoalDistance = Double.POSITIVE_INFINITY;
        }
        // FIXME: Assumption that dead ends are reliable
        isDisproven = costEstimate == AbstractNode.DISPROVEN;

        incomingConnectors = new LinkedHashSet<Connector>();
        outgoingConnectors = new LinkedHashSet<Connector>();
    }

    @Override
    public String toString() {
        return state.toString() + ":" + costEstimate + " (depth: " + getDepth() + ", h-value: " + heuristic + ", index: " + index + ")";
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
}
