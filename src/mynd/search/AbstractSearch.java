package mynd.search;

import mynd.Global;

/**
 * An abstract search engine.
 * 
 * @author Robert Mattmueller
 */
public abstract class AbstractSearch {
    
    public enum Result {       
        // existence of a winning strategy for the protagonist
        PROVEN,
        
        //non-existence of a winning strategy for the protagonist
        DISPROVEN,
        
        // indicating time-out
        TIMEOUT
    };

    /**
     * Indicates that no time-out is used.
     */
    public static final long NO_TIMEOUT = Long.MAX_VALUE;

    /**
     * System time when search started.
     */
    protected long starttime;

    /**
     * System time when search ended.
     */
    public long endtime;

    /**
     * Search time-out.
     */
    long timeout = AbstractSearch.NO_TIMEOUT;
    
    /**
     * Counter for node expansions.
     */
    public static int NODE_EXPANSIONS = 0;
    
    /**
     * Start node of the search.
     */
    protected AbstractNode initialNode;

    /**
     * Dump the plan in an arbitrary format.
     */
    public abstract void dumpPlan();

    /**
     * Print a plan in the competition policy format, if one has been found.
     */
    public void getPlanAsPolicy() {
    	assert (Global.problem.isFullObservable);
    	System.err.println("Dump plan...");
    	System.out.println(getExplicitStateActionTable().toStringPolicy());
    	System.err.println("Done");
    }
    
    /**
     * Print a plan, if one has been found.
     */
    public void getPlanAsDebugOutput() {
    	System.err.println("Dump plan...");
    	System.err.println(getExplicitStateActionTable().toString());
    }

    /**
     * Return a plan in the form of an explicit state-action table.
     * 
     * @return Explicit state action table representing the plan that was found.
     */
    public abstract StateActionTable getExplicitStateActionTable();

    /**
     * Perform a complete run of the search algorithm.
     * 
     * @return Indicator of result. <tt>AbstractSearch.PROTAGONIST_WINS</tt> if
     *         the protagonist provably wins,
     *         <tt>AbstractSearch.ANTAGONIST_WINS</tt> if the antagonist
     *         provably wins, and <tt>AbstractSearch.TIMEOUT</tt> if time-out
     *         occurred before proof.
     */
    public abstract Result run();

    /**
     * Set the time-out for the search.
     * 
     * @param timeout
     *            Time-out in milliseconds
     */
    public void setTimeout(long timeout) {
        assert timeout > 0;
        this.timeout = timeout;
    }

    /**
     * Check whether a time-out has occurred.
     * 
     * @return True iff a time-out has been set and has been exceeded.
     */
    protected boolean timeout() {
        if (timeout == AbstractSearch.NO_TIMEOUT) {
            return false;
        }
        return System.currentTimeMillis() - starttime > timeout;
    }
    
    /**
     * Print statistics about the search.
     *
     * @param simulatePlan Indicates if the plan should be simulated to compute costs.
     */
    public abstract void printStats(boolean simulatePlan);
    
}
