package mynd.cegar;

import java.util.ArrayList;
import java.util.EmptyStackException;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.UUID;

import mynd.MyNDPlanner;
import mynd.explicit.ExplicitCondition;
import mynd.explicit.ExplicitEffect;
import mynd.explicit.ExplicitOperator;
import mynd.explicit.ExplicitState;
import mynd.heuristic.pdb.Abstraction;
import mynd.heuristic.pdb.PatternCollectionSearch;
import mynd.problem.FullyObservableProblem;
import mynd.problem.Problem;
import mynd.search.AbstractSearch;
import mynd.search.policy.Policy;
import mynd.state.Operator;
import mynd.state.State;
import mynd.symbolic.BeliefState;
import mynd.symbolic.PartiallyObservableProblem;
import mynd.symbolic.SymbolicOperator;
import mynd.util.Pair;
import javabdd.BDD;

public class CegarSearch {
  /**
   * The types of abstractions to use for the CEGAR search:
   */
  public enum AbstractionType {
    NONE, UNSOLVABILITY_OVERAPPROXIMATION, UNSOLVABILITY_DOUBLEAPPROXIMATION,
  };

  /**
   * The refinement approach used to find and adapt to inconsistencies/counter-examples:
   */
  public enum RefinementAlgorithm {
    /**
     * Start out with the initial state, and do depth-first-search in abstract state space along the
     * policy actions
     */
    REFINEMENT_DFS,

    /**
     * Same as REFINEMENT_DFS_ABSTRACT, but first compute a delete relaxated landmark and always
     * pick operators of the landmark first.
     */
    REFINEMENT_DFS_ABSTRACT_LANDMARK_GUIDED,

    /**
     * Similar to REFINEMENT_DFS, but first collect all conflicting states and then refine with
     * variables used most in the conflicting states
     */
    REFINEMENT_DFS_COLLECT_ALL,
  };

  /**
   * The refinement algorithm used when an inconsistency is encountered
   */
  protected RefinementAlgorithm refinementAlgorithm;

  /**
   * The type of abstraction(s) used for the CEGAR algorithm
   */
  protected AbstractionType abstractionType;

  /**
   * The main planner instance which called this CEGAR algorithm
   */
  protected MyNDPlanner planner;

  /**
   * The set of variables used for the abstractedProblem.
   */
  Set<Integer> abstractedProblemVariables;

  /**
   * The problem we operate on (usually Global.problem):
   */
  protected Problem problem;

  /**
   * Abstraction of original problem with the variable pattern in abstractedProblemVariables.
   */
  protected Problem abstractedProblem;

  /**
   * The abstraction info the abstractedProblem is based on
   */
  protected Abstraction abstraction;

  public class Result {
    public AbstractSearch.Result planFound;
    public long timeUsedForPreprocessing;
  }

