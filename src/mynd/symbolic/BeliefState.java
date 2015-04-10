package mynd.symbolic;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import mynd.Global;
import mynd.Global.ExitCode;
import mynd.explicit.ExplicitState;
import mynd.heuristic.pdb.Abstraction;
import mynd.state.Condition;
import mynd.state.Operator;
import mynd.state.State;
import mynd.util.Pair;
import net.sf.javabdd.BDD;

/**
 * @author Manuela Ortlieb
 *
 */
public class BeliefState extends State {

  /**
   * BDD representation of this belief state.
   */
  public final BDD beliefStateBDD;

  /**
   * After checking applicability of every operator this list contains each applicable operator.
   */
  private List<Operator> applicableOps;

  /**
   * Indicates if all operators were checked yet.
   */
  private boolean applicableOpsInitialized;

  public final SymbolicAxiomEvaluator axiomEvaluator;


  public final static boolean DEBUG = false;

  /**
   * Creates a new belief state.
   *
   * @param beliefStateBDD BDD representing the set of world states of the belief state
   */
  public BeliefState(BDD beliefStateBDD, SymbolicAxiomEvaluator axiomEvaluator) {
    this(axiomEvaluator.evaluate(beliefStateBDD), false, null, axiomEvaluator);
  }

  /**
   * Creates a new abstracted belief state.
   */
  public BeliefState(BDD beliefStateBDD, Abstraction abstraction,
      SymbolicAxiomEvaluator axiomEvaluator) {
    this(axiomEvaluator.evaluate(beliefStateBDD), true, abstraction, axiomEvaluator);
  }

  /**
   * Creates a new Belief State.
   *
   * @param beliefStateBDD BDD representing the set of world states of the belief state
   * @param isAbstractedState denotes if this belief state is an abstracted belief state
   * @param abstraction if this is an abstracted belief state, then is abstraction the corresponding
   *        abstracted problem
   */
  private BeliefState(BDD beliefStateBDD, boolean isAbstractedState, Abstraction abstraction,
      SymbolicAxiomEvaluator axiomEvaluator) {
    super(BigInteger.valueOf(beliefStateBDD.hashCode()), isAbstractedState, abstraction);
    this.beliefStateBDD = beliefStateBDD;
    this.axiomEvaluator = axiomEvaluator;
    applicableOps = new ArrayList<Operator>();
    applicableOpsInitialized = false;

  }

  /**
   * Get string representation of this belief state.
   *
   * @return string representation
   */
  @Override
  public String toString() {
    return beliefStateBDD.toString();
  }

  /**
   * Get string representation with proposition names of this belief state. Note: Use it *only* for
   * debugging since it could be very expensive to compute all world states.
   *
   * @return string representation
   */
  @Override
  public String toStringWithPropositionNames() {
    List<Map<Integer, Integer>> variableValueMaps;
    if (isAbstractedState) {
      variableValueMaps = Global.BDDManager.getValuations(beliefStateBDD, abstraction.pattern);
    } else {
      variableValueMaps = Global.BDDManager.getCompleteValuations(beliefStateBDD);
    }
    StringBuffer buffer = new StringBuffer();
    buffer.append("{");

    for (Map<Integer, Integer> variableValueMap : variableValueMaps) {
      buffer.append("{ ");
      int i = 0;
      for (int var : variableValueMap.keySet()) {
        buffer.append(Global.problem.propositionNames.get(var).get(variableValueMap.get(var)));
        if (i < variableValueMap.size() - 1) {
          buffer.append(", ");
        }
        i++;
      }
      buffer.append(" }");
    }
    buffer.append("}");
    return buffer.toString();
  }


