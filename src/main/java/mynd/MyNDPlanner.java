package mynd;

import java.io.*;
import java.lang.management.GarbageCollectorMXBean;
import java.lang.management.ManagementFactory;
import java.util.Locale;

import mynd.Global.ExitCode;
import mynd.cegar.CegarSearch;
import mynd.heuristic.FFHeuristic;
import mynd.heuristic.FFHeuristic.RPGStrategy;
import mynd.heuristic.HMaxHeuristic;
import mynd.heuristic.Heuristic;
import mynd.heuristic.LMCutHeuristic;
import mynd.heuristic.ZeroHeuristic;
import mynd.heuristic.pdb.PatternCollectionSearch;
import mynd.parser.SasParser;
import mynd.problem.Problem;
import mynd.search.AOStarSearch;
import mynd.search.AbstractSearch;
import mynd.search.AbstractSearch.Result;
import mynd.search.FIPSearch;
import mynd.search.LAOStarSearch;
import mynd.simulator.PlanSimulator;

import args4j.CmdLineException;
import args4j.CmdLineParser;
import args4j.ParserProperties;

/**
 * myND takes as input a description of a FOND or POND planning task and tries to solve it using an
 * appropriate heuristic.
 *
 * @author Robert Mattmueller
 * @author Manuela Ortlieb
 */
public class MyNDPlanner {
  /**
   * The problem used with the planner right now (usually parsed from a file)
   */
  protected Problem problem;

  /**
   * Enumeration of available search algorithms (AO* search, LAO* search).
   */
  public enum Algorithm {
    AOSTAR, LAOSTAR, FIP
  };

  /**
   * Search algorithm which is used for solving the problem.
   */
  private AbstractSearch search = null;

  /**
   * Heuristic estimator to be used.
   */
  public enum HeuristicEstimator {
    FF, PDBS, ZERO, LMCUT, HMAX
  };

  /**
   * CEGAR options:
   */
  private CegarSearch.RefinementAlgorithm cegarRefinementAlgorithm =
      CegarSearch.RefinementAlgorithm.REFINEMENT_DFS;

  /**
   * Start time of the planner. Parsing and initialization of the planning problem is not measured.
   */
  private static long startTime;

  /**
   * Time used for preprocessing of the used heuristic.
   */
  private static long timeUsedForPreprocessing;

  /**
   * Time used in overall by runSearchDo()
   */
  private static long timeUsedOverall;

  /**
   * For unit tests.
   */
  public static boolean testMode = false;

  /**
   * Set DEBUG true for more output.
   */
  public static final boolean DEBUG = false;

