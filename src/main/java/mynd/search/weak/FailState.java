package mynd.search.weak;

import mynd.state.State;

public class FailState implements Comparable<FailState> {

  public static enum SearchDirection {
    GOAL {
      @Override
      public State getTarget(FailState fs) {
        return null;
      }
    },
    INTENDED {
      @Override
      public State getTarget(FailState fs) {
        return fs.intendedState;
      }
    },
    PARENT {
      @Override
      public State getTarget(FailState fs) {
        return fs.parentState;
      }
    };
    public abstract State getTarget(FailState fs);
  }

  public final State state, intendedState, parentState;
  public final int hValue;

  public FailState(State state, int hValue, State intendedState, State parentState) {
    this.state = state;
    this.hValue = hValue;
    this.intendedState = intendedState;
    this.parentState = parentState;
  }

  @Override
  public int hashCode() {
    return state.hashCode();
  }

  @Override
  public boolean equals(Object o) {
    if (o instanceof FailState) {
      return state.equals(((FailState) o).state);
    } else if (o instanceof State) {
      return state.equals(o);
    } else {
      return false;
    }
  }

  // prefer states that are closer to the goal;
  @Override
  public int compareTo(FailState o) {
    return hValue - o.hValue;
  }

  @Override
  public String toString() {
    return String.format("FailState<%d,%s>", hValue, state);
  };
}
