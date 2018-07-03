/**
 *
 */
package mynd.search;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Set;

import mynd.Global;
import mynd.MyNDPlanner;
import mynd.heuristic.Heuristic;
import mynd.problem.Problem;
import mynd.search.policy.Policy;
import mynd.search.policy.WeakPlan;
import mynd.search.policy.WeakPlan.WeakPlanEntry;
import mynd.search.weak.AbstractWeakPlanSearch;
import mynd.search.weak.EnforcedHillClimbing;
import mynd.search.weak.FailState;
import mynd.search.weak.FailState.SearchDirection;
import mynd.search.weak.WeightedAStar;
import mynd.state.Operator;
import mynd.state.State;

/**
 * Implements the Fast Incremental Planner (FIP) algorithm for FOND and POND problems.
 *
 * @author Philipp Lerche <lerchep@tf.uni-freiburg.de>
 * */
public class FIPSearch extends AbstractSearch {

  public static enum QueueType {
    PRIORITY {
      @Override
      public Queue<FailState> newInstance() {
        return new PriorityQueue<FailState>(5000);
      }
    },
    FIFO {
      @Override
      public Queue<FailState> newInstance() {
        return new LinkedList<FailState>();
      }
    };

    public abstract Queue<FailState> newInstance();
  }

  // TODO It would be better if the weight of WA* could be chosen by the user.
  public enum AlgorithmWeak {
    ASTAR, WASTAR5, WASTAR15, WASTAR50, BFS, ENFHC, GREEDYBFS,
  };

  public static boolean DEBUG = false;

  public FIPStats STATS;

  final Heuristic estimator;

  public final Queue<FailState> open;

  public final SearchDirection searchDirection;

  public final AlgorithmWeak weakPlanSearchAlgorithm;

  AbstractWeakPlanSearch weakPlanSearch;

  Map<State, Set<Operator>> disabledOperators;

  Policy policy;

  State initialState;

  public FIPSearch(Problem problem, Heuristic estimator) {
    super(problem);
    this.estimator = estimator;
    searchDirection = Global.options.getFIPSearchDirection();
    weakPlanSearchAlgorithm = Global.options.getFIPWeakPlanAlgorithm();
    open = Global.options.getFIPQueueType().newInstance();
  }

  @Override
  public Result run() {
    if (DEBUG && super.timeout < Long.MAX_VALUE) {
      System.err.println(String.format("Starting search (%.3fs left)...", super.timeout / 1000.0));
    }
    super.starttime = System.currentTimeMillis();

    initialize();

    // iterate until a solution has been found
    Result result = Result.UNDECIDED;
    while (result == Result.UNDECIDED) {
      result = iterate();
    }
    super.endtime = System.currentTimeMillis();

    // update stats & print some debug info
    STATS.weakplan_searches += AbstractWeakPlanSearch.COUNT;
    STATS.weakplan_expansions += NODE_EXPANSIONS;
    STATS.setResult(result);
    STATS.runtime = super.endtime - super.starttime;
    if (DEBUG) {
      System.err.println("Search completed!");
      System.err.println(STATS.toString());
    }
    return result;
  }

  protected Result iterate() {
    if (open.isEmpty()) {
      return Result.PROVEN;
    } else if (super.timeout()) {
      return Result.TIMEOUT;
    }

    // fetch a new state from the queue
    FailState currentFailState = open.poll();

    if (policy.containsEntry(currentFailState.state) || currentFailState.state.isGoalState()) {
      return Result.UNDECIDED;
    }

    // System.out.println("target of current fail state " + currentFailState + " is " +
    // this.searchDirection.getTarget(currentFailState));
    WeakPlan weakPlan =
        weakPlanSearch.findWeakPlan(estimator, currentFailState.state,
            searchDirection.getTarget(currentFailState));

    // update the policy if the search succeeded or backtrack otherwise
    if (weakPlan != null) {
      update(weakPlan);
    } else {
      if (super.timeout()) {
        return Result.TIMEOUT;
      }
      // if maxDepth is reached:
      // searchDirection = GOAL
      // try it again
      // after that: reset to original search direction
      if (currentFailState.state.equals(initialState)) {
        policy = null;
        return Result.DISPROVEN;
      }
      backtrack(currentFailState);
    }

    STATS.encountered_failstates++;
    return Result.UNDECIDED;
  }