  /**
   * Create a myND planner to solve a specific planning task.
   *
   * @param args planning options and SAS file to solve
   * @throws FileNotFoundException
   * @throws IOException
   */
  public MyNDPlanner(String[] args) throws FileNotFoundException, IOException {
    new Global().initialize();
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

  private void execute_translator(){

    String domain = new File(getClass().getClassLoader().getResource
        (Global.options.getDomainFilename()).getFile()).getAbsolutePath();
    String instance = new File(getClass().getClassLoader().getResource
        (Global.options.getInstanceFilename()).getFile()).getAbsolutePath();
    String translator;



    if(Global.options.type == Options.Type.FOND){
      translator = new File("translator-fond/translate.py").getAbsolutePath();
    }else if(Global.options.type == Options.Type.POND){
      translator = new File("translator-pond/translate.py").getAbsolutePath();
    }else{
      System.err.println("Translate type not specified");
      return;
    }


    try {
      Process translate_p = new ProcessBuilder(translator,domain,instance).start();
      InputStream is = translate_p.getInputStream();
      InputStreamReader isr = new InputStreamReader(is);
      BufferedReader br = new BufferedReader(isr);
      String line;
      System.out.printf("Output of running %s is:\n",translator);
      while ((line = br.readLine()) != null) {
        System.out.println(line);
      }
    } catch (IOException e) {
      e.printStackTrace();
    }


  }

  /**
   * Initialize myND by parsing planning options and the SAS-file.
   * @param args
   * @throws IOException
   * @throws FileNotFoundException
   */
  private void initialize(String[] args) throws FileNotFoundException, IOException {
    // Create either a partially observable or a fully observable problem.
    assert problem == null;
    CmdLineParser parser =
        new CmdLineParser(Global.options, ParserProperties.defaults().withOptionSorter(null));
    Global.options.setParser(parser);
    try {
      parser.parseArgument(args);
      Global.options.setDefaults();
      Global.options.parseArgs();
      if(Global.options.getDomainFilename()!=null && Global.options
          .getInstanceFilename()!=null){
          execute_translator();

      }
      Global.options.checkOptions();
    } catch (CmdLineException e) {
      // Handling of wrong arguments.
      System.err.println(e.getMessage() + "\n");
      Global.options.help = true;
    }
    if (Global.options.help) {
      Global.options.printHelp();
      Global.ExitCode.EXIT_INPUT_ERROR.exit();
    } else {
      // Create either a partially observable or a fully observable problem.
      if (DEBUG) {
        System.err.println("Start parsing given planning task.");
      }
      problem = new SasParser().parse(new FileInputStream(Global.options.getSASFilename()));
    }
    assert problem != null;

    // Do operator preprocessing respectively initialization of BDDs.
    problem.finishInitializationAndPreprocessing();
    if (DEBUG) {
      problem.dump();
    }
    // OperatorAnalyzer.analyze(Global.problem.getOperators());
  }

  /**
   * Run an appropriate heuristic search algorithm on the given problem.
   *
   * @return true iff a solution is found.
   */
  public Result runProblem() {
    Result planFound = runProblemWithoutStats();
    assert problem != null;

    // Print some statistics.
    if (planFound == Result.PROVEN) {
      System.out.println("INITIAL IS PROVEN!");
      if (Global.options.searchAlgorithm == Algorithm.AOSTAR) {
        System.out.println("\nResult: Strong plan found.");
      } else {
        System.out.println("\nResult: Strong cyclic plan found.");
      }
    } else if (planFound == Result.DISPROVEN) {
      System.out.println("INITIAL IS DISPROVEN!");
      if (Global.options.searchAlgorithm == Algorithm.AOSTAR) {
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
      search.printStats(Global.options.computeCosts);

      // Extract and dump plan.
      if (Global.options.dumpPlan) {
        System.out.println();
        search.dumpPlan();
      }
      if (Global.options.exportPlanFilename != null) {
        search.printPlan(Global.options.exportPlanFilename);
      }
      if (Global.options.exportDotFilename != null) {
        PlanSimulator.savePlanAsDot(problem, search.getPolicy(), Global.options.exportDotFilename);
      }
    }

    return planFound;
  }

  public Result runProblemWithoutStats() {
    assert problem != null;

    // Start measuring of preprocessing time.
    startTime = System.currentTimeMillis();

    // For Cegar, instantiate the Cegar handling instance and let that one handle the search.
    Result planFound = Result.UNDECIDED;
    if (Global.options.cegarAbstractionType != CegarSearch.AbstractionType.NONE) {
      long overallStartTime = startTime;
      CegarSearch cegarSearch =
          new CegarSearch(this, Global.options.cegarAbstractionType, cegarRefinementAlgorithm);
      CegarSearch.Result result = cegarSearch.search();
      startTime = overallStartTime;
      planFound = result.planFound;
      assert planFound != null;
      timeUsedForPreprocessing = result.timeUsedForPreprocessing;
    } else {
      Heuristic heuristic = null;
      switch (Global.options.heuristic) {
        case FF:
          System.out.println("Heuristic: FF-heuristic.");
          heuristic = new FFHeuristic(problem, RPGStrategy.FF);
          break;
        case PDBS:
          System.out.println("Heuristic: Canonical PDB-heuristic.");
          heuristic = new PatternCollectionSearch(problem).search();
          break;
        case ZERO:
          System.out.println("Heuristic: Zero-heuristic.");
          heuristic = new ZeroHeuristic(problem);
          break;
        case HMAX:
          System.out.println("Heuristic: HMAX heuristic.");
          heuristic = new HMaxHeuristic(problem);
          break;
        case LMCUT:
          System.out.println("Heuristic: LM-Cut heuristic.");
          heuristic = new LMCutHeuristic(problem);
          break;
        default:
          new Exception("Unknown heuristic estimator.").printStackTrace();
          Global.ExitCode.EXIT_CRITICAL_ERROR.exit();
      }

      if (heuristic == null) {
        // Unsolvable problem detected during heuristic construction.
        planFound = Result.DISPROVEN;
      } else {
        if (DEBUG) {
          System.out.print("Running Garbage Collection... ");
        }
        long gc_start = System.currentTimeMillis();
        System.gc();
        if (DEBUG) {
          System.out.println(String.format("Done, took %.2f s.",
              (System.currentTimeMillis() - gc_start) / 1000.0) + "\n");
        }

        switch (Global.options.searchAlgorithm) {
          case AOSTAR:
            System.out.println("Algorithm: AO*-search");
            search = new AOStarSearch(problem, heuristic);
            break;
          case LAOSTAR:
            System.out.println("Algorithm: LAO*-search");
            search = new LAOStarSearch(problem, heuristic);
            break;
          case FIP:
            search = new FIPSearch(problem, heuristic);
            System.out.println("Algorithm: " + search.toString());
            break;
          default:
            new Exception("Unknown search algorithm.").printStackTrace();
            Global.ExitCode.EXIT_CRITICAL_ERROR.exit();
        }

        // Finish measuring of preprocessing time.
        timeUsedForPreprocessing = System.currentTimeMillis() - startTime;

        // Set timeout for search.
        long t = Global.options.timeout - timeUsedForPreprocessing;
        if (t <= 0) {
          new Exception("Timeout occurs during preprocessing.").printStackTrace();
          Global.ExitCode.EXIT_UNPROVEN.exit();
        }
        search.setTimeout(Global.options.timeout - timeUsedForPreprocessing);

        planFound = search.run();
      }
    }

    // Stop measuring search time.
    timeUsedOverall = System.currentTimeMillis() - startTime;
    assert planFound != null;
    return planFound;
  }

  public void setCegarSearchAbstraction(CegarSearch.AbstractionType abstraction) {
    Global.options.cegarAbstractionType = abstraction;
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
   * Change the problem searched on. Used by CegarSearch.
   */
  public void setProblem(Problem problem) {
    this.problem = problem;
  }

  public Problem getProblem() {
    // FIXME Do we want to return a copy here?
    return problem;
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
    String[] str = Global.options.getSASFilename().split("/");
    return str[str.length - 1].replace(".sas", "");
  }
}