  /**
   * Apply given operator to this state.
   *
   * @param op applicable operator which is applied to this state
   * @return set of successor states
   */
  @Override
  public Set<State> apply(Operator op) {
    assert op != null;
    SymbolicOperator symbolicOp = (SymbolicOperator) op;
    if (DEBUG) {
      System.out.println("Apply op " + op.getName());
    }
    Set<State> result = new LinkedHashSet<State>();

    BeliefState successor = this;
    // First apply effects.
    if (symbolicOp.isCausative) {
      // Apply effect to belief state.
      BDD succ =
          symbolicOp.effect.and(beliefStateBDD.id())
          .exist(Global.BDDManager.setOfUnprimedStateVars);
      assert !(succ.isZero());
      succ = succ.replace(Global.BDDManager.primedToUnprimed());
      successor =
          new BeliefState(axiomEvaluator.evaluate(succ), isAbstractedState, abstraction,
              axiomEvaluator);
    }
    if (symbolicOp.isSensing) {
      // Split by observations.
      LinkedHashSet<BeliefState> current = new LinkedHashSet<BeliefState>();
      LinkedHashSet<BeliefState> next = new LinkedHashSet<BeliefState>();
      current.add(successor);
      for (Pair<Integer, Integer> varVal : op.observation) {
        BDD obs = Global.BDDManager.factBDDs[varVal.first][varVal.second];
        for (BeliefState bs : current) {
          BDD result1 = bs.beliefStateBDD.id().and(obs);
          BDD result2 = bs.beliefStateBDD.id().and(obs.id().not()); // could be cached (application
          // test)
          if (!result1.isZero()) {
            next.add(new BeliefState(axiomEvaluator.evaluate(result1), isAbstractedState,
                abstraction, axiomEvaluator));
          }
          if (!result2.isZero()) {
            next.add(new BeliefState(axiomEvaluator.evaluate(result2), isAbstractedState,
                abstraction, axiomEvaluator));
          }
        }
        // We have to delete BDDs of temporary belief states.
        for (BeliefState temp : current) {
          if (temp != this) { // TODO Is this correct?
            temp.free();
          }
        }
        current = new LinkedHashSet<BeliefState>(next); // Copy.
        next.clear();
      }
      for (BeliefState bs : current) {
        result.add(bs);
      }
    } else {
      result.add(successor);
    }
    if (DEBUG) {
      System.out.println("Resulting state(s):");
      for (State s : result) {
        s.dump();
      }
    }
    return result;
  }

  /**
   * Only call this if you are sure that this state is "deleted" afterwards.
   */
  @Override
  public void free() {
    beliefStateBDD.free();
  }

  /**
   * Get this belief state's number of world states.
   *
   * @return number of world sate of this belief state
   */
  public double getNumberOfWorldStates() {
    BDD setOfUnprimedStateVars;
    if (isAbstractedState) {
      setOfUnprimedStateVars = Global.BDDManager.getUnprimedVariables(abstraction.pattern);
    } else {
      setOfUnprimedStateVars = Global.BDDManager.setOfUnprimedStateVars;
    }
    return beliefStateBDD.satCount(setOfUnprimedStateVars);
  }

  /**
   * Computes satisfying assignments of given belief state BDD and creates explicit states with
   * these assignments. Be careful with this method, because a belief state could contain
   * exponential many world states and therefore this computation could be *very* time intensive.
   *
   * @param beliefStateBDD for which satisfying assignments should be computed to get explicit
   *        states.
   * @return Set of explicit states initialized with satisfying assignments of given BDD.
   */
  @Override
  public List<ExplicitState> getAllExplicitWorldStates() {
    List<Map<Integer, Integer>> variableValueMaps;
    if (isAbstractedState) {
      variableValueMaps = Global.BDDManager.getValuations(beliefStateBDD, abstraction.pattern);
    } else {
      variableValueMaps = Global.BDDManager.getCompleteValuations(beliefStateBDD);
    }
    List<ExplicitState> explicitStates = new ArrayList<ExplicitState>(variableValueMaps.size());
    for (Map<Integer, Integer> variableValueMap : variableValueMaps) {
      if (isAbstractedState) {
        explicitStates.add(new ExplicitState(variableValueMap, abstraction, Global.problem
            .getExplicitAxiomEvaluator()));
      } else {
        explicitStates.add(new ExplicitState(variableValueMap, Global.problem
            .getExplicitAxiomEvaluator()));
      }
    }
    return explicitStates;
  }

