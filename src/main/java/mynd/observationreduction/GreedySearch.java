package mynd.observationreduction;

import java.util.HashSet;
import java.util.Set;

import mynd.MyNDPlanner;
import mynd.search.AOStarSearch;
import mynd.search.AbstractSearch.Result;
import mynd.state.Operator;
import mynd.state.State;


/**
 *
 * @author Manuela Ortlieb
 *
 */

public class GreedySearch {

  /**
   * Stores the original initial state, since planning task is modified.
   */
  protected State originalInitState;

  /**
   * For each iteration, search is the last myND planner search and result.
   */
  protected AOStarSearch search;

  /**
   * Reachability game solver to solve the given planning task.
   */
  protected MyNDPlanner solver;

  public GreedySearch(MyNDPlanner solver) {
    this.solver = solver;
    originalInitState = solver.getProblem().getSingleInitialState();
  }

  public boolean run(Operator deleteOperator) {
    Set<Operator> oldOperators = updateOperatorsOfGlobalProblem(deleteOperator);
    boolean foundPlan = solver.runProblem() == Result.PROVEN;
    search = (AOStarSearch) solver.getSearch();
    assert (search.getInitNode().state.equals(originalInitState));

    if (!foundPlan) {
      // Reset the operators.
      solver.getProblem().setOperators(oldOperators, true);
    }
    return foundPlan;
  }

  protected Set<Operator> updateOperatorsOfGlobalProblem(Operator deleteOperator) {
    // Remove the delete operator from the global set of operators.
    Set<Operator> oldOperators = solver.getProblem().getOperators();
    Set<Operator> allOps = new HashSet<Operator>(oldOperators);
    allOps.remove(deleteOperator);
    solver.getProblem().setOperators(allOps, true);
    assert allOps.size() + 1 == oldOperators.size();
    return oldOperators;
  }

}
