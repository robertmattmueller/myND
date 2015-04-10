package mynd;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.management.GarbageCollectorMXBean;
import java.lang.management.ManagementFactory;
import java.util.Locale;

import mynd.Global.ExitCode;
import mynd.heuristic.FFHeuristic;
import mynd.heuristic.FFHeuristic.RPGStrategy;
import mynd.heuristic.HMaxHeuristic;
import mynd.heuristic.Heuristic;
import mynd.heuristic.Heuristic.HeuristicStrategy;
import mynd.heuristic.ZeroHeuristic;
import mynd.heuristic.pdb.PDB;
import mynd.heuristic.pdb.PatternCollectionSearch;
import mynd.heuristic.pdb.RandomWalk;
import mynd.parser.SasParser;
import mynd.search.AOStarSearch;
import mynd.search.AbstractSearch;
import mynd.search.AbstractSearch.Result;
import mynd.search.LAOStarSearch;


/**
 * myND takes as input a description of a FOND or POND planning task and tries to solve it using an
 * appropriate heuristic.
 *
 * @author Robert Mattmueller
 * @author Manuela Ortlieb
 */
public class MyNDPlanner {

  /**
   * Enumeration of available search algorithms (AO* search, LAO* search).
   */
  public enum Algorithm {
    AOSTAR, LAOSTAR
  };

  /**
   * Heuristic estimator to be used.
   */
  public enum HeuristicEstimator {
    FF, PDBS, ZERO, HMAX
  };

  /**
   * Heuristic estimator to be used.
   */
  private HeuristicEstimator heuristicEstimator = HeuristicEstimator.ZERO;

  /**
   * File name of SAS+ file, i.e., translator output.
   */
  private static String sasFilename;

  /**
   * Timeout in milliseconds
   */
  private int timeout = Integer.MAX_VALUE;

  /**
   * When assuming full observability, explicit states are used instead of belief states even for
   * problem solving.
   */
  public static boolean assumeFullObservability = false;

  /**
   * Weigh belief states by cardinality when computing cost estimates in value iteration. // TODO
   * What about AO*?
   */
  public static boolean weighBeliefStatesByCardinality = false;

  /**
   * This id is appended to written outputs to avoid overwriting outputs from parallel running myND
   * planners. Useful on GKI grid.
   */
  public static int runID = -1;

  /**
   * Start time of the planner. Parsing and initialization of the planning problem is not measured.
   */
  private static long startTime;

  /**
   * Time used for preprocessing of the used heuristic.
   */
  private static long timeUsedForPreprocessing;

  /**
   * Search algorithm which is used for solving the problem.
   */
  private AbstractSearch search = null;

  /**
   * Flag to decide whether to dump a plan or not. Could be changed by an option.
   */
  public boolean dumpPlan = false;

  /**
   * Simulate the plan to compute expected plan steps (= costs). This may take some time. Could be
   * changed by an option.
   */
  public boolean calculateCosts = false;

  /**
   * Set DEBUG true for more output.
   */
  public final static boolean DEBUG = false;

  /**
   * Create a myND planner to solve a specific planning task.
   *
   * @param args planning options and SAS file to solve
   * @throws FileNotFoundException
   * @throws IOException
   */
  public MyNDPlanner(String[] args) throws FileNotFoundException, IOException {
    Global.initialize();
    initialize(args);
  }

  /**
   * Main method expecting a single command line argument, the name of the input SAS file.
   *
   * @param args Command line arguments.
   * @throws IOException
   * @throws FileNotFoundException
   */
  public static void main(String[] args) throws IOException, FileNotFoundException {
    Locale.setDefault(Locale.US);
    Result result = new MyNDPlanner(args).runProblem();
    assert (result != null);

    switch (result) {
      case PROVEN:
        ExitCode.EXIT_PROVEN.exit();
      case DISPROVEN:
        ExitCode.EXIT_DISPROVEN.exit();
      default:
        ExitCode.EXIT_UNPROVEN.exit();
    }
  }

