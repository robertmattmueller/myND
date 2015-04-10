package mynd.util;

import java.util.Comparator;

import mynd.search.AOStarNode;
import mynd.search.AOStarSearch.SelectionFunction;
import mynd.search.AOStarSearch.TieBreaker;

/**
 *
 * @author Manuela Ortlieb
 *
 */

public class NodeComparator implements Comparator<AOStarNode> {

  SelectionFunction selectionFunction = SelectionFunction.MAXH;

  TieBreaker tieBreaker = TieBreaker.OLDEST;

  @Override
  public int compare(AOStarNode o1, AOStarNode o2) {
    switch (selectionFunction) {
      case MINH:
        if (o1.getHeuristic() - o2.getHeuristic() == 0) {
          if (tieBreaker == TieBreaker.OLDEST) {
            return o1.getIndex() - o2.getIndex();
          }
          assert tieBreaker == TieBreaker.NEWEST;
          return o2.getIndex() - o1.getIndex();
        }
        return (int) (o1.getHeuristic() - o2.getHeuristic());
      case MAXH:
        if (o2.getHeuristic() - o1.getHeuristic() == 0) {
          if (tieBreaker == TieBreaker.OLDEST) {
            return o1.getIndex() - o2.getIndex();
          }
          assert tieBreaker == TieBreaker.NEWEST;
          // selectionFunction = SelectionFunction.NEWEST;
          return o2.getIndex() - o1.getIndex();
        }
        return (int) (o2.getHeuristic() - o1.getHeuristic());
      case OLDEST:
        return o1.getIndex() - o2.getIndex();
      case NEWEST:
        // selectionFunction = SelectionFunction.MAXH;
        return o2.getIndex() - o1.getIndex();
      default:
        assert false;
        return 0;
    }
  }
}
