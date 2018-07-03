package mynd;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import args4j.*;
import args4j.spi.OptionHandler;
import jdk.nashorn.internal.runtime.Undefined;
import mynd.MyNDPlanner.Algorithm;
import mynd.MyNDPlanner.HeuristicEstimator;
import mynd.cegar.CegarSearch;
import mynd.heuristic.Heuristic.HeuristicStrategy;
import mynd.heuristic.pdb.PDB;
import mynd.heuristic.pdb.PatternCollectionSearch.PatternSearch;
import mynd.parser.SasParser;
import mynd.search.AbstractSearch;
import mynd.search.FIPSearch.AlgorithmWeak;
import mynd.search.FIPSearch.QueueType;
import mynd.search.weak.FailState.SearchDirection;



/**
 *
 * @author Manuela Ortlieb
 *
 */
public class Options {

  /**
   * Set DEBUG true for more output.
   */
  public final static boolean DEBUG = false;

  /**
   * The parser which uses this options.
   */
  CmdLineParser parser;

  /**
   * Sets the parser.
   *
   * @param parser
   */
  void setParser(CmdLineParser parser) {
    this.parser = parser;
  }

  enum Type {
    FOND, POND
  };

  enum Bool {
    ON, OFF
  };

  /**
   * Denotes if the given planning task is a FOND or a POND problem.
   */
  Type planningTask = null;

  /**
   * The defined groups are used for a proper arranged usage print and for checking dependencies
   * between options. For example, if an option is in the group AO, the search algorithm has to be
   * AO* search.
   */
  enum Group {
    HELP {
      @Override
      public String getException() {
        return null;
      }
    },
    MAIN {
      @Override
      public String getException() {
        return null;
      }
    },
    SEARCH {
      @Override
      public String getException() {
        return null;
      }
    },
    TRANSLATE{
      @Override
      public String getException(){return null;}
    },
    HEURISTIC {
      @Override
      public String getException() {
        return null;
      }
    },
    GENERAL {
      @Override
      public String getException() {
        return null;
      }
    },
    FOND {
      @Override
      public boolean check() {
        return Global.options.planningTask == Type.FOND;
      }

      @Override
      public String getException() {
        return "a FOND planning task";
      }
    },
    POND {
      @Override
      public boolean check() {
        return Global.options.planningTask == Type.POND;
      }

      @Override
      public String getException() {
        return "a POND planning task";
      }
    },
    CEGAR {
      @Override
      public boolean check() {
        return true;
      }

      @Override
      public String getException() {
        return "CEGAR search";
      }
    },
    AO {
      @Override
      public boolean check() {
        return Global.options.searchAlgorithm == Algorithm.AOSTAR;
      }

      @Override
      public String getException() {
        return "AO* search";
      }
    },
    LAO {
      @Override
      public boolean check() {
        return Global.options.searchAlgorithm == Algorithm.LAOSTAR;
      }

      @Override
      public String getException() {
        return "LAO* search";
      }
    },
    FIP {
      @Override
      public boolean check() {
        return Global.options.searchAlgorithm == Algorithm.FIP;
      }

      @Override
      public String getException() {
        return "FIP search";
      }
    },
    PDB {
      @Override
      public boolean check() {
        return Global.options.heuristic == HeuristicEstimator.PDBS;
      }

      @Override
      public String getException() {
        return "PDB heuristic";
      }
    };

    public boolean check() {
      return true;
    }

    public abstract String getException();

  };

  /**
   * Denotes if myND prints the help message and finishes after that.
   */
  @Option(name = "-h", aliases = {"-help"}, usage = "print this message", groups = {"HELP"},
      help = true)
  boolean help = false;


  /**
   * Filter to print only FOND or POND options. // FIXME Does not work correctly!
   */
  @Option(name = "-f", aliases = {"-filter"},
      usage = "print this message, but only FOND/POND options", groups = {"HELP"}, help = true)
  Type optionFilter = null;

  private void checkFilter() {
    if (optionFilter != null) {
      help = true;
    }
  }


