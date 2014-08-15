package mynd;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.management.GarbageCollectorMXBean;
import java.lang.management.ManagementFactory;

import mynd.heuristic.FFHeuristic;
import mynd.heuristic.Heuristic;
import mynd.heuristic.ZeroHeuristic;
import mynd.heuristic.Heuristic.HeuristicStrategy;
import mynd.heuristic.pdb.CanonicalPDBHeuristic;
import mynd.heuristic.pdb.PDB;
import mynd.heuristic.pdb.PatternCollectionSearch;
import mynd.heuristic.pdb.RandomWalk;
import mynd.parser.SasParser;
import mynd.search.AOStarSearch;
import mynd.search.AbstractSearch;
import mynd.search.LAOStarSearch;


/**
 * myND takes as input a description of a FOND or POND planning
 * task and tries to solve it using an appropriate heuristic.
 * 
 * @author Robert Mattmueller
 * @author Manuela Ortlieb
 */
public class MyNDPlanner {

    /**
     * Enumeration of available search algorithms (AO* search, LAO* search).
     */
    public enum Algorithm {
        AO_STAR, LAO_STAR
    };

    /**
     * Heuristic estimator to be used.
     */
    public enum HeuristicEstimator {
        FF_HEURISTIC, PDBS_HEURISTIC, ZERO_HEURISTIC
    };

    /**
     * Heuristic estimator to be used.
     */
    private HeuristicEstimator heuristicEstimator = HeuristicEstimator.ZERO_HEURISTIC;

    /**
     * File name of SAS+ file, i.e., translator output.
     */
    private static String sasFilename;

    /**
     * Timeout in milliseconds
     */
    private int timeout = Integer.MAX_VALUE;

	/**
	 * When assuming full observability, explicit states are used instead of
	 * belief states even for problem solving.
	 */
	public static boolean assumeFullObservability = false;
	
	/**
	 * Weigh belief states by cardinality when computing cost estimates
	 * in value iteration. // TODO What about AO*?
	 */
	public static boolean weighBeliefStatesByCardinality = false;
	
	/**
	 * This id is appended to written outputs to avoid overwriting 
	 * outputs from parallel running myND planners. Useful on GKI grid.
	 */
	public static int runID = -1; 
    
	/**
	 * Start time of the planner. Parsing and initialization of the
	 * planning problem is not measured.
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
     * Simulate the plan to compute expected plan steps (= costs). This may
     * take some time. Could be changed by an option.
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
    	initialize(args);
    }

    /**
     * Main method expecting a single command line argument, the name of the
     * input SAS file.
     * 
     * @param args
     *            Command line arguments.
     * @throws IOException
     * @throws FileNotFoundException
     */
    public static void main(String[] args) throws IOException, FileNotFoundException {
        new MyNDPlanner(args).runProblem();
    }

