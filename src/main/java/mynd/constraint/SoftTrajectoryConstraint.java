package mynd.constraint;

import mynd.state.State;

public class SoftTrajectoryConstraint {
  private String ltl;
  private DFA automaton;

  private void buildAutomaton(){

  }

  public SoftTrajectoryConstraint(String ltl) {
    this.ltl = ltl;
    buildAutomaton();
  }

  public void synchronize(State state){

  }

  public int getHeuristicReward(){

    return 0;
  }
}