  /**
   * Parse command line arguments. TODO: [issue #17] Check option inputs given by user. Don't use
   * assertion for this, because the user eventually does not enable assertions.
   *
   * @param args Command line arguments.
   */
  private void parseArgs(String[] args) {
    assert args.length > 0;
    int i = 0;
    while (args.length > i && args[i].startsWith("-")) {
      String opt = args[i].substring(1);
      // Search algorithms.
      if (opt.equals("aostar")) {
        Global.algorithm = Algorithm.AOSTAR;
      } else if (opt.equals("laostar")) {
        Global.algorithm = Algorithm.LAOSTAR;
      }
      // POND options.
      else if (opt.equals("sensingFirst")) {
        AOStarSearch.sensingFirst = true;
      } else if (opt.equals("weighBeliefStatesByCardinality")) {
        weighBeliefStatesByCardinality = true;
      }
      // 0/1-heuristic (blind).
      else if (opt.equals("zero")) {
        heuristicEstimator = HeuristicEstimator.ZERO;
      }
      // FF-heuristic.
      else if (opt.equals("ff")) {
        heuristicEstimator = HeuristicEstimator.FF;
      }
      // hmax heuristic.
      else if (opt.equals("hmax")) {
        heuristicEstimator = HeuristicEstimator.HMAX;
      }
      // World state sampling options.
      else if (opt.equals("max")) {
        Heuristic.heuristicStrategy = HeuristicStrategy.MAX;
      } else if (opt.equals("add")) {
        Heuristic.heuristicStrategy = HeuristicStrategy.ADD;
      } else if (opt.equals("average")) {
        Heuristic.heuristicStrategy = HeuristicStrategy.AVERAGE;
      } else if (opt.equals("numWorldStates")) {
        assert Heuristic.numberOfWorldStatesToBeSampled != Integer.MAX_VALUE;
        Heuristic.numberOfWorldStatesToBeSampled = new Integer(args[++i]);
        assert Heuristic.numberOfWorldStatesToBeSampled > 0;
      } else if (opt.equals("allWorldStates")) {
        Heuristic.numberOfWorldStatesToBeSampled = Integer.MAX_VALUE;
      }
      // PDB-heuristic and options.
      else if (opt.equals("pdbs")) {
        heuristicEstimator = HeuristicEstimator.PDBS;
      } else if (opt.equals("steps")) {
        int steps = new Integer(args[++i]);
        PatternCollectionSearch.steps = steps;
      } else if (opt.equals("pdbTimeout")) {
        PatternCollectionSearch.timeout = new Integer(args[++i]);
      } else if (opt.equals("pdbMaxSize")) {
        PDB.pdbMaxSize = new Integer(args[++i]);
        assert PDB.pdbMaxSize > 0;
      } else if (opt.equals("pdbsMaxSize")) {
        PatternCollectionSearch.pdbsOverallMaxSize = new Integer(args[++i]);
        assert PatternCollectionSearch.pdbsOverallMaxSize > 0;
        assert PatternCollectionSearch.pdbsOverallMaxSize >= PDB.pdbMaxSize;
      } else if (opt.equals("minImprovement")) {
        PatternCollectionSearch.minImprovement = new Double(args[++i]);
      } else if (opt.equals("greedyImprovement")) {
        PatternCollectionSearch.greedyImprovement = new Double(args[++i]);
      } else if (opt.equals("noCachingOfPDBs")) {
        PatternCollectionSearch.cacheTemporaryPDBs = false;
      } else if (opt.equals("assumeFO")) {
        MyNDPlanner.assumeFullObservability = true;
        assert PatternCollectionSearch.fullObservablePatternSearch != false;
      } else if (opt.equals("FOPatternSearch")) {
        PatternCollectionSearch.fullObservablePatternSearch = true;
      } else if (opt.equals("POPatternSearch")) {
        PatternCollectionSearch.fullObservablePatternSearch = false;
        assert MyNDPlanner.assumeFullObservability == false;
      } else if (opt.equals("RWSamples")) {
        RandomWalk.NUMBER_OF_SAMPLES = new Integer(args[++i]);
        assert RandomWalk.NUMBER_OF_SAMPLES > 0;
      }
      // Node expansion options.
      else if (opt.equals("maxNumberOfNodesToExpand")) {
        AOStarSearch.maxNumberOfNodesToExpandInOneStep = new Integer(args[++i]);
      }
      // Planner option.
      else if (opt.equals("dumpPlan")) {
        dumpPlan = true;
      } else if (opt.equals("calculateCosts")) {
        calculateCosts = true;
      }
      // Grid options
      else if (opt.equals("runID")) {
        // This ID is useful when this planner runs parallel. This id
        // is appended to written output to avoid overwriting the outputs
        // of another parallel run.
        runID = new Integer(args[++i]);
      } else {
        System.err.println("Option " + opt + " unknown.");
        Global.ExitCode.EXIT_INPUT_ERROR.exit();
      }
      i++;
    }
    assert args.length >= i + 1;
    sasFilename = args[i];
    System.out.println(sasFilename + " parsed.");

    if (args.length >= i + 2) {
      timeout = Integer.parseInt(args[i + 1]);
    }
    if (args.length >= i + 3) {
      dumpPlan = args[i + 2].equals("1");
    }
    if (PatternCollectionSearch.fullObservablePatternSearch || MyNDPlanner.assumeFullObservability) {
      PDB.buildExplicitPDBs = true;
    }
  }

