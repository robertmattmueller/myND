package mynd.observationreduction;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import java.util.StringTokenizer;

import mynd.Global;
import mynd.MyNDPlanner;
import mynd.explicit.ExplicitCondition;
import mynd.explicit.ExplicitOperator;
import mynd.problem.Problem;
import mynd.search.AbstractSearch.Result;
import mynd.search.policy.Policy;
import mynd.state.Operator;
import mynd.symbolic.PartiallyObservableProblem;
import mynd.symbolic.SymbolicOperator;
import mynd.util.Pair;


/**
 *
 * @author Manuela Ortlieb
 */

public class ObservationReduction  {

  MyNDPlanner solver;

  /**
   * Set of causative operators to solve the planning task.
   */
  private Set<Operator> causativeOperators;

  /**
   * List of sensing operators to solve the planning task.
   * This is the solution of this algorithm.
   */
  private List<Operator> sensingOperators;

  /**
   * Set of sensing operators which are deleted by
   * the top down algorithm.
   */
  static Set<Operator> deletedOperators;

  static boolean precut;

  static boolean planRecycling;

  public ObservationReduction(MyNDPlanner solver) {
    this.solver = solver;
    initialize();
  }

  /**
   * @param args
   * @throws IOException
   * @throws FileNotFoundException
   */
  public static void main(String[] args) throws FileNotFoundException, IOException {
    long startTime = System.currentTimeMillis(); // start measuring runtime

    String myNDOptions = args[0];
    String sasFile = args[1];
    System.out.println("SAS file: " + sasFile);

    try {
      for (int i = 2; i < args.length; i++) {
        if (args[i].equals("-recycling")){
          System.out.println("Recycling is used.");
          planRecycling = true;
        }
        else if (args[i].equals("-precut")){
          System.out.println("Precut is used.");
          precut = true;
        }
        else {
          System.err.println("Option not found.");
          Global.ExitCode.EXIT_INPUT_ERROR.exit();
        }
      }
    } catch (Exception e) {
      System.err.println("e");
    }

    // Create options for myND planner.
    StringTokenizer tokenizer = new StringTokenizer(myNDOptions);

    String[] argsMyND = new String[tokenizer.countTokens() + 1];
    int i = 0;
    while (tokenizer.hasMoreTokens()) {
      argsMyND[i] = tokenizer.nextToken();
      i++;
    }
    argsMyND[i] = sasFile;

    System.out.println("Planner configuration:");
    System.out.println(Arrays.asList(argsMyND));
    System.out.println();

    ObservationReduction obsRed = new ObservationReduction(new MyNDPlanner(argsMyND));
    obsRed.runGreedySearch();

    long endTime = System.currentTimeMillis();
    System.out.println("Duration of ObservationReduction: " + (endTime - startTime) + " ms");
  }

  private void initialize() {
    Problem problem = solver.getProblem();
    causativeOperators = new HashSet<Operator>(problem.getOperators().size());
    sensingOperators = new LinkedList<Operator>();

    // Manipulate planning task by deleting all sensing ops.
    Set<Operator> newSetOfOperators =
        new HashSet<Operator>(problem.getOperators().size() + problem.numStateVars
            * problem.domainSizes.get(0));
    for (Operator op : problem.getOperators()) {
      if (op.isSensing) {
        assert !op.isCausative;
      }
      else {
        newSetOfOperators.add(op);
        causativeOperators.add(op);
      }
    }

    // TODO: uncertain variables are an overapproximation because we observe facts not variables.
    // Add a sensing operator for each non trivial observation variable.
    //for (int var : ((PartiallyObservableProblem) Global.problem).getUncertainVariables()) {
    for (int var = 0; var < problem.numStateVars; var++) {
      for (int val = 0; val < problem.domainSizes.get(var); val++) {
        String nameOfFact = problem.propositionNames.get(var).get(val);
        if (nameOfFact.startsWith("(not")) {
          continue;
        }
        //if (!test.contains("sense-" + nameOfFact))
        //continue;
        Set<Pair<Integer, Integer>> observationSet = new HashSet<Pair<Integer,Integer>>();
        observationSet.add(new Pair<Integer, Integer>(var, val));
        // First create the explicit operator.
        // TODO: unit cost 1 or cost 0
        ExplicitOperator explicitSensingOp = new ExplicitOperator("sense-" + nameOfFact, new ExplicitCondition(new HashMap<Integer, Integer>()), null, observationSet, false, 1);
        SymbolicOperator sensingOp =
            ((PartiallyObservableProblem) solver.getProblem()).BDDManager.createSymbolicOperator(
                problem, explicitSensingOp.getName(), explicitSensingOp);
        System.out.println("Create a sensing op " + sensingOp + " for fact " + nameOfFact);
        // TODO: The constructor of symbolic operator should not be public!
        newSetOfOperators.add(sensingOp);

        // All sensing operators are added to the solution.
        sensingOperators.add(sensingOp);
      }
    }
    problem.setOperators(newSetOfOperators, true);
    // Sensing actions which get deleted.
    deletedOperators = new LinkedHashSet<Operator>();
  }