  /**
   * Get n randomly drawn explicit world states of this belief state. Duplicates are possible since
   * assumption of placing back the drawn sample.
   *
   * @param n number of world states to be sampled
   * @return n randomly drawn explicit world states of this belief state
   */
  public List<ExplicitState> getRandomExplicitWorldStates(int n) {
    if (isAbstractedState) {
      System.err.println(new Exception(
          "The method getRandomExplicitWorldStates does not support abstracted states"));
      ExitCode.EXIT_UNSUPPORTED.exit();
    }
    List<Map<Integer, Integer>> variableValueMaps =
        new ArrayList<Map<Integer, Integer>>((int) Math.ceil(n / 0.75));
    for (int i = 0; i < n; i++) {
      variableValueMaps.add(Global.BDDManager.getOneRandomValuation(beliefStateBDD));
    }
    List<ExplicitState> explicitStates = new ArrayList<ExplicitState>(n);
    for (Map<Integer, Integer> variableValueMap : variableValueMaps) {
      explicitStates.add(new ExplicitState(variableValueMap, Global.problem
          .getExplicitAxiomEvaluator()));
    }
    if (DEBUG) {
      System.out.println("Sampled world states (out of " + getNumberOfWorldStates()
          + " possible states)");
      for (ExplicitState state : explicitStates) {
        System.out.println(state.hashCode);
      }
    }
    return explicitStates;
  }

  /**
   * Existential abstraction of this belief state to given pattern complement.
   *
   * @param abstraction induced by pattern
   * @return abstracted belief state
   */
  public BeliefState abstractToPattern(Abstraction abstraction) {
    assert abstraction != null;
    assert abstraction.getSymbolicAxiomEvaluator() != null;
    return new BeliefState(beliefStateBDD.exist(abstraction.symbolicPatternComplement),
        abstraction, abstraction.getSymbolicAxiomEvaluator());
  }

  /**
   * Checks whether the given operator is applicable in this belief state.
   *
   * @param op operator to check applicability
   */
  @Override
  public boolean isApplicable(Operator op) {
    if (applicableOps.contains(op)) {
      return true;
    } else {
      if (applicableOpsInitialized) {
        return false;
      }
    }
    // Operator was not tested before.
    if (op.getPrecondition().isSatisfiedIn(this)) { // operator is applicable
      if (op.isSensing && !op.isCausative) {
        // Sensing operators without effects are only useful if there is a splitting.
        for (Pair<Integer, Integer> varVal : op.observation) {
          BDD obs = Global.BDDManager.factBDDs[varVal.first][varVal.second];
          BDD result1 = beliefStateBDD.and(obs);
          BDD result2 = beliefStateBDD.and(obs.id().not());
          boolean splitting = !(result1.isZero() || result2.isZero());
          result1.free();
          result2.free();
          if (splitting) {
            return true;
          }
        }
        return false;
        // TODO caching of result 1 and result 2
      }
      return true;
    }
    return false;
  }

  /**
   * Dump this belief state for debugging.
   *
   * Note: Use it *only* for debugging since it could be very expensive to compute all world states.
   */
  @Override
  public void dump() {
    System.out.println("Dumping explicit states of this belief state...");
    System.out.println(toStringWithPropositionNames());
  }

  @Override
  public Condition toCondition() {
    Set<Integer> scope = new HashSet<Integer>();
    if (isAbstractedState) {
      scope = abstraction.pattern;
    } else {
      scope = Global.BDDManager.stateVariables;
    }
    return new SymbolicCondition(beliefStateBDD, scope);
  }
}