  /**
   * Print some Garbage Collector stats.
   */
  public void printGCStats() {
    long totalGarbageCollections = 0;
    long garbageCollectionTime = 0;

    for (GarbageCollectorMXBean gc : ManagementFactory.getGarbageCollectorMXBeans()) {

      long count = gc.getCollectionCount();

      if (count >= 0) {
        totalGarbageCollections += count;
      }

      long time = gc.getCollectionTime();

      if (time >= 0) {
        garbageCollectionTime += time;
      }
    }

    System.out.println("Total Garbage Collections: " + totalGarbageCollections);
    System.out.println("Total Garbage Collection Time: " + garbageCollectionTime / 1000
        + " seconds.");
  }

  /**
   * Initialize myND by parsing planning options and the SAS-file.
   *
   * @param args
   * @throws IOException
   * @throws FileNotFoundException
   */
  private void initialize(String[] args) throws FileNotFoundException, IOException {
    assert Global.problem == null;

    // Start to parse arguments given as inputs
    parseArgs(args);

    // Create either a partially observable or a fully observable problem.
    SasParser parser = new SasParser();
    parser.parse(new FileInputStream(sasFilename));

    assert Global.problem != null;

    // Do operator preprocessing respectively initialization of BDDs.
    Global.problem.finishInitializationAndPreprocessing();
    if (DEBUG) {
      Global.problem.dump();
    }
  }

