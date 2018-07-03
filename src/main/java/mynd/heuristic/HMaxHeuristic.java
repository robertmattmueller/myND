package mynd.heuristic;

import mynd.heuristic.FFHeuristic.RPGStrategy;
import mynd.problem.Problem;
import mynd.state.State;

public class HMaxHeuristic extends Heuristic {

  FFHeuristic heuristic;

  public HMaxHeuristic(Problem problem) {
    super(problem, true);
    heuristic = new FFHeuristic(problem, RPGStrategy.MAX);
  }

  @Override
  public double getHeuristic(State state) {
    return heuristic.getHeuristic(state);
  }
}