  public void runGreedySearch() {
    int initialNumberOfSensingActions = sensingOperators.size();
    int iteration = 0;
    System.out.println();
    System.out.println("Iteration " + iteration++ + " of SimpleMinObservation");
    System.out.println("Number of sensing actions: " + initialNumberOfSensingActions);
    // First run of myND.
    boolean planFound = solver.runProblem() == Result.PROVEN;
    assert planFound;

    if (precut) {
      precut();
    }
    GreedySearch greedy;
    if (planRecycling) {
      greedy = new PlanRecyclingSearch(solver);
    }
    else {
      greedy = new GreedySearch(solver);
    }

    Queue<Operator> sensingQueue = new LinkedList<Operator>(sensingOperators);
    // Run the greedy algorithm
    while (!sensingQueue.isEmpty()){
      Operator sensingOpToReduce = sensingQueue.poll();
      System.out.println();
      System.out.println("Iteration " + iteration++ + " of SimpleMinObservation");
      System.out.println("Number of sensing actions: " + sensingOperators.size());
      System.out.println("Try to delete: " + sensingOpToReduce.getName());

      if (greedy.run(sensingOpToReduce)) {
        System.out.println(sensingOpToReduce.getName() + " - delete");
        deletedOperators.add(sensingOpToReduce);
        sensingOperators.remove(sensingOpToReduce);
      }
      else {
        System.out.println(sensingOpToReduce.getName() + " - DO NOT delete");
      }
    }

    System.out.println();
    System.out.println("Iteration " + iteration++ + " of ObservationReduction (Last run!)");
    System.out.println("Number of sensing actions: " + sensingOperators.size());

    assert solver.getProblem().getSingleInitialState().equals(greedy.originalInitState);
    boolean foundPlan = solver.runProblem() == Result.PROVEN;
    if (!foundPlan) {
      System.out.println("ERROR!!!");
      Global.ExitCode.EXIT_CRITICAL_ERROR.exit();
    }
    else {
      System.out.println("Reduced plan found.");
    }

    System.out.println();
    System.out.println("---------------- Statistics ----------------");
    System.out.println("Planner runs: " + iteration);
    System.out.println("Initial number of sensing actions: " + initialNumberOfSensingActions);
    System.out.println("Resulting number of sensing actions: " + sensingOperators.size());
    System.out.println("Solution: " + sensingOperators);
  }

  private void precut() {
    // Sensing actions used in the first plan.
    Set<Operator> usedSensings = new HashSet<Operator>();
    Policy policy = solver.getSearch().getPolicy();
    for (Pair<Operator, Integer> pair : policy.getEntries().values()) {
      if (pair.first.isSensing) {
        usedSensings.add(pair.first);
      }
    }

    // Sensing actions which get deleted.
    Set<Operator> deleteSensings = new HashSet<Operator>(sensingOperators);
    deleteSensings.removeAll(usedSensings);

    System.out.println("Precut - Sensing actions not in the plan will be removed: " + deleteSensings);
    sensingOperators.removeAll(deleteSensings);

    Set<Operator> allOps = new HashSet<Operator>(causativeOperators);
    allOps.addAll(sensingOperators);
    solver.getProblem().setOperators(allOps, true);

    System.out.println();
    System.out.println("Number of sensing actions after precut: " + sensingOperators.size());
    System.out.println();
  }
}