  /**
   * A hidden option to print all hidden options. :) Indeed only hidden options with "usage" are
   * printed.
   */
  @Option(name = "-hidden", usage = "print hidden options", hidden = true, help = true)
  boolean hiddenOptions = false;

  private void checkHiddenOptions() {
    if (hiddenOptions) {
      help = true;
    }
  }

  @Option(name="-t", aliases = "-type", usage = "use fond or pond translate",
      help
      = true,groups = {"TRANSLATE"})
  Type type;

  public Type getType() {
    return type;
  }

  /**
   * Arguments given by user. If no help option is used, then the SAS+ file
   * is required or domain and instance pddl
   */

  private String domain;
  private String instance;

  private String sas;
  @Argument(required = false)
  String[] args;

  public void parseArgs(){
    assert args.length <= 2;
    assert args.length >= 1;
    if(args.length ==1){
      sas= args[0];
    }else{
      domain = args[0];
      instance = args[1];
      assert type != null;
      sas= "output.sas"; //result of translator
    }
  }

  public String getDomainFilename(){
    return domain;
  }

  public String getInstanceFilename(){
    return instance;
  }

  public String getSASFilename() {
    return sas;
  }

  // //////////////// Planner options //////////////////

  @Option(name = "-computeCosts", usage = "compute and print expected costs of the plan",
      groups = {"MAIN"})
  public boolean computeCosts = false;


  @Option(name = "-dumpPlan", usage = "dump plan to stdout", groups = {"MAIN"})
  public boolean dumpPlan = false;


  private void testFilename(String filename, String option) throws CmdLineException {
    if (filename.startsWith("-") || (filename.endsWith(".sas") && args == null)) {
      throw new CmdLineException(parser, new Exception("option " + option
          + " requires a filename. Use " + option + "= or " + option
          + " \"\" to get a default filename"));
    }
  }

  @Option(name = "-exportPlan", usage = "export plan to file", groups = {"MAIN"},
      metaVar = "FILENAME")
  String exportPlanFilename = null;

  private void checkExportPlanFilename() throws CmdLineException {
    if (exportPlanFilename != null) {
      testFilename(exportPlanFilename, "-exportPlan");
    }
  }

  /**
   * Export the .dot output from the PlanSimulator to this file.
   */
  @Option(name = "-exportDot", usage = "export plan as DOT graph (GraphViz)", groups = {"MAIN"},
      metaVar = "FILENAME")
  String exportDotFilename = null;

  private void checkExportDot() throws CmdLineException {
    if (exportDotFilename != null) {
      testFilename(exportDotFilename, "-exportDot");
    }
  }

  /**
   * Timeout for the planner. The user gives the timeout in seconds. Internally we use milliseconds.
   */
  @Option(name = "-timeout", usage = "set timeout in seconds", groups = {"MAIN"})
  Long timeout = null;

  private void checkPlannerTimeout() throws CmdLineException {
    if (timeout == null) {
      timeout = AbstractSearch.NO_TIMEOUT;
    } else {
      // Timeout has been set by user (in seconds).
      if (timeout < 1) {
        throw new CmdLineException(parser, new Exception("a timeout of " + timeout
            + " s does not make sense"));
      }
      timeout = timeout * 1000;
    }
  }

  @Option(name = "-s", aliases = "-search", usage = "set search algorithm",
      groups = {"SEARCH",
  "FOND,POND"}, showDefault = true)
  Algorithm searchAlgorithm = Algorithm.LAOSTAR;
  /**
   * Get the search algorithm.
   *
   * @return search algorithm
   */
  public Algorithm getSearchAlgorithm() {
    return searchAlgorithm;
  }


  @Option(name = "-heuristic", usage = "set heuristic", groups = {"HEURISTIC", "FOND,POND"},
      showDefault = true)
  HeuristicEstimator heuristic = HeuristicEstimator.FF;

  // //////////////// General POND options //////////////////

  @Option(name = "-aggregation", usage = "set aggregation method for world states (POND only)",
      groups = {"POND", "GENERAL"}, showDefault = true)
  HeuristicStrategy heuristicAggregationMethod = HeuristicStrategy.MAX;