    /**
     * Parse command line arguments. TODO: [issue #17] Check option inputs given by user. Don't use assertion
     * for this, because the user eventually does not enable assertions.
     * 
     * @param args
     *            Command line arguments.
     */
    private void parseArgs(String[] args) {
        assert args.length > 0;
        int i = 0;
        while (args.length > i && args[i].startsWith("-")) {
            String opt = args[i].substring(1);
            // Search algorithms.
            if (opt.equals("aostar")) {
                Global.algorithm = Algorithm.AO_STAR;
            }
            else if (opt.equals("laostar")) {
                Global.algorithm = Algorithm.LAO_STAR;
            }
            // POND options.
            else if (opt.equals("sensingFirst")) {
            	AOStarSearch.restrictSensingOps = true;
            	AOStarSearch.sensingFirst = true;
            }
            else if (opt.equals("weighBeliefStatesByCardinality")) {
            	weighBeliefStatesByCardinality = true;
            }
            // 0/1-heuristic (blind).
            else if (opt.equals("zero")) {
                heuristicEstimator = HeuristicEstimator.ZERO_HEURISTIC;
            }
            // FF-heuristic.
            else if (opt.equals("ff")) {
                heuristicEstimator = HeuristicEstimator.FF_HEURISTIC;
            }
            // World state sampling options.
            else if (opt.equals("max")) {
            	Heuristic.heuristicStrategy = HeuristicStrategy.MAX;
            }
            else if (opt.equals("add")) {  
            	Heuristic.heuristicStrategy = HeuristicStrategy.ADD;
            }
            else if (opt.equals("average")) {
            	Heuristic.heuristicStrategy = HeuristicStrategy.AVERAGE;
            }
            else if (opt.equals("numWorldStates")) {
            	assert Heuristic.numberOfWorldStatesToBeSampled != Integer.MAX_VALUE;
            	Heuristic.numberOfWorldStatesToBeSampled = new Integer(args[++i]);
            	assert Heuristic.numberOfWorldStatesToBeSampled > 0;
            }
            else if (opt.equals("allWorldStates")) {
            	Heuristic.numberOfWorldStatesToBeSampled = Integer.MAX_VALUE;
            }
            // PDB-heuristic and options.
            else if (opt.equals("pdbs")) {
                heuristicEstimator = HeuristicEstimator.PDBS_HEURISTIC;
            }
            else if (opt.equals("steps")) {
            	int steps = new Integer(args[++i]);
                PatternCollectionSearch.steps = steps;
            }
            else if (opt.equals("pdbTimeout")) {
            	PatternCollectionSearch.timeout = new Integer(args[++i]);
            }
            else if (opt.equals("pdbMaxSize")) {
            	PDB.pdbMaxSize = new Integer(args[++i]);
            	assert PDB.pdbMaxSize > 0;
            }
            else if (opt.equals("pdbsMaxSize")) {
            	PatternCollectionSearch.pdbsOverallMaxSize = new Integer(args[++i]);
            	assert PatternCollectionSearch.pdbsOverallMaxSize > 0;
        		assert PatternCollectionSearch.pdbsOverallMaxSize >= PDB.pdbMaxSize;
            }
            else if (opt.equals("minImprovement")) {
            	PatternCollectionSearch.minImprovement = new Double(args[++i]);
            }
            else if (opt.equals("greedyImprovement")) {
            	PatternCollectionSearch.greedyImprovement = new Double(args[++i]);
            }
            else if (opt.equals("noCachingOfPDBs")) {
            	PatternCollectionSearch.cacheTemporaryPDBs = false;
            }
            else if (opt.equals("assumeFO")) {
            	MyNDPlanner.assumeFullObservability = true;
            	PatternCollectionSearch.fullObservablePatternSearch = false;
            }
            else if (opt.equals("FOPatternSearch")) {
            	PatternCollectionSearch.fullObservablePatternSearch = true;
            	assert MyNDPlanner.assumeFullObservability == false;
            }
            else if (opt.equals("POPatternSearch")) {
            	PatternCollectionSearch.fullObservablePatternSearch = false;
            	assert MyNDPlanner.assumeFullObservability == false;
            }
            else if (opt.equals("determinization")) {
            	CanonicalPDBHeuristic.determinization = true;
            }
            else if (opt.equals("RWSamples")) {
            	RandomWalk.NUMBER_OF_SAMPLES = new Integer(args[++i]);
            	assert RandomWalk.NUMBER_OF_SAMPLES > 0;
            }
            // Node expansion options.
            else if (opt.equals("maxNumberOfNodesToExpand")) {
            	AOStarSearch.maxNumberOfNodesToExpandInOneStep = new Integer(args[++i]);
            }
            else if (opt.equals("rateOfNodesToExpand")) {
            	AOStarSearch.rateOfNodesToExpandInOneStep = new Double(args[++i]);
            	assert AOStarSearch.rateOfNodesToExpandInOneStep >= 0.0;
            	assert AOStarSearch.rateOfNodesToExpandInOneStep <= 1.0;
            }

            else if (opt.equals("linear")) {
            	if (args[i+1].startsWith("(")) {
            		i++;
            		AOStarSearch.expansionStrategy = AOStarSearch.ExpansionStrategy.LINEAR;
            		AOStarSearch.expansionRules = new AOStarSearch.ExpansionRules[1][];
            		parseExpansionRules((args[i].substring(1, args[i].length() - 1)).split(","), 0);
            	}
            	else {
            		System.err.println("Option linear is used incorrectly.");
            		assert false;
            	}
            }
            else if (opt.equals("alternate")) {
            	int n = new Integer(args[++i]);
            	AOStarSearch.expansionStrategy = AOStarSearch.ExpansionStrategy.ALTERNATE;
            	AOStarSearch.expansionRules = new AOStarSearch.ExpansionRules[n][];
            	for (int j = 0; j < n; j++) {
            		i++;
            		parseExpansionRules((args[i].substring(1, args[i].length() - 1)).split(","), j);
            	}
            }
            // Planner option.
            else if (opt.equals("dumpPlan")) {
            	dumpPlan = true;
            }
            else if (opt.equals("calculateCosts")) {
            	calculateCosts = true;
            }
            // AO*-search options
            else if (opt.equals("improvePlan")) {
            	// Be careful. This option leads to a much slower AO*-search.
            	AOStarSearch.fastUpdate = false;
            }
            else if (opt.equals("preferDeterministicOps")) {
            	AOStarSearch.preferDeterministicOps = true;
            }
            // (L)AO*-search options
            else if (opt.equals("restrictSensing")) {
            	AOStarSearch.restrictSensingOps = true;
            }
            else if (opt.equals("useFirstSensingOp")) {
            	AOStarSearch.useFirstSensingOp = true;
            }
            // Grid options
            else if (opt.equals("runID")) {
            	// This ID is useful when this planner runs parallel. This id
            	// is appended to written output to avoid overwriting the outputs
            	// of another parallel run.
            	runID = new Integer(args[++i]);
            }
            else {
            	System.err.println("Option " + opt + " unknown.");
            	System.exit(9);
            }
            i++;
        }
        assert args.length >= i + 1;
        sasFilename = args[i];
        System.err.println(sasFilename + " parsed.");
        
        if (args.length >= i + 2) {
            timeout = Integer.parseInt(args[i + 1]);
        }
        if (args.length >= i + 3) {
            dumpPlan = args[i + 2].equals("1");
        }
    }
    