  /**
   * Run an appropriate heuristic search algorithm on the given problem.
   *
   * @return true iff a solution is found.
   */
  public Result runProblem() {
    assert Global.problem != null;

    // Start measuring of preprocessing time.
    startTime = System.currentTimeMillis();

    Heuristic heuristic = null;
    if (Global.algorithm == Algorithm.AOSTAR || Global.algorithm == Algorithm.LAOSTAR) {
      switch (heuristicEstimator) {
        case FF:
          System.out.println("Heuristic: FF-heuristic.");
          heuristic = new FFHeuristic(RPGStrategy.FF);
          break;
        case PDBS:
          System.out.println("Heuristic: Canonical PDB-heuristic.");
          heuristic = new PatternCollectionSearch().search();
          break;
        case ZERO:
          System.out.println("Heuristic: Zero-heuristic.");
          heuristic = new ZeroHeuristic();
          break;
        case HMAX:
          System.out.println("Heuristic: HMAX heuristic.");
          heuristic = new HMaxHeuristic();
          break;
        default:
          new Exception("Unknown heuristic estimator.").printStackTrace();
          Global.ExitCode.EXIT_CRITICAL_ERROR.exit();
      }
    }


    if (DEBUG) {
      System.out.print("Running Garbage Collection... ");
    }
    long gc_start = System.currentTimeMillis();
    System.gc();
    if (DEBUG) {
      System.out.println(String.format("Done, took %.2f s.",
          (System.currentTimeMillis() - gc_start) / 1000.0) + "\n");
    }

    switch (Global.algorithm) {
      case AOSTAR:
        System.out.println("Algorithm: AO*-search");
        search = new AOStarSearch(heuristic);
        break;
      case LAOSTAR:
        System.out.println("Algorithm: LAO*-search");
        search = new LAOStarSearch(heuristic);
        break;
      default:
        new Exception("Unknown search algorithm.").printStackTrace();
        Global.ExitCode.EXIT_CRITICAL_ERROR.exit();
    }

    // Finish measuring of preprocessing time.
    timeUsedForPreprocessing = System.currentTimeMillis() - startTime;

    // Set timeout for search.
    try {
      search.setTimeout(timeout - timeUsedForPreprocessing);
    } catch (Exception e) {
      e.printStackTrace();
      Global.ExitCode.EXIT_CRITICAL_ERROR.exit();
    }
    Result planFound = search.run();
    // Stop measuring search time.
    long timeUsedOverall = System.currentTimeMillis() - startTime;

    // Print some statistics.
    if (planFound == Result.PROVEN) {
      System.out.println("INITIAL IS PROVEN!");
      if (Global.algorithm == Algorithm.AOSTAR) {
        System.out.println("\nResult: Strong plan found.");
      } else {
        System.out.println("\nResult: Strong cyclic plan found.");
      }
    } else if (planFound == Result.DISPROVEN) {
      System.out.println("INITIAL IS DISPROVEN!");
      if (Global.algorithm == Algorithm.AOSTAR) {
        System.out.println("\nResult: No strong plan found.");
      } else {
        System.out.println("\nResult: No strong cyclic plan found.");
      }
    } else if (planFound == Result.TIMEOUT) {
      System.out.println("INITIAL IS UNPROVEN!");
      System.out.println("\nResult: No plan found due to time-out.");
    } else {
      assert planFound == Result.UNDECIDED;
      System.out.println("INITIAL IS UNPROVEN!");
      System.out.println("\nResult: No plan found. Undecided.");
    }
    System.out.println();
    System.out.println("Time needed for preprocess (Parsing, PDBs, ...):    "
        + timeUsedForPreprocessing / 1000.0 + " seconds.");
    System.out.println("Time needed for search:                             "
        + (timeUsedOverall - timeUsedForPreprocessing) / 1000.0 + " seconds.");
    System.out.println("Time needed:                                        " + timeUsedOverall
        / 1000.0 + " seconds.");
    printGCStats();
    System.out.println();

    if (planFound == Result.PROVEN) {
      search.printStats(calculateCosts);

      // Extract and dump plan.
      if (dumpPlan) {
        System.out.println();
        search.dumpPlan();
      }
    }

    return planFound;
  }

  /**
   * Get start time of the planner.
   *
   * @return start time
   */
  public static long getStartTime() {
    return startTime;
  }

  /**
   * Get preprocessing time of the used heuristic.
   *
   * @return preprocessing time
   */
  public static long getTimeUsedForPreprocessing() {
    return timeUsedForPreprocessing;
  }

  /**
   * Return the used search algorithm. Useful for reuse of the solution graph.
   *
   * @return search
   */
  public AbstractSearch getSearch() {
    return search;
  }

  /**
   * Get name of problem instance.
   *
   * @return name of problem instance
   */
  public static String getNameOfProblemInstance() {
    String[] str = sasFilename.split("/");
    return str[str.length - 1].replace(".sas", "");
  }
}
