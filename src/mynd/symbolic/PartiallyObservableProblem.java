package mynd.symbolic;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

import mynd.Global;
import mynd.Global.ExitCode;
import mynd.explicit.ExplicitAxiomEvaluator;
import mynd.explicit.ExplicitCondition;
import mynd.explicit.ExplicitOperator;
import mynd.explicit.ExplicitOperator.OperatorRule;
import mynd.explicit.ExplicitState;
import mynd.heuristic.pdb.Abstraction;
import mynd.heuristic.pdb.PDB;
import mynd.problem.Problem;
import mynd.state.Condition;
import mynd.state.Operator;
import mynd.state.State;
import mynd.util.Pair;
import net.sf.javabdd.BDD;


/**
 * A partially observable planning problem is a planning task where parts of the planning task could
 * not be observed or are uncertain. There exists sensing actions, which are used to observe parts
 * of the planning problem and therefore reduce uncertainty. To handle this uncertainty belief
 * states are used to describe a set of possible worlds. Belief states are represented by BDDs. This
 * class uses a BDD manger to handle belief states.
 *
 * @author Manuela Ortlieb
 *
 */
public class PartiallyObservableProblem extends Problem {

  /**
   * Initial belief state of this planning problem.
   */
  private BeliefState initialState;

  /**
   * Goal of this planning problem.
   */
  private SymbolicCondition goal;

  /**
   * Explicit axiom evaluator.
   */
  public final ExplicitAxiomEvaluator explicitAxiomEvaluator;

  /**
   * Variables that values are not unknown in the initial state.
   */
  public Set<Integer> variablesWhichAreInitiallyKnown;

  /**
   * The original explicit operators before they were converted to symbolic operators.
   */
  protected Set<ExplicitOperator> explicitOps;

  /**
   * Set true for debug output information.
   */
  public static final boolean DEBUG = false;

  /**
   * Constructor to create a partially observable problem.
   */
  private PartiallyObservableProblem(BDD initialBDD, ExplicitCondition explicitGoal,
      ArrayList<String> variableNames, List<List<String>> propositionNames,
      ArrayList<Integer> domainSizes, ArrayList<Integer> axiomLayer,
      ArrayList<Integer> defaultAxiomValues, LinkedHashSet<Operator> operators,
      Set<OperatorRule> axioms, Set<Integer> variablesWhichAreInitiallyKnown) {
    super(explicitGoal, variableNames, propositionNames, domainSizes, axiomLayer,
        defaultAxiomValues, operators, axioms, false);
    Global.problem = this;
    // initialize axiom evaluator
    SymbolicAxiomEvaluator axiomEvaluator = new SymbolicAxiomEvaluator();
    initialState = new BeliefState(initialBDD, axiomEvaluator);
    explicitAxiomEvaluator = new ExplicitAxiomEvaluator();
    this.variablesWhichAreInitiallyKnown =
        Collections.unmodifiableSet(variablesWhichAreInitiallyKnown);
  }

  /**
   * Create singleton instance of this partially observable planning problem.
   *
   * @param explicitGoal explicit goal of this planning problem
   * @param variableNames variable names of this planning problem
   * @param propositionNames proposition names of this planning problem
   * @param domainSizes domain sizes of multi-valued variables
   * @param numStateVars number of multi-valued state variables
   * @param causativeOperators causative actions of this planning problem
   * @param sensingOperators sensing actions of this planning problem
   * @return partially observable planning task
   */
  public static Problem getInstance(BDD initialBDD, ExplicitCondition explicitGoal,
      ArrayList<String> variableNames, List<List<String>> propositionNames,
      ArrayList<Integer> domainSizes, ArrayList<Integer> axiomLayer,
      ArrayList<Integer> defaultAxiomValues, LinkedHashSet<Operator> operators,
      Set<OperatorRule> axioms, Set<Integer> variablesWhichAreInitiallyKnown) {
    if (instance == null) {
      instance =
          new PartiallyObservableProblem(initialBDD, explicitGoal, variableNames, propositionNames,
              domainSizes, axiomLayer, defaultAxiomValues, operators, axioms,
              variablesWhichAreInitiallyKnown);
    }
    return instance;
  }

  /**
   * Get set of explicit initial states of this planning task. Therefore all world states of initial
   * belief states are computed.
   *
   * @return set of explicit initial states
   */
  @Override
  public List<ExplicitState> getExplicitInitialStates() {
    if (explicitInitialStateList == null) {
      // compute it only once
      explicitInitialStateList =
          Collections.unmodifiableList(initialState.getAllExplicitWorldStates());
    }
    return explicitInitialStateList;
  }