    /**
     * Parse expansion rules. // TODO
     * 
     * @param list
     * @param index
     */
    private void parseExpansionRules(String[] list, int index) {
    	AOStarSearch.ExpansionRules[] rules = new AOStarSearch.ExpansionRules[list.length];
    	for (int i = 0; i < list.length; i++) {
    		if (list[i].equals("minHeuristic"))
    			rules[i] = AOStarSearch.ExpansionRules.MIN_H;
    		else if (list[i].equals("maxHeuristic")) 
    			rules[i] = AOStarSearch.ExpansionRules.MAX_H;
    		else if (list[i].equals("minDepth")) {
    			rules[i] = AOStarSearch.ExpansionRules.MIN_DEPTH;
    			AOStarSearch.depthIsRelevant = true;
    		}
    		else if (list[i].equals("maxDepth")) {
    			rules[i] = AOStarSearch.ExpansionRules.MAX_DEPTH;
    			AOStarSearch.depthIsRelevant = true;
    		}
    		else if (list[i].equals("oldest"))
    			rules[i] = AOStarSearch.ExpansionRules.OLDEST;
    		else if (list[i].equals("newest")) 
    			rules[i] = AOStarSearch.ExpansionRules.NEWEST;
    		else if (list[i].equals("random"))
    			rules[i] = AOStarSearch.ExpansionRules.RANDOM;
    		else {
    			System.err.println("Argument " + list[i] + " cannot be parsed.");
    			System.exit(9);
    		}
    	}
    	AOStarSearch.expansionRules[index] = rules;
    }
    