  private void update(WeakPlan weakPlan) {
    assert weakPlan.reachedGoal != null;
    int distance = weakPlan.distanceOffset;
    Iterator<WeakPlanEntry> itr = weakPlan.entries.descendingIterator();
    State last = weakPlan.reachedGoal;
    while (itr.hasNext()) {
      WeakPlanEntry entry = itr.next();
      policy.addEntry(entry.state, entry.action, ++distance);
      for (State o : entry.unintendedOutcomes) {
        open.add(new FailState(o, distance + 1, last, entry.state)); // TODO(PHIL) FIX THIS
      }
      last = entry.state;
    }
    STATS.total_planlengths += weakPlan.entries.size();
    STATS.statesreused += weakPlan.reachedGoal.isGoalState() ? 0 : 1;
  }

  // TODO(phil) improve!
  private void backtrack(FailState badState) {
    Queue<State> queue = new LinkedList<State>();
    Set<State> closed = new HashSet<State>();
    queue.add(badState.state);
    int distance = badState.hValue;
    int removedEntries = 0;
    while (!queue.isEmpty()) {
      distance++;
      State current = queue.poll();
      if (closed.contains(current)) {
        continue;
      }
      closed.add(current);
      Set<State> statesToRemove = new HashSet<State>();

      for (State state : policy.getEntries().keySet()) {
        Operator action = policy.getOperator(state);
        if (state.apply(action).contains(current)) {
          // remove entry from policy
          statesToRemove.add(state);

          // make action inapplicable in the future (but only for the dead end state)
          if (current.equals(badState.state)) {
            Set<Operator> entry = disabledOperators.get(state);
            if (entry == null) {
              entry = new HashSet<Operator>();
              disabledOperators.put(state, entry);
            }
            entry.add(action);
          }

          // add the state as fail state
          FailState newFailState = new FailState(state, distance, null, null); // TODO(phil) improve
          // on this!
          queue.add(newFailState.state);
          open.add(newFailState);
        }
      }

      for (State s : statesToRemove) {
        policy.removeEntry(s);
        removedEntries++;
      }
    }
    if (DEBUG) {
      System.err.println(String.format(" backtrack: removed %d entries from policy (now: %d)",
          removedEntries, policy.size()));
    }
    STATS.backtracks++;
  }

  private void initialize() {
    // initialze search
    policy = new Policy(problem);
    disabledOperators = new HashMap<State, Set<Operator>>();
    initialState = problem.getSingleInitialState();
    switch (weakPlanSearchAlgorithm) {
      case ASTAR:
        weakPlanSearch = new WeightedAStar(problem, 1, 1);
        break;
      case BFS:
        weakPlanSearch = new WeightedAStar(problem, 1, 0);
        break;
      case ENFHC:
        weakPlanSearch = new EnforcedHillClimbing(problem);
        break;
      case GREEDYBFS:
        weakPlanSearch = new WeightedAStar(problem, 0, 1);
        break;
      case WASTAR15:
        weakPlanSearch = new WeightedAStar(problem, 1, 15);
        break;
      case WASTAR5:
        weakPlanSearch = new WeightedAStar(problem, 1, 5);
        break;
      case WASTAR50:
        weakPlanSearch = new WeightedAStar(problem, 1, 50);
        break;
      default:
        assert false;
        break;
    }
    try {
      weakPlanSearch.setTimeout(super.timeout);
    } catch (Exception e) {
      e.printStackTrace();
    }
    weakPlanSearch.setDisabledOperators(disabledOperators);
    weakPlanSearch.setPolicy(policy);
    weakPlanSearch.setEstimator(estimator);
    STATS = new FIPStats();
    open.clear();
    open.add(new FailState(initialState, -1, null, null));
  }