  public HeuristicStrategy getHeuristicAggregationMethod() {
    return heuristicAggregationMethod;
  }


  @Option(name = "-numWorldStates", usage = "set number of world states to be sampled (POND only)",
      forbids = {"-allWorldStates"}, groups = {"POND", "GENERAL"}, showDefault = true)
  int numWorldStatesToBeSampled = 10;

  private void checkNumberOfWorldStatesToBeSampled() throws CmdLineException {
    if (numWorldStatesToBeSampled <= 0) {
      throw new CmdLineException(parser, new Exception(
          "the number of world states has to be non-negative."));
    }
  }

  public int getNumberOfWorldStatesToBeSampled() {
    return numWorldStatesToBeSampled;
  }


  @Option(name = "-allWorldStates", hidden = true,
      usage = "use all world states as samples (POND only)", groups = {"POND", "GENERAL"})
  boolean allWorldStates = false;


  // //////////////// AO* Options //////////////////

  // currently not used
  // @Option(name = "-selectionFunction", usage = "set selection function for unexpanded nodes",
  // groups = {"AO,LAO", "FOND,POND"}, showDefault = true)
  // SelectionFunction selectionFunction = SelectionFunction.MAXH;
  //
  // public SelectionFunction getSelectionFunction() {
  // return selectionFunction;
  // }

  // currently not used
  // @Option(name = "-tiebreaker", usage = "tie breaking for unexpanded nodes", groups = {"AO,LAO",
  // "FOND,POND"}, showDefault = true, hidden = true)
  // TieBreaker tiebreaker = TieBreaker.OLDEST;
  //
  // public TieBreaker getTieBreaker() {
  // return tiebreaker;
  // }


  @Option(name = "-maxNumberOfNodesToExpand",
      usage = "set maximal number of nodes to expand per iteration", groups = {"AO,LAO",
  "FOND,POND"},
  showDefault = true)
  int maxNumberOfNodesToExpand = 1;

  private void checkMaxNumberOfNodesToExpand() throws CmdLineException {
    if (maxNumberOfNodesToExpand <= 0) {
      throw new CmdLineException(parser, new Exception(
          "the maximum number of nodes to expand has to be non-negative."));
    }
  }

  public int getMaxNumberOfNodesToExpand() {
    return maxNumberOfNodesToExpand;
  }

  // currently not used
  // @Option(hidden = true, name = "-expandAllNodes",
  // usage = "expand all unexpanded nodes of the current best solution graph", groups = {"AO",
  // "FOND,POND"}, showDefault = true, forbids = {"-maxNumberofNodesToExpand"})
  // boolean expandAllNodes = false;
  //
  // public boolean expandAllNodes() {
  // return expandAllNodes;
  // }


  // //////////////// (L)AO* Options //////////////////

  @Option(name = "-senseFirst", usage = "prefer sensing actions (POND only)", groups = {"POND",
  "AO,LAO"}, showDefault = true)
  Bool senseFirst = Bool.ON;

  public boolean senseFirst() {
    return senseFirst == Bool.ON;
  }


  // //////////////// FIP options //////////////////

  @Option(name = "-weakPlanAlgorithm", usage = "set search algorithm for weak plan search",
      groups = {"FIP", "FOND,POND"}, showDefault = true)
  AlgorithmWeak fipWeakPlanAlgorithm = AlgorithmWeak.WASTAR5;

  public AlgorithmWeak getFIPWeakPlanAlgorithm() {
    return fipWeakPlanAlgorithm;
  }


  @Option(name = "-searchDirection", usage = "set search direction for fail state search",
      groups = {"FIP", "FOND,POND"}, showDefault = true)
  SearchDirection fipSearchDirection = SearchDirection.GOAL; // default

  public SearchDirection getFIPSearchDirection() {
    return fipSearchDirection;
  }


  @Option(name = "-queueType", usage = "set order in which fail states are handled", groups = {
      "FIP", "FOND,POND"}, showDefault = true)
  QueueType fipQueueType = QueueType.PRIORITY; // default

