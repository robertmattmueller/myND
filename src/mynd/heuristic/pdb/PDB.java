package mynd.heuristic.pdb;

import java.util.Set;

import mynd.Global;
import mynd.state.State;


/**
 * @author Manuela Ortlieb
 *
 */
public abstract class PDB {
  /**
   * Maximal number of abstract states induced by a single pattern.
   */
  public static int pdbMaxSize = -1;

  /**
   * Number of abstract states when using a given pattern.
   *
   * @param pattern The pattern to be used
   * @return The number of abstract states with respect to the given pattern
   */
  public static int numAbstractStates(Set<Integer> pattern) {
    int numAbstractStates = 1;
    for (int element : pattern) {
      numAbstractStates *= Global.problem.domainSizes.get(element);
    }
    return numAbstractStates;
  }

  /**
   * Look up heuristic value in pattern database.
   */
  public abstract double getHeuristic(State state);

  public abstract double averageHeuristicValue();

  /**
   * Do not print any outputs on System.out or System.err, except DEBUG is true.
   */
  public static boolean noOutputs = false;

  /**
   * For POND: use explicit PDBs under assumption of full observability instead of belief state PDBs
   * (under partial observability).
   */
  public static boolean buildExplicitPDBs = false;

}
