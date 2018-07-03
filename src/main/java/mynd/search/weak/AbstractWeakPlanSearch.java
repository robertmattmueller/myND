package mynd.search.weak;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import mynd.Global;
import mynd.MyNDPlanner.HeuristicEstimator;
import mynd.explicit.ExplicitCondition;
import mynd.heuristic.FFHeuristic;
import mynd.heuristic.FFHeuristic.RPGStrategy;
import mynd.heuristic.Heuristic;
import mynd.heuristic.LMCutHeuristic;
import mynd.heuristic.ZeroHeuristic;
import mynd.heuristic.pdb.CanonicalPDBHeuristic;
import mynd.heuristic.pdb.PDB;
import mynd.heuristic.pdb.PatternCollectionSearch;
import mynd.problem.Problem;
import mynd.search.AbstractSearch;
import mynd.search.policy.Policy;
import mynd.search.policy.WeakPlan;
import mynd.state.Operator;
import mynd.state.State;
import mynd.symbolic.BeliefState;
import mynd.symbolic.PartiallyObservableProblem;

/**
 * @author Philipp Lerche
 */

public abstract class AbstractWeakPlanSearch extends AbstractSearch {

  public AbstractWeakPlanSearch(Problem problem) {
    super(problem);
  }

  public static int COUNT = 0;

  public final int maxDepth = Global.options.getFIPMaxDepth();

  Policy policy; // used to detect intermediate goals

  Map<State, Set<Operator>> disabledOperators;

  Heuristic heuristic;

  /**
   * Heuristic used when goal direction is not GOAL, but INTENDED or PARENT for fail states.
   */
  public final HeuristicEstimator failStateHeuristic = Global.options.fipFailStateHeuristic();

  public static final boolean DEBUG = true;

  @Override
  public Result run() {
    return run(problem.getSingleInitialState(), Integer.MAX_VALUE);
  }

  public abstract Result run(State from, int maxdepth);

  public abstract WeakPlan getPlan();

  /**
   * Check if this state is a goal state. If not, check if this state is already in the policy, such
   * that the cost for reaching goal are known. Note: This cost are not necessarily minimal. There
   * could be a cheaper path to the goal.
   *
   * @param state
   * @return distance cost to goal of given state or -1 if distance cost are unknown.
   */
  protected int checkGoal(State state) {
    if (state.isGoalState()) {
      return 0;
    } else if (policy != null && policy.containsEntry(state)) {
      return policy.getDistance(state);

    }
    return -1;
  }


  /**
   *
   * @param estimator
   * @param from
   * @param target
   * @return null if no plan was found.
   */
  public WeakPlan findWeakPlan(Heuristic estimator, State from, State target) {
    // Note that in case of backtracking the target must not be contained in the policy.

    super.starttime = System.currentTimeMillis();
    WeakPlan result = null;

    if (DEBUG) {
      System.out.print(String.format("Weak plan search (%d): %-5s... ", COUNT,
          target == null ? "GOAL" : "LOCAL"));
    }

    // Search towards a target if specified.
    if (target != null) {
      // Initialize new estimator (which is directed towards the goal).
      Heuristic newEstimator = getNewEstimator(target);
      if (newEstimator.getHeuristic(target) < Heuristic.INFINITE_HEURISTIC) {
        setEstimator(newEstimator);
        if (run(from, maxDepth) == Result.PROVEN) {
          result = getPlan();
        }
        COUNT++;
      }
    }

    // Search towards the goal if
    // a) there is no specific target to search for (target = null),
    // b) no solution was found before while searching for a target or the maximum depth of
    // the search has been exceeded or
    // c) the heuristic value of target was infinite
    if (result == null && !super.timeout()) {
      if (DEBUG && target != null) {
        System.err.print("failed! restarting search towards goal... ");
      }
      COUNT++;
      setEstimator(estimator);
      if (run(from, Integer.MAX_VALUE) == Result.PROVEN) {
        result = getPlan();
      }
    }
    super.endtime = System.currentTimeMillis();
    if (DEBUG) {
      System.out.println(String.format("done! result: %s, len: %s, time: %.3fs, sr: %b",
          result != null ? "SOLVED" : "FAILED", result != null ? result.entries.size() : "NA",
              (super.endtime - super.starttime) / 1000.0,
              result != null ? !result.reachedGoal.isGoalState() : false));
    }

    return result;
  }

