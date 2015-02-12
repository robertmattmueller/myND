package mynd.search;

import mynd.Global;
import mynd.state.State;

/**
 * Node in the search space.
 * 
 * @author Robert Mattmueller
 */
public abstract class AbstractNode {

    /**
     * Heuristic value indicating proven nodes
     */
    public static final double PROVEN = 0.0;

    /**
     * Heuristic value indicating disproven nodes
     */
    public static final double DISPROVEN = Double.POSITIVE_INFINITY;

    /**
     * Next free index to be used for node numbering
     */
    private static int nextFreeIndex = 0;

    public static int numberOfNodes() {
        return nextFreeIndex;
    }

    /**
     * Unique index
     */
    public final int index;

    /**
     * State represented by this node.
     */
    public final State state;

    /**
     * Flag indicating that this node has been proven, i.e., the protagonist has
     * a winning strategy for this node.
     */
    private boolean isProven = false;

    /**
     * Flag indicating that this node has been disproven, i.e., the antagonist
     * has a winning strategy for this node.
     */
    private boolean isDisproven = false;

    /**
     * Flag indicating that this node has already been expanded.
     */
    private boolean isExpanded  = false;
    
    /**
     * Length of the path from initial node to this node.
     */
    private int depth = -1;
    
    /**
     * Random number to sort nodes by random.
     */
    public int random = Global.generator.nextInt();
    
    /**
     * Indicates if this is a goal node.
     */
    boolean isGoalNode = false;

    /**
     * Creates a new node for a given state.
     * 
     * @param state
     *            State to be represented
     */
    public AbstractNode(State state, int depth) {
        this.state = state;
    	setDepth(depth);
        index = nextFreeIndex++;
        if (state.isGoalState()) {
        	isGoalNode = true;
        }
    }

    @Override
    public boolean equals(Object o) {
        if (!(o instanceof AbstractNode)) {
            return false;
        }
        return state.equals(((AbstractNode) o).state);
    }

    @Override
    public int hashCode() {
        return state.hashCode();
    }

    @Override
    public String toString() {
        return state.toString();
    }
    
    public void setExpanded() {
    	assert isExpanded == false : "It does not make sense to expand a node a second time.";
    	isExpanded = true;
    	//state.beliefStateBDD.free();
    	//state = null;
    }
    
    public boolean isExpanded() {
    	return isExpanded;
    }
    
    public void setDepth(int depth) {
    	assert (depth >= 0);
    	//assert (!(depth == 0) || state.equals(Global.problem.manager.initialState) || (state.equals(Global.problem.getExplicitInitialState()[0])));
    	this.depth = depth;
    }
    
    public int getDepth() {
    	return depth;
    }
    
    public int getIndex() {
    	return index;
    }
    
    public boolean isProven() {
        return isProven;
    }
    
    public boolean isDisproven() {
        return isDisproven;
    }
    
    public void setProven() {
        assert !isDisproven;
        isProven = true;
    }
    
    public void unsetProven() {
        assert isProven;
        isProven = false;
    }
    
    public void setDisproven() {
        assert !isProven;
        isDisproven = true;
    }
    
    public boolean isDecided() {
        return isProven || isDisproven;
    }
}