  public QueueType getFIPQueueType() {
    return fipQueueType;
  }


  @Option(name = "-maxDepth", usage = "set max depth for fail state search", groups = {"FIP",
  "FOND,POND"}, showDefault = true)
  int fipMaxDepth = 100;

  private void checkFipMaxDepth() throws CmdLineException {
    if (fipMaxDepth < 1) {
      throw new CmdLineException(parser, new Exception("maximal depth of " + fipMaxDepth
          + " does not make sense"));
    }
  }

  public int getFIPMaxDepth() {
    return fipMaxDepth;
  }


  @Option(name = "-failStateHeuristic", usage = "specify heuristic for fail state search",
      groups = {"FIP", "FOND,POND"}, showDefault = true)
  HeuristicEstimator fipFailStateHeuristic;

  private void setDefaultFipFailStateHeuristic() {
    if (fipFailStateHeuristic == null) {
      fipFailStateHeuristic = heuristic; // TODO Check if this makes sense.
      setDefaultTextToOption("heuristic used for search", "-failStateHeuristic");
    }
  }

  public HeuristicEstimator fipFailStateHeuristic() {
    return fipFailStateHeuristic;
  }

  // //////////////// PDB options //////////////////

  @Option(name = "-patternSearch", usage = "set type of pattern search", showDefault = true,
      groups = {"FOND,POND", "PDB"})
  PatternSearch patternSearch = PatternSearch.FO;

  private void checkPatternSearch() throws CmdLineException {
    switch (patternSearch) {
      case NONE:
        if (hillClimbingSteps != 0 && hillClimbingSteps != Integer.MAX_VALUE) {
          throw new CmdLineException(
              parser,
              new Exception(
                  "performing none pattern search implies that the number of hill climbing steps has to be 0"));
        }
        hillClimbingSteps = 0;
        if (planningTask == Type.FOND) {
          PDB.buildExplicitPDBs = true;
        } else {
          PDB.buildExplicitPDBs = false;
        }
        break;
      case FO:
        PDB.buildExplicitPDBs = true;
        break;
      case PO:
        if (planningTask == Type.FOND) {
          throw new CmdLineException(
              parser,
              new Exception(
                  "partial observable pattern search is not suitable for a fully observable planning task."));
        }
        PDB.buildExplicitPDBs = false;
        break;
      default:
        assert false;
    }
  }

  public PatternSearch patternSearch() {
    return patternSearch;
  }


  @Option(name = "-steps",
      usage = "set maximal number of hill climbing iterations in pattern search", groups = {"PDB",
  "FOND,POND"}, showDefault = true)
  int hillClimbingSteps = Integer.MAX_VALUE;

  private void checkSteps() throws CmdLineException {
    if (hillClimbingSteps < 0) {
      throw new CmdLineException(parser, new Exception(
          "number of hill climbing iterations has to be non-negative"));
    }
    if (hillClimbingSteps == 0) {
      patternSearch = PatternSearch.NONE;
    }
  }

  public int getNumHillClimbingSteps() {
    return hillClimbingSteps;
  }


  /**
   * Timeout for the pattern collection search. The user gives the timeout in seconds. Internally we
   * use milliseconds.
   */
  @Option(name = "-pdbTimeout", usage = "set timeout in seconds for the pattern search", groups = {
      "PDB", "FOND,POND"}, showDefault = true)
  private int pdbTimeout = 600;

  private void checkPDBTimeout() throws CmdLineException {
    if (pdbTimeout < 1) {
      throw new CmdLineException(parser, new Exception("a PDB timeout of " + pdbTimeout
          + " s does not make sense"));
    }
  }

  /**
   * Get timeout for pattern search.
   *
   * @return timeout in ms
   */
  public long getPDBTimeout() {
    return pdbTimeout * 1000;
  }


  @Option(name = "-pdbMaxSize",
      usage = "set maximal number of abstract states induced by a single pattern", groups = {"PDB",
  "FOND,POND"}, showDefault = true)
  int pdbMaxSize = -1;

