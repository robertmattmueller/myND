package mynd.heuristic;

import mynd.Global;
import mynd.state.Condition;
import mynd.state.State;

/**
 *
 * @author Robert Mattmueller
 *
 */
public class ZeroHeuristic extends Heuristic {

  private Condition goal;

  public ZeroHeuristic() {
    super(true); // Zero heuristic supports axioms.
    goal = Global.problem.getGoal();
  }

  public ZeroHeuristic(Condition goal) {
    super(true); // Zero heuristic supports axioms.
    this.goal = goal;
  }

  /**
   * Get heuristic value for given state.
   *
   * @param state state to be evaluated by heuristic
   * @return heuristic value for given state
   */
  @Override
  public double getHeuristic(State state) {
    if (goal.isSatisfiedIn(state)) {
      return 0.0;
    }
    return 1.0;
  }
}