  /**
   * Modifies the problem to simplify and isolate the goal condition. Add a new operator with the
   * current goal condition as precondition, and a new variable as an effect. The new variable will
   * be the new simplified goal condition. This makes it a good start for a trivial abstraction.
   */
  protected int applyGoalModification(Problem p) {
    // construct new variable list with new variable that replaces goal condition:
    String goalVarName = "goal var id " + UUID.randomUUID().toString().replace("-", "");
    int newVarIndex = p.variableNames.size();
    ArrayList<String> newVariableNames = new ArrayList<String>(p.variableNames);
    newVariableNames.add(goalVarName);

    // modify the problem accordingly:
    String goalOpName = "goal op id " + UUID.randomUUID().toString().replace("-", "");
    if (p instanceof PartiallyObservableProblem) {
      // POND:

      // add our new goalVarName variable:
      p.domainSizes.add(2);
      p.variableNames.add(goalVarName);
      Set<Integer> newKnownVariables =
          new LinkedHashSet<Integer>(
              ((PartiallyObservableProblem) p).variablesWhichAreInitiallyKnown);
      newKnownVariables.add(2);
      ((PartiallyObservableProblem) p).variablesWhichAreInitiallyKnown = newKnownVariables;
      ((PartiallyObservableProblem) p).BDDManager.incorporateNewVariable(2);
      p.numStateVars += 1;

      // make sure the variable is initially known:
      BeliefState initialState =
          (BeliefState) ((PartiallyObservableProblem) p).getSingleInitialState();
      BDD unprimedValue =
          ((PartiallyObservableProblem) p).BDDManager.getUnprimedWithValue(p.numStateVars - 1, 0);
      BDD newFormula = initialState.beliefStateBDD.and(unprimedValue);
      if (initialState.abstraction != null) {
        initialState =
            new BeliefState(problem, newFormula, initialState.abstraction,
                initialState.axiomEvaluator);
      } else {
        initialState = new BeliefState(problem, newFormula, initialState.axiomEvaluator);
      }
      p.setInitialState(initialState);

      // construct effect for the new operator:
      Map<Integer, Integer> emptyValueMap = new LinkedHashMap<Integer, Integer>();
      ExplicitCondition emptyCondition = new ExplicitCondition(emptyValueMap);
      ExplicitEffect newGoalEnablingEffect =
          new ExplicitEffect(emptyCondition, newVariableNames.size() - 1, 1);
      Set<Set<ExplicitEffect>> opEffect = new LinkedHashSet<Set<ExplicitEffect>>();
      Set<ExplicitEffect> opEffectSingleOutcome = new LinkedHashSet<ExplicitEffect>();
      opEffectSingleOutcome.add(newGoalEnablingEffect);
      opEffect.add(opEffectSingleOutcome);

      // construct new operator as explicit operator first
      // note: precondition makes no sense but we are going to override it anyway (after converting
      // it to a symbolic operator)
      ExplicitOperator explicitGoalOp =
          new ExplicitOperator(goalOpName, p.explicitGoal, opEffect,
              new LinkedHashSet<Pair<Integer, Integer>>(), false, 0);

      // add operator to the problem:
      Set<ExplicitOperator> exOps = ((PartiallyObservableProblem) p).getExplicitOperators();
      Set<Operator> ops = new LinkedHashSet<Operator>();
      for (ExplicitOperator exOp : exOps) {
        ops.add(exOp);
      }
      ops.add(explicitGoalOp);
      p.setOperators(ops, true);

      // set new goal condition:
      Map<Integer, Integer> valueMap = new LinkedHashMap<Integer, Integer>();
      valueMap.put(newVariableNames.size() - 1, 1);
      ExplicitCondition exp = new ExplicitCondition(valueMap);
      ((PartiallyObservableProblem) p).setGoal(exp);
    } else if (p instanceof FullyObservableProblem) {
      // FOND:

      // add our new goalVarName variable:
      p.domainSizes.add(2);
      p.variableNames.add(goalVarName);
      p.numStateVars += 1;

      // make sure the variable is initially known:
      ExplicitState initialState =
          (ExplicitState) ((FullyObservableProblem) p).getSingleInitialState();
      Map<Integer, Integer> newVariableValueAssignment =
          new LinkedHashMap<Integer, Integer>(initialState.variableValueAssignment);
      newVariableValueAssignment.put(p.numStateVars - 1, 0);
      /*
       * int[] newInitialValues = new int[p.numStateVars]; for (int var = 0; var < p.numStateVars;
       * var++) { if (var == p.numStateVars - 1) { newInitialValues[var] = 0; } else {
       * newInitialValues[var] = initialState.variableValueAssignment.get(var); } }
       */
      ExplicitState newInitialState = null;
      if (initialState.abstraction != null) {
        newInitialState =
            new ExplicitState(p, newVariableValueAssignment, initialState.abstraction,
                initialState.axiomEvaluator);
      } else {
        newInitialState =
            new ExplicitState(p, newVariableValueAssignment, initialState.axiomEvaluator);
      }
      p.setInitialState(newInitialState);

      // construct effect for the new operator:
      Map<Integer, Integer> emptyValueMap = new LinkedHashMap<Integer, Integer>();
      ExplicitCondition emptyCondition = new ExplicitCondition(emptyValueMap);
      ExplicitEffect newGoalEnablingEffect =
          new ExplicitEffect(emptyCondition, newVariableNames.size() - 1, 1);
      Set<Set<ExplicitEffect>> opEffect = new LinkedHashSet<Set<ExplicitEffect>>();
      Set<ExplicitEffect> opEffectSingleOutcome = new LinkedHashSet<ExplicitEffect>();
      opEffectSingleOutcome.add(newGoalEnablingEffect);
      opEffect.add(opEffectSingleOutcome);

      // construct new operator as explicit operator first
      // note: precondition makes no sense but we are going to override it anyway (after converting
      // it to a symbolic operator)
      ExplicitOperator explicitGoalOp =
          new ExplicitOperator(goalOpName, p.explicitGoal, opEffect,
              new LinkedHashSet<Pair<Integer, Integer>>(), false, 0);

      // add operator to the problem:
      Set<Operator> ops = new LinkedHashSet<Operator>(p.getOperators());
      ops.add(explicitGoalOp);
      p.setOperators(ops, true);

      // set new goal condition:
      Map<Integer, Integer> valueMap = new LinkedHashMap<Integer, Integer>();
      valueMap.put(newVariableNames.size() - 1, 1);
      ExplicitCondition exp = new ExplicitCondition(valueMap);
      ((FullyObservableProblem) p).setGoal(exp);
    } else {
      throw new RuntimeException("unsupported problem type");
    }

    // return name of variable added for replacing the goal condition:
    return newVarIndex;
  }

