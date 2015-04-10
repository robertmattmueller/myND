package mynd.heuristic;

import mynd.heuristic.FFHeuristic.RPGStrategy;
import mynd.state.State;

public class HMaxHeuristic extends Heuristic {

  FFHeuristic heuristic;

  public HMaxHeuristic() {
    super(true);
    heuristic = new FFHeuristic(RPGStrategy.MAX);
  }

  @Override
  public double getHeuristic(State state) {
    return heuristic.getHeuristic(state);
  }
}