  protected Set<Operator> getAllowedOperators(State state) {
    Set<Operator> result = new HashSet<Operator>(state.getApplicableOps(problem.getOperators()));
    if (disabledOperators != null) {
      Set<Operator> disallowedOperators = disabledOperators.get(state);
      if (disallowedOperators != null) {
        result.removeAll(disallowedOperators);
      }
    }
    return result;
  }

  private Heuristic getNewEstimator(State target) {
    if (failStateHeuristic == HeuristicEstimator.FF) {
      if (problem.isFullObservable) {
        return new FFHeuristic(problem, RPGStrategy.FF, (ExplicitCondition) target.toCondition());
      } else {
        return new FFHeuristic(problem, RPGStrategy.FF, new ExplicitCondition(
            ((PartiallyObservableProblem) problem).BDDManager
            .getOneRandomValuation(((BeliefState) target).beliefStateBDD)));
      }
    } else if (failStateHeuristic == HeuristicEstimator.HMAX) {
      if (problem.isFullObservable) {
        return new FFHeuristic(problem, RPGStrategy.MAX, (ExplicitCondition) target.toCondition());
      } else {
        return new FFHeuristic(problem, RPGStrategy.MAX, new ExplicitCondition(
            ((PartiallyObservableProblem) problem).BDDManager
            .getOneRandomValuation(((BeliefState) target).beliefStateBDD)));
      }
    } else if (failStateHeuristic == HeuristicEstimator.PDBS) {
      // Create a pattern collection with all allowed state variables.
      Set<Integer> vars = new HashSet<Integer>();
      for (int var = 0; var < problem.numStateVars; ++var) {
        vars.add(var);
      }
      Set<Integer> allowedVarsForPatterns;
      if (!problem.isFullObservable) {
        allowedVarsForPatterns =
            PatternCollectionSearch.computeAllowedPatternVariablesForPOND(problem, vars);
      } else {
        allowedVarsForPatterns = vars;
      }
      Set<Set<Integer>> patternCollection = new HashSet<Set<Integer>>();
      for (int var : allowedVarsForPatterns) {
        Set<Integer> pattern = new HashSet<Integer>(Arrays.asList(var));
        patternCollection.add(pattern);
      }
      boolean output = PDB.noOutputs;
      PDB.noOutputs = true;
      Heuristic canonical =
          new CanonicalPDBHeuristic(problem, patternCollection, target.toCondition());
      PDB.noOutputs = output;
      return canonical;
    } else if (failStateHeuristic == HeuristicEstimator.LMCUT) {
      if (problem.isFullObservable) {
        return new LMCutHeuristic(problem, (ExplicitCondition) target.toCondition());
      } else {
        return new LMCutHeuristic(problem, new ExplicitCondition(
            ((PartiallyObservableProblem) problem).BDDManager
            .getOneRandomValuation(((BeliefState) target).beliefStateBDD)));
      }
    } else {
      assert failStateHeuristic == HeuristicEstimator.ZERO : "FIPSearch fail state heuristic is "
          + failStateHeuristic;
      return new ZeroHeuristic(problem, target.toCondition());
    }
  }

  public void setPolicy(Policy policy) {
    this.policy = policy;
  }

  public void setDisabledOperators(Map<State, Set<Operator>> disabledOperators) {
    this.disabledOperators = disabledOperators;
  }

  public void setEstimator(Heuristic estimator) {
    heuristic = estimator;
  }
}
