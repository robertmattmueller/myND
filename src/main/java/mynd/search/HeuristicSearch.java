package mynd.search;

import mynd.heuristic.Heuristic;
import mynd.problem.Problem;

/**
 * A heuristic search algorithm is an explicit state search algorithm guided by a heuristic
 * function.
 *
 * @author Robert Mattmueller
 */
public abstract class HeuristicSearch extends AbstractSearch {

  /**
   * Heuristic estimator for the initialization of leaf nodes
   */
  public final Heuristic heuristic;

  /**
   * Create a search guided by a heuristic.
   *
   * @param heuristic used during search
   */
  public HeuristicSearch(Problem problem, Heuristic heuristic) {
    super(problem);
    this.heuristic = heuristic;
  }

  /**
   * Perform one iteration of the search algorithm, i.e. choice of nodes to expand, expansion, and
   * (recursive) update.
   *
   */
  public abstract void doIteration();

}
