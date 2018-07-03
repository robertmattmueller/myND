package mynd.search;

import mynd.problem.Problem;
import mynd.search.policy.Policy;
import mynd.simulator.PlanSimulator;

/**
 * An abstract search engine.
 *
 * @author Robert Mattmueller
 */
public abstract class AbstractSearch {
  /**
   * Problem this search will operate on.
   */
  protected Problem problem;

  public enum Result {
    // problem has been neither solved nor proven unsolvable yet
    UNDECIDED,

    // existence of a winning strategy for the protagonist
    PROVEN,

    // non-existence of a winning strategy for the protagonist
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
   * Expected costs of the resulting plan;
   */
  protected Double planCost = null;

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
   * @return Explicit state action table representing the plan that was found or null if no plan was
   *         found (so far).
   */
  public abstract Policy getPolicy();

  /**
   * Perform a complete run of the search algorithm.
   *
   * @return Indicator of result. <tt>AbstractSearch.PROTAGONIST_WINS</tt> if the protagonist
   *         provably wins, <tt>AbstractSearch.ANTAGONIST_WINS</tt> if the antagonist provably wins,
   *         and <tt>AbstractSearch.TIMEOUT</tt> if time-out occurred before proof.
   */
  public abstract Result run();

  /**
   * Set the time-out for the search.
   *
   * @param timeout Time-out in milliseconds
   */
  public void setTimeout(long timeout) {
    assert timeout > 0 : "A timeout of 0 or less seconds does not make sense.";
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

  public AbstractSearch(Problem problem) {
    this.problem = problem;
  }

  /**
   * Print statistics about the search.
   *
   * @param simulatePlan Indicates if the plan should be simulated to compute costs.
   */
  public abstract void printStats(boolean simulatePlan);

  /**
   * Simulate the resulting policy and compute expected costs. Simulation time is measured.
   */
  protected void simulatePlan() {
    assert (getPolicy() != null);
    long simulatorTime = System.currentTimeMillis();
    planCost = (new PlanSimulator(problem)).performValueIteration(getPolicy());
    long simulatorEndTime = System.currentTimeMillis();
    System.out.println("Plan cost (expected number of steps to goal): " + planCost);
    System.out.println("Plan simulator time: " + (simulatorEndTime - simulatorTime) / 1000
        + " seconds.");
  }

  /**
   * Get expected costs of the resulting plan.
   *
   * @return plan costs
   */
  public Double getPlanCost() {
    return planCost;
  }

  /**
   * Get root node of this search.
   *
   * @return initial node
   */
  public AbstractNode getInitialNode() {
    return initialNode;
  }
}