  /**
   * Get the initial belief state of this planning task.
   *
   * @return initial belief state
   */
  @Override
  public State getSingleInitialState() {
    return initialState;
  }

  /**
   * Get the original explicit operator set
   */
  public Set<ExplicitOperator> getExplicitOperators() {
    return explicitOps;
  }

  /**
   * Create an abstraction of this problem induced by given pattern.
   *
   * @param pattern the set of state variables to which this problem is abstracted
   * @return abstraction induced by given pattern
   */
  @Override
  public Abstraction abstractToPattern(Set<Integer> pattern, Condition goal) {
    Abstraction abstraction;
    BDD symbolicPatternComplement = Global.BDDManager.getSymbolicPatternComplement(pattern);
    SortedSet<Integer> sortedPattern = new TreeSet<Integer>(pattern);

    if (PDB.buildExplicitPDBs) {
      if (goal instanceof SymbolicCondition) {
        System.err
        .println("It is not possible to compute an abstraction under full observability, because goal is symbolic!");
        ExitCode.EXIT_CRITICAL_ERROR.exit();
      }
      // In this case we want to compute an full observable abstract planning problem.

      // Abstract goal condition.
      Condition abstractedGoal;
      if (goal.equals(Global.problem.getGoal())) {
        assert goal instanceof SymbolicCondition : "Why is goal instanceof ExplicitCondition though this is a POND task?";
      // Given goal is a symbolic condition.
      abstractedGoal = explicitGoal.abstractToPattern(pattern);
      } else {
        // Given goal is a explicit condition.
        abstractedGoal = ((ExplicitCondition) goal).abstractToPattern(pattern);
      }

      // Abstract operators
      Set<Operator> abstractedOperators = new LinkedHashSet<Operator>();
      for (Operator op : operators) {
        Operator abstractedOp = op.getExplicitOperator().abstractToPattern(pattern);
        if (abstractedOp != null) {
          abstractedOperators.add(abstractedOp);
        }
      }

      // An axiom is either completely conserved or completely removed in an abstraction.
      Set<OperatorRule> abstractedAxioms = new LinkedHashSet<ExplicitOperator.OperatorRule>();
      for (OperatorRule axiom : axioms) {
        if (pattern.contains(axiom.head.first)) {
          for (Pair<Integer, Integer> fact : axiom.body) {
            assert pattern.contains(fact.first);
          }
          abstractedAxioms.add(axiom);
        }
      }

      abstraction =
          new Abstraction(sortedPattern, abstractedGoal, abstractedOperators, abstractedAxioms);
      // First abstract BDD of initial state.
      BDD abstractedBDD = initialState.beliefStateBDD.exist(symbolicPatternComplement);
      // Compute valuations.
      List<Map<Integer, Integer>> valuations =
          Global.BDDManager.getValuations(abstractedBDD, pattern);
      Set<State> abstractedInitialStates = new HashSet<State>((int) (valuations.size() / 0.75) + 1);
      // Create explicit states.
      for (Map<Integer, Integer> valuation : valuations) {
        List<Integer> defaultValues = new ArrayList<Integer>(Global.problem.numStateVars);
        for (int i = 0; i < Global.problem.numStateVars; i++) {
          if (valuation.containsKey(i)) {
            defaultValues.add(i, valuation.get(i));
          } else {
            defaultValues.add(i, -1);
          }
        }
        abstractedInitialStates.add(new ExplicitState(valuation, abstraction, abstraction
            .getExplicitAxiomEvaluator()));
      }
      abstraction.setInitialState(new ArrayList<State>(abstractedInitialStates));
    } else {
      // Abstract goal condition.
      Condition abstractedGoal =
          ((SymbolicCondition) goal).abstractToPattern(pattern, symbolicPatternComplement);

      // Abstract operators.
      Set<Operator> abstractedOperators = new LinkedHashSet<Operator>();
      for (Operator operator : operators) {
        Operator abstractedOp = operator.abstractToPattern(pattern);
        if (abstractedOp != null) {
          assert abstractedOp.isAbstracted;
          abstractedOperators.add(abstractedOp);
        }
      }
      assert Operator.assertNoDuplicateInNames(abstractedOperators);

      // An axiom is either completely conserved or completely removed in an abstraction.
      Set<OperatorRule> abstractedAxioms = new LinkedHashSet<ExplicitOperator.OperatorRule>();
      for (OperatorRule axiom : axioms) {
        if (pattern.contains(axiom.head.first)) {
          for (Pair<Integer, Integer> fact : axiom.body) {
            assert pattern.contains(fact.first);
          }
          abstractedAxioms.add(axiom);
        }
      }

      abstraction =
          new Abstraction(sortedPattern, abstractedGoal, abstractedOperators, abstractedAxioms,
              symbolicPatternComplement); // FIXME

      // Abstract and set initial state.
      abstraction
      .setInitialState(Arrays.asList((State) initialState.abstractToPattern(abstraction)));
    }
    if (DEBUG) {
      abstraction.dump();
    }
    return abstraction;
  }