  public CegarSearch(MyNDPlanner planner, AbstractionType abstractionType,
      RefinementAlgorithm refinementAlgorithm) {
    this.abstractionType = abstractionType;
    this.refinementAlgorithm = refinementAlgorithm;
    this.planner = planner;
    problem = planner.getProblem();
  }

  /**
   * Get the policy's operator for a concrete state. (which is still a belief state for POND) The
   * operator is also still the one as found in abstracted problem.
   */
  public Operator getPolicyOperatorForNonAbstractedState(Policy abstractedPolicy,
      State concreteState) {
    if (concreteState instanceof BeliefState) {
      BeliefState abstractedState = ((BeliefState) concreteState).abstractToPattern(abstraction);
      return abstractedPolicy.getOperator(abstractedState);
    } else if (concreteState instanceof ExplicitState) {
      State abstractedState = ((ExplicitState) concreteState).abstractToPattern(abstraction);
      return abstractedPolicy.getOperator(abstractedState);
    } else {
      throw new RuntimeException("not implemented yet");
    }
  }

  /**
   * Turn a set of variables that are valid in the abstracted problem to the according set of the
   * concrete problem.
   */
  protected Set<Integer> concreteVariableSetFromAbstractedVariableSet(Set<Integer> inputSet,
      Set<Integer> abstractionPattern, int concreteProblemVariableCount) {
    Map<Integer, Integer> transformMap =
        new LinkedHashMap<Integer, Integer>(abstractionPattern.size());
    int realVarOffset = 0;
    for (int var = 0; var < concreteProblemVariableCount; var++) {
      if (abstractionPattern.contains(var)) {
        transformMap.put(var + realVarOffset, var);
      } else {
        realVarOffset -= 1;
      }
    }
    LinkedHashSet<Integer> outputSet = new LinkedHashSet<Integer>();
    for (Integer i : inputSet) {
      outputSet.add(transformMap.get(i));
    }
    return outputSet;
  }

