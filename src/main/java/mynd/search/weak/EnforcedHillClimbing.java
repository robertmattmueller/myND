package mynd.search.weak;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Set;

import mynd.problem.Problem;
import mynd.search.AbstractSearch;
import mynd.state.State;


public class EnforcedHillClimbing extends WeightedAStar {

  public EnforcedHillClimbing(Problem problem) {
    super(problem, 0, 0);
  }

  @Override
  public Result run(State from, int maxdepth) {
    assert heuristic != null : "no estimator specified!";
    super.solution = null;
    super.starttime = System.currentTimeMillis();

    WeightedAStarNode currentNode =
        new WeightedAStarNode(from, 0, (int) heuristic.getHeuristic(from));
    int goalDistance = -1;

    while (goalDistance < 0) {
      currentNode = improve(currentNode);

      if (currentNode == null) {
        return Result.DISPROVEN;
      } else if (currentNode.gValue > maxdepth) {
        return Result.UNDECIDED;
      } else if (super.timeout()) {
        return Result.TIMEOUT;
      }

      goalDistance = super.checkGoal(currentNode.state);
    }
    super.endtime = System.currentTimeMillis();
    super.extractSolution(currentNode, goalDistance);
    return AbstractSearch.Result.PROVEN;
  }

  private WeightedAStarNode improve(WeightedAStarNode n) {
    Queue<WeightedAStarNode> queue = new LinkedList<WeightedAStarNode>();
    queue.add(n);
    Set<State> closed = new HashSet<State>();
    while (!queue.isEmpty()) {
      WeightedAStarNode node = queue.poll();
      if (!closed.contains(node.state)) {
        closed.add(node.state);
        if (node.hValue < n.hValue) {
          return node;
        }
        queue.addAll(super.expand(node));
      }
    }
    return null;
  }
}