    /**
     * Print some Garbage Collector stats.
     */
    public void printGCStats() {
        long totalGarbageCollections = 0;
        long garbageCollectionTime = 0;

        for(GarbageCollectorMXBean gc :
                ManagementFactory.getGarbageCollectorMXBeans()) {

            long count = gc.getCollectionCount();

            if(count >= 0) {
                totalGarbageCollections += count;
            }

            long time = gc.getCollectionTime();

            if(time >= 0) {
                garbageCollectionTime += time;
            }
        }

        System.err.println("Total Garbage Collections: "
            + totalGarbageCollections);
        System.err.println("Total Garbage Collection Time (ms): "
            + garbageCollectionTime);
    }
    
    /**
     * Initialize myND by
     * parsing planning options and the SAS-file.
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
    public boolean runProblem() {
    	assert Global.problem != null;

    	// Start measuring of preprocessing time.
    	startTime = System.currentTimeMillis();

        Heuristic heuristic = null;
        if (Global.algorithm == Algorithm.AO_STAR || Global.algorithm == Algorithm.LAO_STAR) {
            switch (heuristicEstimator) {
                case FF_HEURISTIC:
                	System.err.println("Heuristic: FF-heuristic.");
                    heuristic = new FFHeuristic();
                    break;
                case PDBS_HEURISTIC:
                	System.err.println("Heuristic: Canonical PDB-heuristic.");
                    heuristic = new PatternCollectionSearch().search();
                    break;
                case ZERO_HEURISTIC:
                	System.err.println("Heuristic: Zero-heuristic.");
                    heuristic = new ZeroHeuristic();
                    break;
                default:
                    assert false;
                    break;
            }
        }

        switch (Global.algorithm) {
            case AO_STAR:
            	System.err.println("Algorithm: AO*-search");
                search = new AOStarSearch();
                ((AOStarSearch) search).setEstimator(heuristic);
                break;
            case LAO_STAR:
            	System.err.println("Algorithm: LAO*-search");
                search = new LAOStarSearch();
                ((LAOStarSearch) search).setEstimator(heuristic);
                break;
            default:
                assert false;
                break;
        }

        // Finish measuring of preprocessing time.
        timeUsedForPreprocessing = System.currentTimeMillis() - startTime;

        // Set timeout for search.
        search.setTimeout(timeout - timeUsedForPreprocessing);
        int planFound = search.run();
        // Stop measuring search time.
        long timeUsedOverall = System.currentTimeMillis() - startTime;
   
        // Print some statistics.
        System.err.println();
        System.err.println("Time needed for preprocess (Parsing, PDBs, ...):    " + timeUsedForPreprocessing / 1000.0 + " seconds.");
        System.err.println("Time needed for search:                             " + (timeUsedOverall - timeUsedForPreprocessing) / 1000.0 + " seconds.");
        System.err.println("Time needed:                                        " + timeUsedOverall / 1000.0 + " seconds.");
        System.err.println();
        
        if (planFound == AbstractSearch.PROTAGONIST_WINS) {
        	search.printStats(calculateCosts);
        }
        
        // Extract and dump plan.
        if (dumpPlan && planFound == AbstractSearch.PROTAGONIST_WINS) {
        	search.dumpPlan();
        }

        printGCStats();
        
        //Global.problem.destroy();
        
        return planFound == AbstractSearch.PROTAGONIST_WINS;
    }

    /**
     * Get start time of the planner. Note: Time for parsing and initialization
     * of the planning problem is not measured.
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
     * Return the used search algorithm. Useful for reuse of the solution
     * graph.
     * 
     * @return search
     */
    public AbstractSearch getSearch() {
    	return search;
    }
    
    public static String getNameOfProblemInstance() {
    	String[] str = sasFilename.split("/");
    	return str[str.length - 1].replace(".sas","");
    }
}