  /**
   * Check if there is an inconsistency in a given abstract state and its policy, compared to all
   * the concrete states it covers. If there is one, return the inconsistent variables found.
   */
  public Set<Integer> getInconsistentVariables(State state, Operator policy) {
    // see if this operator is applicable:
    if (state.isApplicable(policy)) {
      return new HashSet<Integer>();
    }

    // if we reached this spot, the operator isn't applicable.
    // in that case, find a variable for refinement:
    if (policy instanceof SymbolicOperator) {
      SymbolicOperator sop = (SymbolicOperator) policy;
      Set<Integer> variablesMentioned =
          ((PartiallyObservableProblem) abstractedProblem).BDDManager
          .variablesMentionedInFormula(sop.precondition.conditionBDD);
      variablesMentioned.removeAll(abstraction.pattern);
      return variablesMentioned;
    } else if (policy instanceof ExplicitOperator) {
      ExplicitOperator exop = (ExplicitOperator) policy;
      Set<Integer> variablesMentioned =
          new LinkedHashSet<Integer>(exop.precondition.variableValueMap.keySet());
      variablesMentioned.removeAll(abstraction.pattern);
      return variablesMentioned;
    } else {
      throw new RuntimeException("this operator type is not supported for inconsistency analysis");
    }
  }

  protected Operator getConcreteFromAbstractedOperator(Operator operator) {
    String name = operator.getName();
    if (name.endsWith("_abs")) {
      name = name.substring(0, name.length() - "_abs".length());
    }
    return problem.getOriginalOperatorMap().get(name);
  }