  private void setDefaultPDBMaxSize() {
    if (pdbMaxSize == -1) {
      if (planningTask == Type.POND && !assumeFOforPDBs) {
        pdbMaxSize = 10000;
      } else {
        pdbMaxSize = 50000;
      }
      setDefaultTextToOption("50000 (FOND), 10000 (POND)", "pdbMaxSize");
    }
  }

  private void checkPDBMaxSize() throws CmdLineException {
    if (pdbMaxSize < 2) {
      throw new CmdLineException(parser, new Exception("pdbMaxSize of " + pdbMaxSize
          + " does not make sense"));
    }
  }

  public int pdbMaxSize() {
    return pdbMaxSize;
  }

  @Option(name = "-pdbsMaxSize", usage = "set maximal number of abstract states of all patterns",
      groups = {"FOND,POND", "PDB"}, showDefault = true)
  int pdbsOverallMaxSize = -1;

  private void setDefaultPDBsMaxSize() {
    assert pdbMaxSize > -1 : "default of pdbMaxSize has to be assigned before";
    if (pdbsOverallMaxSize == -1) {
      pdbsOverallMaxSize = 10 * pdbMaxSize;
    }
    setDefaultTextToOption("10 * pdbMaxSize", "pdbsMaxSize");
  }

  private void checkPDBsMaxSize() throws CmdLineException {
    if (pdbsOverallMaxSize < 2) {
      throw new CmdLineException(parser, new Exception("pdbsMaxSize of " + pdbsOverallMaxSize
          + " does not make sense"));
    }
  }

  public int pdbsMaxSize() {
    return pdbsOverallMaxSize;
  }


  @Option(name = "-minImprovement",
      usage = "set fraction of required improvers to continue pattern search", groups = {"PDB",
  "FOND,POND"}, showDefault = true, metaVar = "X")
  double minImprovement = 0.1;

  public double getMinImprovementFraction() {
    return minImprovement;
  }


  @Option(name = "-greedyImprovement",
      usage = "set faction for required improvers to take the pattern immediately", hidden = true,
      groups = {"FOND,POND", "PDB"}, showDefault = true)
  double greedyImprovement = 1.0;

  private void checkMinImprovementAndGreedyImprovement() throws CmdLineException {
    if (minImprovement < 0 || minImprovement > 1) {
      throw new CmdLineException(parser, new Exception(minImprovement
          + " is not a valid ratio for minImprovement"));
    }
    if (greedyImprovement < 0 || greedyImprovement > 1) {
      throw new CmdLineException(parser, new Exception(greedyImprovement
          + " is not a valid ratio for greedyImprovement"));
    }
    if (greedyImprovement < minImprovement) {
      throw new CmdLineException(parser, new Exception(
          "greedyImprovement ratio has to be greater or equal to the minImprovement ratio"));
    }
  }

  public double getGreedyImprovementFraction() {
    return greedyImprovement;
  }


  @Option(name = "-cachePDBs", usage = "set caching of PDBs on/off", groups = {"PDB", "FOND,POND"},
      showDefault = true)
  Bool cachePDBs = Bool.ON;

  public boolean cachePDBs() {
    return cachePDBs == Bool.ON;
  }


  @Option(name = "-randomWalkSamples",
      usage = "set number of samples that are collected during random walks", groups = {"PDB",
  "FOND,POND"}, showDefault = true)
  int randomWalkSamples = 1000;

  private void checkRandomWalkSamples() throws CmdLineException {
    if (randomWalkSamples < 1) {
      throw new CmdLineException(parser, new Exception("at least one sample has to be specified"));
    }
  }

  public int getNumberOfRandomWalkSamples() {
    return randomWalkSamples;
  }


  /**
   * When assuming full observability, explicit states are used instead of belief states even for
   * problem solving. Only for PDB heuristic, because in FF we assume full observability
   * automatically and for ZERO it does not make sense.
   */
  @Option(name = "-assumeFO",
      usage = "assume full observability for PDB heuristic and search (POND only)", groups = {
      "POND", "PDB"}, showDefault = true)
  boolean assumeFOforPDBs = false;

