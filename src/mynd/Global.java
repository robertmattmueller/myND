package mynd;

import java.util.Random;

import mynd.MyNDPlanner.Algorithm;
import mynd.problem.Problem;
import mynd.symbolic.BDDManager;


/**
 * Class used to hold static global settings.
 * 
 * @author Robert Mattmueller
 * @author Manuela Ortlieb
 */
public class Global {

    /**
     * Search algorithm used.
     */
    public static MyNDPlanner.Algorithm algorithm = Algorithm.LAO_STAR; // LAO* is the default algorithm.
    
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
    public static Random generator = new Random(1);
}