  /*
   * (non-Javadoc)
   *
   * @see reachgame.search.AbstractSearch#getExplicitStateActionTable()
   */
  @Override
  public Policy getPolicy() {
    return policy;
  }

  @Override
  public String toString() {
    return String.format("FIPSearch (heuristic: %s, weak search: %s, direction: %s, queue: %s)",
        estimator.getClass().getSimpleName(), weakPlanSearchAlgorithm.name(),
        searchDirection.name(), open.getClass().getSimpleName());
  }

  public class FIPStats {
    public int weakplan_searches, encountered_failstates, total_planlengths, backtracks,
    statesreused, weakplan_expansions;
    public String result;
    public long runtime;

    public FIPStats() {}

    @Override
    public String toString() {
      return toJSONString();
    }

    public String toJSONString() {
      assert result != null;
      StringBuilder str = new StringBuilder();
      str.append("BEGIN_STATS\n");
      str.append("{\n");
      str.append(String.format("\t\"problem\": \"%s\",\n", MyNDPlanner.getNameOfProblemInstance()));
      str.append(String.format("\t\"fullyobservable\": \"%b\",\n", problem.isFullObservable));
      str.append(String.format("\t\"config\": {%s},\n", configAsJSON()));
      str.append(String.format("\t\"result\": \"%s\",\n", result));
      str.append(String.format("\t\"runtime\": %d,\n", runtime));
      str.append(String.format("\t\"detSearches\": {%s},\n", detSearchesAsJSON()));
      str.append(String.format("\t\"failstates\": %d,\n", encountered_failstates));
      str.append(String.format("\t\"backtracks\": %d,\n", backtracks));
      str.append(String.format("\t\"policy_length\": %d\n", policy.size()));
      str.append("}\n");
      str.append("END_STATS\n");
      return str.toString();
    }

    public void setResult(Result resultIndex) {
      switch (resultIndex) {
        case PROVEN:
          result = "SUCCESS";
          break;
        case DISPROVEN:
          result = "FAILURE";
          break;
        case TIMEOUT:
          result = "TIMEOUT";
          break;
        default:
          assert false;
      }
    }

    public String configAsJSON() {
      StringBuilder str = new StringBuilder();
      str.append(String.format("\"detsearch\": \"%s\", ", weakPlanSearchAlgorithm.name()));
      str.append(String.format("\"searchdirection\": \"%s\", ", searchDirection.name()));
      str.append(String.format("\"queuetype\": \"%s\", ", open.getClass().getSimpleName()));
      str.append(String.format("\"heuristic\": \"%s\"", estimator.getClass().getSimpleName()));
      return str.toString();
    }

    public String detSearchesAsJSON() {
      StringBuilder str = new StringBuilder();
      str.append(String.format("\"count\": %d, ", weakplan_searches));
      str.append(String.format("\"statesreused\": %d, ", statesreused));
      str.append(String.format("\"avg_expansions\": %.2f, ", weakplan_expansions * 1.0
          / weakplan_searches));
      str.append(String.format("\"avg_planlength\": %.2f ", total_planlengths * 1.0
          / weakplan_searches));
      return str.toString();
    }
  }

  @Override
  public void printStats(boolean simulatePlan) {
    System.out.println("Number of node expansions: " + NODE_EXPANSIONS);
    System.out.println("Policy entries: " + getPolicy().size());
    if (simulatePlan) {
      simulatePlan();
    }
    System.out.println("Number of sensing applications in policy: "
        + getPolicy().getNumberOfSensingApplication());
  }

  /**
   * Get the weak plan search used by the FIP algorithm.
   *
   * @return weak plan search
   */
  public AbstractWeakPlanSearch getWeakPlanSearch() {
    return weakPlanSearch;
  }
}