  private void checkAssumeFOForPDBs() throws CmdLineException {
    if (assumeFOforPDBs) {
      PDB.buildExplicitPDBs = true;
      if (patternSearch == PatternSearch.PO) {
        throw new CmdLineException(parser, new Exception(
            "assuming full observability for PDBs is incompatible with pattern search type PO"));
      }
    }
  }

  public boolean assumeFullObservabilityForPDBs() {
    return assumeFOforPDBs;
  }

  @Option(name = "-useDependencyGraph",
      usage = "use dependency graph for preconditions of sensing actions (POND only)", groups = {
      "POND", "PDB"}, showDefault = true)
  Bool useDependencyGraph = Bool.ON;

  public boolean useDependencyGraph() {
    return useDependencyGraph == Bool.ON;
  }

  //
  // @Option(name = "-determinization", usage =
  // "set all-outcome determinization of abstracted actions on/off", depends = {"-assumeFO"}, groups
  // = {"PDB", "POND"}, showDefault = true)
  // boolean determinization = false;
  //
  // public boolean determinization() {
  // return determinization;
  // }


  // //////////////// CEGAR options //////////////////

  @Option(name = "-ca", aliases = "-cegarAbstraction", usage = "set CEGAR abstraction type", groups = {"CEGAR"},
      showDefault = true)
  CegarSearch.AbstractionType cegarAbstractionType = CegarSearch.AbstractionType.NONE;

  /**
   * Get the CEGAR abstraction type.
   * @return CEGAR abstraction type
   */
  public CegarSearch.AbstractionType getCegarAbstractionType() {
    return cegarAbstractionType;
  }

  // //////////////// GRID options (hidden, no usage) //////////////////

  /**
   * This id is appended to written outputs to avoid overwriting outputs from parallel running myND
   * planners. Useful on GKI grid.
   */
  @Option(name = "-runID", aliases = {"-runid", "-id"}, hidden = true)
  int runID = -1; // default

  public int getRunID() {
    return runID;
  }

  // //////////////// Print help //////////////////
  /**
   * Prints the usage text to stderr. Note: Options without "usage" description are ignored.
   */
  void printHelp() {
    System.err.println("Usage: java [java_options] mynd.MyNDPlanner [mynd_options] <sas_file>");
    System.err.println();
    if (hiddenOptions) {
      System.err.println("Hidden options:");
      parser.printUsage(System.err, OptionHandlerFilter.HIDDEN);
      System.err.println();
    } else {
      System.err.println("Help:");
      parser.printUsage(System.err, new GroupFilter(Group.HELP));
      System.err.println();
      System.err.println("myND options:");
      parser.printUsage(System.err, new GroupFilter(Group.MAIN));
      System.err.println();
      System.err.println("Search algorithms:");
      parser.printUsage(System.err, new GroupFilter(Group.SEARCH));
      System.err.println();
      System.err.println("Heuristics:");
      parser.printUsage(System.err, new GroupFilter(Group.HEURISTIC));
      System.err.println();
      System.err.println("Translate:");
      parser.printUsage(System.err, new GroupFilter(Group.TRANSLATE));
      System.err.println();
      if (optionFilter != Type.FOND) {
        System.err.println("General POND options:");
        parser.printUsage(System.err,
            new GroupFilter(new HashSet<Group>(Arrays.asList(Group.POND, Group.GENERAL))));
        System.err.println();
      }

      System.err.println("CEGAR Options:");
      parser.printUsage(System.err, new GroupFilter(Group.CEGAR));
      System.err.println();

      System.err.println("AO* Options:");
      parser.printUsage(System.err, new GroupFilter(Group.AO));
      System.err.println();

      System.err.println("LAO* Options:");
      parser.printUsage(System.err, new GroupFilter(Group.LAO));
      System.err.println();

      System.err.println("FIP Options:");
      parser.printUsage(System.err, new GroupFilter(Group.FIP));
      System.err.println();

      System.err.println("PDB options:");
      parser.printUsage(System.err, new GroupFilter(Group.PDB));
    }
    System.err.println();
    System.err
    .println("Example: java -ea -Xmx4g mynd.MyNDPlanner -search LAOSTAR -heuristic FF ../data/benchmarks-fond/blocksworld_p1.sas");

    if (DEBUG) {
      System.out.println();
      System.out.println("ALL OPTIONS:");
      parser.printUsage(System.out, OptionHandlerFilter.ALL);
    }
  }


