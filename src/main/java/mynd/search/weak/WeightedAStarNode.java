package mynd.search.weak;

import java.util.Comparator;

import mynd.state.Operator;
import mynd.state.State;

/**
 * @author Philipp Lerche
 */

public class WeightedAStarNode { // TODO extends AbstractNode ?

  public static class WeightedAStarNodeComparator implements Comparator<WeightedAStarNode> {
    final int gWeight, hWeight;

    public WeightedAStarNodeComparator(int gWeight, int hWeight) {
      this.gWeight = gWeight;
      this.hWeight = hWeight;
    }

    int fValue(WeightedAStarNode n) {
      return (gWeight * n.gValue) + (hWeight * n.hValue);
    }

    @Override
    public int compare(WeightedAStarNode o1, WeightedAStarNode o2) {
      int result = fValue(o1) - fValue(o2);
      if (result == 0) {
        result = o1.hValue - o2.hValue;
      }
      return result;
    }
  }

  public static class WeightedAStarConnector {
    public final WeightedAStarNode from;
    public final Operator operator;
    public final WeightedAStarNode[] to;

    public WeightedAStarConnector(WeightedAStarNode from, Operator operator, WeightedAStarNode[] to) {
      this.from = from;
      this.operator = operator;
      this.to = to;
      for (WeightedAStarNode child : to) {
        child.incomingConnector = this;
      }
    }
  }

  public final State state;
  public final int gValue, hValue;
  public WeightedAStarConnector incomingConnector;

  public WeightedAStarNode(State state, int gValue, int hValue) {
    this.state = state;
    this.gValue = gValue;
    this.hValue = hValue;
  }
}
