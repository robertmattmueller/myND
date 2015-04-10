package mynd;

import java.util.Random;

import mynd.MyNDPlanner.Algorithm;
import mynd.heuristic.pdb.PDB;
import mynd.heuristic.pdb.RandomWalk;
import mynd.problem.Problem;
import mynd.search.AbstractNode;
import mynd.symbolic.BDDManager;


/**
 * Class used to hold static global settings.
 *
 * @author Robert Mattmueller
 * @author Manuela Ortlieb
 */
public class Global {

  public enum ExitCode {
    EXIT_PROVEN { // task solved, plan found
      @Override
      public void exit() {
        System.exit(0);
      }
    },
    EXIT_CRITICAL_ERROR {
      @Override
      public void exit() {
        System.exit(1);
      }
    },
    EXIT_INPUT_ERROR {
      @Override
      public void exit() {
        System.exit(2);
      }
    },
    EXIT_UNSUPPORTED {
      @Override
      public void exit() {
        System.exit(3);
      }
    },
    EXIT_DISPROVEN { // task provably unsolvable
      @Override
      public void exit() {
        System.exit(4);
      }
    },
    EXIT_UNPROVEN { // timeout, task not solved
      @Override
      public void exit() {
        System.exit(5);
      }
    },
    EXIT_OUT_OF_MEMORY {
      @Override
      public void exit() {
        System.exit(6);
      }
    };

    public abstract void exit();
  };

  /**
   * Search algorithm used.
   */
  public static MyNDPlanner.Algorithm algorithm = Algorithm.LAOSTAR; // LAO* is the default
  // algorithm.

  /**
   * BDD Manager to handle BDDs.
   */
  public static BDDManager BDDManager;

  /**
   * Problem which should be solved.
   */
  public static Problem problem;

  /**
   * To use everywhere in the code, where a random number is needed.
   */
  public static Random generator;

  /**
   * Initialize and reset static members.
   */
  static void initialize() {
    generator = new Random(1);
    PDB.buildExplicitPDBs = false;
    AbstractNode.resetIndex();
    RandomWalk.reset();
  }


}