  void setDefaults() {
    setDefaultPDBMaxSize();
    setDefaultPDBsMaxSize();
    setDefaultFipFailStateHeuristic();
  }

  void checkOptions() throws CmdLineException, FileNotFoundException, IOException {
    checkGroups();
    checkFilter();
    checkHiddenOptions();
    if (!help) {
      checkExportPlanFilename();
      checkExportDot();
      checkSASFile();
      checkDependencies();
      checkPlannerTimeout();
      checkNumberOfWorldStatesToBeSampled();
      checkMinImprovementAndGreedyImprovement();
      checkFipMaxDepth();
      checkPDBTimeout();
      checkPDBMaxSize();
      checkPDBsMaxSize();
      checkRandomWalkSamples();
      checkPatternSearch();
      checkSteps();
      checkAssumeFOForPDBs();
      checkMaxNumberOfNodesToExpand();
    }
  }


  /**
   * Check if the assigned groups exists.
   */
  private void checkGroups() {
    Set<String> groupNames = new HashSet<String>();
    for (Group v : Group.values()) {
      groupNames.add(v.name());
    }
    for (OptionHandler<?> h : parser.getOptions()) {
      for (Set<String> groups : h.option.getGroups()) {
        for (String g : groups) {
          assert (groupNames.contains(g));
        }
      }
    }
  }

  private void checkDependencies() throws CmdLineException {
    for (OptionHandler<?> h : parser.getOptionsSetByUser()) {
      for (Set<String> groupSet : h.option.getGroups()) {
        boolean valid = false;
        String message = "Option " + h.option + " requires ";
        for (String name : groupSet) {
          valid |= Group.valueOf(name).check();
          message += Group.valueOf(name).getException() + " or ";
        }
        if (!valid) {
          throw new CmdLineException(parser, new Exception(message.substring(0,
              message.length() - 3)));
        }
      }
    }
  }

  private void checkSASFile() throws CmdLineException, FileNotFoundException, IOException {
    if (args == null) {
      throw new CmdLineException(parser, new Exception("No SAS+ file or " +
          "PDDL files given."));
    } else if (Global.options.args.length > 2) {
      throw new CmdLineException(parser,
          new Exception("Too many arguments: " + Arrays.asList(args)));
    }
    //String sasFilename = args[0];
    // Check if given file is a partial observable or a full observable problem.
    boolean fond = new SasParser().isFond(new FileInputStream(this.sas));
    if (fond) {
      planningTask = Type.FOND;
    } else {
      planningTask = Type.POND;
    }
  }

  private void setDefaultTextToOption(String defaultText, String option) {
    for (OptionHandler<?> handler : parser.getOptions()) {
      if (handler.option.toString().contains(option)) {
        handler.option.setDefault(defaultText);
        return;
      }
    }
    assert false : "option " + option + " not found";
  }

  public class GroupFilter implements OptionHandlerFilter {

    /**
     * Filters options which are not in all of this groups.
     */
    private final Set<Group> groups;

    public GroupFilter(Set<Group> groups) {
      if (Global.options.optionFilter == Type.FOND) {
        groups.add(Group.FOND);
      } else if (Global.options.optionFilter == Type.POND) {
        groups.add(Group.POND);
      }
      this.groups = groups;
    }

    public GroupFilter(Group singleGroup) {
      this(new HashSet<Options.Group>(Arrays.asList(singleGroup)));
    }


    @Override
    public boolean select(OptionHandler<?> o) {
      if (o.option.hidden()) {
        return false;
      }
      for (Group g : groups) {
        boolean found = false;
        for (Set<String> groupSet : o.option.getGroups()) {
          if (groupSet.contains(g.name())) {
            found = true;
            break;
          }
        }
        if (!found) {
          return false;
        }
      }
      return true;
    }

  }
}
