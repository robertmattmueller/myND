package mynd.heuristic.pdb;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import mynd.Global;
import mynd.MyNDPlanner;
import mynd.explicit.ExplicitState;
import mynd.heuristic.Heuristic;
import mynd.state.Operator;
import mynd.state.State;
import mynd.symbolic.BeliefState;


/**
 * Performs random walks in the state space in order to obtain representative sample states later
 * used to judge the relative qualities of given pattern collections.
 *
 * @author Robert Mattmueller
 * @author Manuela Ortlieb
 */
public class RandomWalk {

  /**
   * Number of states to be sampled by the random walk. Could be changed by using a planner option.
   */
  public static int NUMBER_OF_SAMPLES = 1000;

  /**
   * Timeout for sampling even if NUMBER_OF_SAMPLES is not reached.
   */
  private static final long SAMPLING_TIMEOUT = 10000;

  /**
   * A weight which is multiplied with initial h-value to determine the length of a random walk.
   */
  private static final int INITIAL_WEIGHT = 2;

  /**
   * Stores the states reached during random walk.
   * */
  private LinkedList<State> sampleStates;

  /**
   * Remember applicable ops.
   */
  static Map<Integer, List<Operator>> applicableOpsforSamples =
      new HashMap<Integer, List<Operator>>();

  /**
   * Store operators applied during random walk. This set can differ from the problem's operator
   * set, f.e. if full observability is assumed, it will only contain causative operators.
   */
  private static Set<Operator> operators = new HashSet<Operator>();

  /**
   * Necessary if the planner runs more than once.
   */
  public static void reset() {
    applicableOpsforSamples.clear();
    operators.clear();
  }

  /**
   * Set to true for debug information.
   */
  public static final boolean DEBUG = false;

  /**
   * Constructor.
   *
   * @param canonical The canonical PDB heuristic
   */
  public RandomWalk(CanonicalPDBHeuristic canonical) {
    if (operators.isEmpty()) {
      if (!Global.problem.isFullObservable && PDB.buildExplicitPDBs) {
        // States during random walk are explicit states. Explicit operators are used.
        for (Operator op : Global.problem.getOperators()) {
          if (op.isCausative) {
            operators.add(op.getExplicitOperator());
          }
        }
      } else {
        // Use the problem's operator set.
        operators = Global.problem.getOperators();
      }
    }
    LinkedList<State> initState = new LinkedList<State>();
    if (!Global.problem.isFullObservable && PDB.buildExplicitPDBs) {
      // We need to sample explicit states from initial belief state to start the random walk.
      BeliefState init = (BeliefState) Global.problem.getSingleInitialState();
      for (ExplicitState state : init
          .getRandomExplicitWorldStates(Heuristic.numberOfWorldStatesToBeSampled)) {
        initState.add(state);
      }
    } else {
      // Use the problem's initial state.
      initState.add(Global.problem.getSingleInitialState());
    }

    double initialHeuristic = 0;
    for (State state : initState) {
      double heuristicValue = canonical.getCanonicalHeuristic(state);
      // Maximization over heuristic values of initial states.
      if (heuristicValue > initialHeuristic) {
        initialHeuristic = heuristicValue;
      }
    }

    if (initialHeuristic == Heuristic.INFINITE_HEURISTIC) {
      // Unsolvable problem detected.
      if (DEBUG) {
        System.out.println("Initial state is:");
        for (State s : initState) {
          System.out.println(s.getAllExplicitWorldStates());
        }
        System.out.println("and canonical heuristic is:");
        System.out.println(canonical);
      }
      System.out.println(canonical);
      System.out.println("Heuristic value of initial state is infinity.");
      System.out.println("INITIAL IS DISPROVEN!");
      if (Global.algorithm == MyNDPlanner.Algorithm.AOSTAR) {
        System.out.println("No strong plan found.");
      } else if (Global.algorithm == MyNDPlanner.Algorithm.LAOSTAR) {
        System.out.println("No strong cyclic plan found.");
      } else {
        System.out.println("Unsolvable.");
      }
      System.out.println();
      Global.ExitCode.EXIT_DISPROVEN.exit();
    }

    // Because our heuristic is underestimating.
    int maximalWalkLenght = 1 + (int) (INITIAL_WEIGHT * initialHeuristic);
    sampleStates = new LinkedList<State>();

    double p = 0.5;
    System.out.println("Generating sample states.");
    // We search NUMBER_OF_SAMPLES samples.
    long startTime = System.currentTimeMillis();
    for (int i = 0; i < RandomWalk.NUMBER_OF_SAMPLES; i++) {
      // calculate length of random walk according to a binomial distribution
      int length = 0;
      for (int j = 0; j < maximalWalkLenght; j++) {
        double x = Global.generator.nextDouble(); // x between 0 and 1
        if (x < p) {
          length++;
        }
      }
      // random walk of length length

      // this is for explicit states to handle multiple initial world states
      State s = initState.pollFirst();
      initState.addLast(s);
      for (int j = 0; j < length; j++) {
        List<Operator> applicableOps;
        if (applicableOpsforSamples.containsKey(s.hashCode())) {
          applicableOps = applicableOpsforSamples.get(s.hashCode());
        } else {
          applicableOps = s.getApplicableOps(operators);
          applicableOpsforSamples.put(s.hashCode(), applicableOps);
        }
        int numOfApplicableOps = applicableOps.size();
        if (numOfApplicableOps == 0) {
          // dead end, restart
          s = initState.pollFirst();
          initState.addLast(s);
          applicableOps = s.getApplicableOps(operators);
          // numOfApplicableOps = s.getApplicableOps(operators).size();
          numOfApplicableOps = applicableOps.size();
          assert (numOfApplicableOps > 0);
        }
        // choose an operator randomly
        int random = Global.generator.nextInt(numOfApplicableOps);
        List<State> successors = new ArrayList<State>(s.apply(applicableOps.get(random)));
        // choose an successor state randomly
        assert (!successors.isEmpty());
        random = Global.generator.nextInt(successors.size());
        s = successors.get(random);
        // if this state is a dead end state, restart
        boolean deadEnd = false;
        if (canonical.getHeuristic(s) == Double.POSITIVE_INFINITY) {
          deadEnd = true;
        }
        if (deadEnd) {
          s = initState.pollFirst();
          initState.addLast(s);
        }
      }
      // the last state of the random walk is used as a sample state
      sampleStates.add(s);
      if (System.currentTimeMillis() - startTime > SAMPLING_TIMEOUT) {
        break;
      }
    }
    System.out.println();
    System.out.println("Finished generating " + sampleStates.size() + " sample states.");
  }

  public LinkedList<State> getSamples() {
    return sampleStates;
  }
}
