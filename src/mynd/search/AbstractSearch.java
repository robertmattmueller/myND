package mynd.search;

import mynd.search.policy.Policy;
import mynd.simulator.PlanSimulator;

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
    public void dumpPlan() {
        System.out.println(getPolicy());
    }

    public void printPlan(String filename) {
        getPolicy().printToFile(filename);
    }


    /**
     * Return a plan in the form of an explicit state-action table.
     * 
     * @return Explicit state action table representing the plan that was found
     * 	       or null if no plan was found (so far).
     */
    public abstract Policy getPolicy();

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
     * @throws Exception iff timeout is negative
     */
    public void setTimeout(long timeout) throws Exception {
        if (timeout <= 0) {
            throw new Exception("Negative timeout for planning is not allowed. Maybe preprocessing takes too much time or timeout has to be increased.");
        }
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

    /**
     * Simulate the resulting policy and compute expected costs. Simulation time is 
     * measured.
     */
    protected void simulatePlan() {
        if (getPolicy() != null) {
            long simulatorTime = System.currentTimeMillis();
            double planCost = PlanSimulator.performValueIteration(getPolicy());
            long simulatorEndTime = System.currentTimeMillis();
            System.out.println("Expected Plan Cost: " + planCost);
            System.out.println("Plan simulator time: " + (simulatorEndTime - simulatorTime)/ 1000 + " seconds.");
        }
    }

}