  /**
   * Finish initialization of BDD manager, which requires that partially observable problem is
   * instantiated.
   */
  @Override
  public void finishInitializationAndPreprocessing() {
    // TODO not very reasonable to use operators in this way (first containing explicit ops
    // and after initialization containing symbolic ops).
    Set<ExplicitOperator> explicitOps =
        new HashSet<ExplicitOperator>((int) (operators.size() / 0.75) + 1);
    for (Operator op : operators) {
      explicitOps.add((ExplicitOperator) op);
    }
    operators = Collections.unmodifiableSet(Global.BDDManager.initializeOperators(explicitOps));
    setOriginalOperators(operators);
    assert Operator.assertNoDuplicateInNames(getOperators());
    goal = Global.BDDManager.initializeGoal();
    System.out.println("Parsing and initialization of BDDs completed.");
    System.out.println();
    if (DEBUG) {
      dump();
    }
  }

  /**
   * This function is overwritten to ensure that explicitOps is updated when required
   */
  @Override
  public void setOperators(Set<Operator> ops, boolean updateOriginalOperators) {
    super.setOperators(ops, updateOriginalOperators);
    if (ops.iterator().next() instanceof ExplicitOperator) {
      // we need to update explicitOps and convert our operators again
      finishInitializationAndPreprocessing();
    }
  }

  @Override
  protected void setOriginalOperators(Set<Operator> ops) {
    // FIXME duplicate code (since of op.copy()).
    // See FullyObservable Problem. Constructor not possible since symbolic operators
    // are build with BDDManager.
    Map<String, Operator> original =
        new HashMap<String, Operator>((int) (operators.size() / 0.75) + 1);
    int index = 0; // Each operator should get a unique name. Append a index if it has a duplicate
    // name.
    for (Operator op : operators) {
      if (original.containsKey(op.getName())) {
        original.put(op.getName() + index, op);
        op.setName(op.getName() + index);
        ++index;
      } else {
        original.put(op.getName(), op);
      }
    }
    originalOperators = Collections.unmodifiableMap(original);
  }

  /**
   * Get string representation of this partially observable problem.
   *
   * @return string representation of this partially observable planning problem
   */
  @Override
  public String toString() {
    StringBuffer buffer = new StringBuffer();
    buffer.append("Initial state: " + initialState.toString() + "\n");
    buffer.append("Goal: " + goal.toString() + "\n");
    buffer.append("Vars (*not* BDD vars!!):");
    for (int var = 0; var < variableNames.size(); var++) {
      buffer.append(var + ":" + domainSizes.get(var) + " ");
    }
    buffer.append("\n");
    buffer.append("Num of ops: " + operators.size() + "\n");
    return buffer.toString();
  }

  /**
   * Get symbolic goal of this planning problem.
   *
   * @return goal of the planning task.
   */
  @Override
  public SymbolicCondition getGoal() {
    return goal;
  }

  @Override
  public void dump() {
    System.out.println("Dumping partially observable problem");
    System.out.println("Number of state variables: " + numStateVars);
    System.out.println("Initial state:");
    for (State state : getSingleInitialState().getAllExplicitWorldStates()) {
      state.dump();
    }
    System.out.println("Goal:");
    goal.dump();
    System.out.println("Operators (" + operators.size() + "):");
    for (Operator op : operators) {
      op.dump();
    }
  }

  @Override
  public ExplicitAxiomEvaluator getExplicitAxiomEvaluator() {
    assert explicitAxiomEvaluator != null;
    return explicitAxiomEvaluator;
  }

  @Override
  public void setInitialState(State initState) {
    initialState = (BeliefState) initState;
  }
}