  public Result search() {
    // While we ourselves handle the CEGAR abstraction here, we will recursively call the planner
    // itself again.
    // When doing this, the planner should just search regularly and not invoke CEGAR again:
    planner.setCegarSearchAbstraction(AbstractionType.NONE);

    // Get problem and result struct:
    Result result = new Result();

    // Apply the goal modification to problem (single fact representing the goal condition):
    int goalVarIndex = applyGoalModification(problem);

    // Apply the over-estimating abstraction starting with the new single goal variable:
    Set<Integer> variableList = new LinkedHashSet<Integer>();
    variableList.add(goalVarIndex);

    // list of all variables:
    Set<Integer> allVariables = new LinkedHashSet<Integer>();
    for (int var = 0; var < problem.domainSizes.size(); var++) {
      allVariables.add(var);
    }

    // Compute allowed PDB set (only relevant for POND problems):
    Set<Integer> allowedVariableSet;
    if (problem instanceof PartiallyObservableProblem) {
      allowedVariableSet = PatternCollectionSearch.computeAllowedPatternVariablesForPOND(problem);
    } else {
      allowedVariableSet = allVariables;
    }
    Set<Integer> complementaryAllowedVariableSet = new LinkedHashSet<Integer>();
    for (int var = 0; var < problem.domainSizes.size(); var++) {
      if (!allowedVariableSet.contains(var)) {
        complementaryAllowedVariableSet.add(var);
      }
    }

    boolean DEBUG = true;

    // counter-example guided abstraction refinement loop:
    while (true) {
      if (DEBUG) {
        System.out.println("*** CEGAR: new round");
        System.out.println("CEGAR: current abstraction pattern: " + variableList.toString());
      }
      // apply current abstraction level:
      if (problem instanceof PartiallyObservableProblem) {
        abstraction =
            ((PartiallyObservableProblem) problem).abstractToPattern(variableList,
                problem.getGoal(), true);
      } else {
        abstraction = problem.abstractToPattern(variableList);
      }
      abstractedProblem = problem.newProblemFromAbstraction(abstraction);
      abstractedProblem.finishInitializationAndPreprocessing();
      abstractedProblemVariables = variableList;
      // assert(this.abstractedProblem.getSingleInitialState().abstraction != null);
      assert (abstractedProblem.getSingleInitialState().problem == abstractedProblem);

      // System.out.println("CONCRETE:");
      // this.problem.dump();

      // System.out.println("ABSTRACTED:");
      // this.abstractedProblem.dump();

      // the planner should now search on the abstracted problem:
      planner.setProblem(abstractedProblem);

      // search using the abstraction:
      AbstractSearch.Result planFound = planner.runProblemWithoutStats();
      result.timeUsedForPreprocessing += MyNDPlanner.getTimeUsedForPreprocessing();
      result.planFound = planFound;
      if (planFound == AbstractSearch.Result.DISPROVEN) {
        System.out.println("*** CEGAR: no plan found. Problem unsolvable.");
        // due to our over-estimation, we can be sure there is no plan
        return result;
      }
      if (DEBUG) {
        System.out.println("CEGAR: checking for a possible refinement");
      }
      /*
       * plan is solvable: in that case, we need to examine if this is also the case in the original
       * problem
       */
      AbstractSearch search = planner.getSearch();
      if (refinementAlgorithm == RefinementAlgorithm.REFINEMENT_DFS) {
        // REFINEMENT_DFS:
        // This does a depth first search from the concrete initial state along the suggested
        // operator by the _abstraction policy_, and does this until either the full state space was
        // traversed or an operator isn't applicable in a concrete state visited by the search (in
        // which case it is refined).
        State initialState = problem.getSingleInitialState();
        if (DEBUG) {
          // System.out.println("CEGAR: dumping initial state");
          // initialState.dump();
        }

        // stack for DFS search (in concrete non-abstracted problem):
        Stack<State> stateStack = new Stack<State>();
        stateStack.push(initialState);

        // the policy in the abstracted system:
        Policy policy = search.getPolicy();

        // list of concrete states we've come by in the DFS:
        Set<State> seen = new LinkedHashSet<State>();

        System.out.println("CEGAR: starting DFS...");
        // various variables to keep track of what we want to refine:
        boolean planWasRefined = false;
        Set<Integer> variablesToBeRefined = new LinkedHashSet<Integer>();
        Set<Integer> newVariableList = new LinkedHashSet<Integer>();

        // PDB instance for POND which does the valid pattern checks:
        PatternCollectionSearch pdb = null;
        if (problem instanceof PartiallyObservableProblem) {
          pdb = new PatternCollectionSearch(problem);
        }

        // DFS refinement search:
        while (true) {
          State currentState = null;
          try {
            currentState = stateStack.pop();
          } catch (EmptyStackException err) {
          }
          if (currentState == null) {
            if (DEBUG) {
              System.out.println("CEGAR: finished DFS");
            }
            // done searching through state space along policy
            break;
          }
          seen.add(currentState);

          // skip if a goal state:
          if (currentState.isGoalState()) {
            continue;
          }

          // get abstract policy operator:
          Operator op = getPolicyOperatorForNonAbstractedState(policy, currentState);

          // turn into operator of concrete problem:
          Operator concreteOperator = getConcreteFromAbstractedOperator(op);
          assert (concreteOperator != null);

          // check if there is an inconsistency here:
          if (!currentState.isApplicable(concreteOperator)) {
            Set<Integer> newVariablesToBeRefined =
                getInconsistentVariables(currentState, concreteOperator);
            variablesToBeRefined.addAll(newVariablesToBeRefined);
          } else {
            // otherwise apply operator, and throw into queue:
            for (State s : currentState.apply(concreteOperator)) {
              if (!seen.contains(s)) {
                stateStack.push(s);
              }
            }
          }
        }
        
        if (variablesToBeRefined.size() > 0) {
          System.out.println("CEGAR: inconsistencies found: " + variablesToBeRefined.toString());

          if (problem instanceof PartiallyObservableProblem) {
            // compute new pattern from intended refinements:
            newVariableList.addAll(variableList);
            newVariableList.addAll(variablesToBeRefined);

            // reduce to still valid pattern for POND abstraction:
            Set<Integer> reducedNewPattern = pdb.reduceToValidPattern(newVariableList);

            // if new pattern isn't larger, jump to full abstraction:
            // FIXME: would we want to check that the whole old pattern is always contained here?
            if (reducedNewPattern.size() <= variableList.size()) {
              variableList = allVariables;         
            } else {
              variableList = newVariableList;
              newVariableList = new LinkedHashSet<Integer>();
            }
          } else {
            // simply add refinements:
            variableList.addAll(variablesToBeRefined);
          }
          continue;
        }

        // no inconsistencies found! the plan is actually solvable!
        System.out.println("*** CEGAR: no more plan inconsistencies found. Problem is solvable.");
        return result;
      } else {
        throw new RuntimeException("unknown refinement algorithm");
      }
    }
  }
}
