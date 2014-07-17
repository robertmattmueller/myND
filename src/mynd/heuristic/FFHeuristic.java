package mynd.heuristic;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import mynd.Global;
import mynd.explicit.ExplicitCondition;
import mynd.explicit.ExplicitOperator;
import mynd.explicit.ExplicitState;
import mynd.explicit.ExplicitOperator.OperatorRule;
import mynd.state.Operator;
import mynd.state.State;
import mynd.symbolic.BeliefState;
import mynd.util.HeuristicValueAggregation;
import mynd.util.Pair;


/**
 * Relaxed planning graph heuristic as implemented in the FF planning system by
 * J. Hoffmann.
 * 
 * @author Robert Mattmueller
 */
public class FFHeuristic extends Heuristic {

    /**
     * Cost of a goal rule (zero)
     */
    private static final int        GOAL_RULE_COST = 0;

    /**
     * List of all rules
     */
    List<FFRule>                    rules;

    /**
     * Mapping from variable indices to mappings from value indices to FF
     * propositions
     */
    List<List<FFProposition>>       variableValueToProposition;

    /**
     * Queue containing all reachable FF propositions.
     */
    FFReachableQueue<FFProposition> reachableQueue;

    /**
     * FFProposition corresponding to goal. This is either the auxiliary
     * variable corresponding to the conjunction of the goal atoms or the
     * variable corresponding to the root node of BDD.
     */
    FFProposition                   goalProp       = null;

    /**
     * Create a new FF heuristic evaluator for a given problem.
     * 
     * @param problem
     *            The problem for which to compute heuristic estimates
     */
    public FFHeuristic() {
    	super(true); // FF heuristic supports axioms.
        reachableQueue = new FFReachableQueue<FFProposition>();
        buildPropositions();
        buildGoalPropositions();
        buildRules();
        buildGoalRules(Global.problem.explicitGoal);
    }

    /**
     * Add a rule with given head, body, and base cost to the rule base.
     * 
     * @param head
     *            Head of the rule
     * @param opBody
     *            Body of the rule
     * @param cost
     *            Base cost of the rule
     */
    private void addRule(FFProposition head, Collection<Pair<Integer, Integer>> opBody, int cost) {
        List<FFProposition> body = new ArrayList<FFProposition>();
        for (Pair<Integer, Integer> opCondition : opBody) {
            body.add(getProposition(opCondition));
        }
        addRule(head, body, cost);
    }

    /**
     * Add a rule with given head, body, and base cost to the rule base.
     * 
     * @param head
     *            Head of the rule
     * @param body
     *            Body of the rule
     * @param cost
     *            Base cost of the rule
     */
    private void addRule(FFProposition head, List<FFProposition> body, int cost) {
        FFRule rule = new FFRule(body, head, cost);
        rules.add(rule);
        for (FFProposition condition : body) {
            condition.preconditionOf.add(rule);
        }
    }

    /**
     * Add a rule with given head, body, and base cost to the rule base.
     * 
     * @param opHead
     *            Head of the rule
     * @param opBody
     *            Body of the rule
     * @param cost
     *            Base cost of the rule
     */
    private void addRule(Pair<Integer, Integer> opHead, Collection<Pair<Integer, Integer>> opBody, int cost) {
        FFProposition head = getProposition(opHead);
        addRule(head, opBody, cost);
    }

    /**
     * Build goal propositions.
     * 
     * @param problem
     *            The problem
     */
    private void buildGoalPropositions() {
    	List<FFProposition> goalPropositions = new ArrayList<FFProposition>();
    	goalProp = new FFProposition(Global.problem.numStateVars, 1);
    	goalPropositions.add(goalProp);
    	variableValueToProposition.add(goalPropositions);
    }

    /**
     * Build goal rules, i.e., rules stating when a goal proposition has been
     * reached.
     * 
     * @param goals
     *            Goal conditions
     */
    private void buildGoalRules(ExplicitCondition goal) {
        List<Pair<Integer, Integer>> opBody = goal.getVariableValueAssignmentAsPairs();
        addRule(goalProp, opBody, GOAL_RULE_COST);
    }

    /**
     * Build the FF propositions for the given problem.
     * 
     * @param problem
     *            The problem
     */
    private void buildPropositions() {
        variableValueToProposition = new ArrayList<List<FFProposition>>();
        for (int var = 0; var < Global.problem.numStateVars; var++) {
            List<FFProposition> propositions = new ArrayList<FFProposition>();
            int valueCount = Global.problem.domainSizes.get(var);
            for (int val = 0; val < valueCount; val++) {
                propositions.add(new FFProposition(var, val));
            }
            variableValueToProposition.add(propositions);
        }
    }

    /**
     * Build the rules for the given problem.
     * 
     * @param problem
     *            The problem
     */
    private void buildRules() {
        rules = new LinkedList<FFRule>();
        // Add rules for causative operators.
        for (Operator op : Global.problem.getOperators()) {
        	if (op.isCausative) {
        		buildRulesForOperator(op.getExplicitOperator());
        	}
        }
        // Add rules for the axioms.
        for (OperatorRule axiom : Global.problem.axioms) {
        	addRule(axiom.head, axiom.body, 0);
        }
        simplify();
    }

    /**
     * Build the rules corresponding to the given operator. E.g., an operator
     * <tt>(pre,add,del)</tt> with <tt>pre = {1:0, 3:1}</tt>,
     * <tt>add = {2:1, 3:2}</tt>, and <tt>del = {4:0, 3:1}</tt>, which has the
     * relaxed operator <tt>({1:0, 3:1}, {2:1, 3:2}, {})</tt>, yields the two
     * rules <tt>2:1 :- 1:0, 3:1</tt> and <tt>3:2 :- 1:0, 3:1</tt>.
     * 
     * @param op
     *            Operator for which to construct the rules.
     */
    private void buildRulesForOperator(ExplicitOperator op) {
        Collection<OperatorRule> opRules = op.getRules();
        for (OperatorRule opRule : opRules) {
            addRule(opRule.head, opRule.body, op.getCost());
        }
    }

    /**
     * Collect the rules required to reach a given effect proposition. The
     * collected rules are accumulated in the set <tt>collectedRules</tt>.
     * 
     * @param effect
     *            Proposition from which to chain backward
     * @param collectedRules
     *            Accumulator holding all rules collected so far
     */
    private void collectRequiredRules(FFProposition effect, Set<FFRule> collectedRules) {
        FFRule newRule = effect.reachedBy;
        if (newRule != null) {
            collectedRules.add(newRule);
            for (FFProposition precondition : newRule.body) {
                collectRequiredRules(precondition, collectedRules);
            }
        }
    }

    /**
     * Explore the relaxed planning graph starting with the propositions true in
     * the current state until either the goal is reached or the planning graph
     * has levelled off.
     * 
     * @return True iff there is a goal condition for which all propositions
     *         have been reached.
     */
    private boolean explore() {
        for (int queuePos = 0; queuePos < reachableQueue.size(); queuePos++) {
            FFProposition prop = reachableQueue.get(queuePos);

            if (prop.equals(goalProp)) {
                return true;
            }

            for (FFRule rule : prop.preconditionOf) {
                rule.unsatisfiedPreconditions--;
                assert rule.unsatisfiedPreconditions >= 0;
                if (rule.unsatisfiedPreconditions == 0) {
                    triggerRule(rule);
                }
            }
        }

        return false;
    }

    /**
     * Extract the value of the FF heuristic from the relaxed planning graph by
     * performing a backward sweep from the reached goal proposition. If there
     * was more than one goal condition, the extraction starts with the first
     * goal condition (= conjunction of goal propositions) reached.
     * 
     * @return The value of the FF heuristic extracted from the relaxed planning
     *         graph
     */
    private int extractFFValue() {
        Set<FFRule> requiredRules = new LinkedHashSet<FFRule>();

        FFProposition goalProposition = goalProp;

        assert goalProposition != null;
        if (goalProposition == null) {
            System.err.println("Error in FFHeuristic.extractFFValue: none of the goal monomials has been reached yet.");
            System.exit(-1);
        }

        collectRequiredRules(goalProposition, requiredRules);
        assert requiredRules.size() >= 1;
        int cost = 0;
        for (FFRule rule : requiredRules) {
            cost += rule.baseCost;
        }
        return cost;
    }

    /**
     * Compute the FF heuristic estimate of a given state.
     * 
     * @param state
     *            The state for which to compute the heuristic estimate
     * @return The evaluation of the given state, i.e., the length of a relaxed
     *         plan. <tt>FFHeuristic.INFINITE_HEURISTIC</tt> indicates that the
     *         relaxed planning graph exploration has levelled off without
     *         reaching all the goals.
     */
    public int getFFHeuristic(ExplicitState state) {
        assert reachableQueue.isEmpty();
        initializePropositions(state);
        initializeRules();

        boolean solvable = explore();
        reachableQueue.clear();

        int result = solvable ? extractFFValue() : Integer.MAX_VALUE;
        return result;
    }

    /**
     * Get heuristic value for given state.
     * 
     * @param state state to be evaluated by heuristic
     * @return heuristic value for given state
     */
    @Override
    public double getHeuristic(State state) {
    	if (state instanceof ExplicitState)
    		return getFFHeuristic((ExplicitState) state);
    	
    	// State is a belief state. 
    	switch(Heuristic.heuristicStrategy) {
		case ADD:
			return HeuristicValueAggregation.add((((BeliefState) state).getRandomExplicitWorldStates(numberOfWorldStatesToBeSampled)), this);
		case AVERAGE:
			return HeuristicValueAggregation.average(((BeliefState) state).getRandomExplicitWorldStates(numberOfWorldStatesToBeSampled), this);
		case MAX:
			return HeuristicValueAggregation.maximize(((BeliefState) state).getRandomExplicitWorldStates(numberOfWorldStatesToBeSampled), this);
		default:
			assert false;
			return -1;
    	}
    }

    /**
     * Get the FF proposition corresponding to a given variable-value pair.
     * 
     * @param variable
     *            Variable
     * @param value
     *            Value
     * @return The FF proposition corresponding to the given variable-value pair
     */
    private FFProposition getProposition(int variable, int value) {
        return variableValueToProposition.get(variable).get(value);
    }

    /**
     * Get the FF proposition corresponding to a given variable-value pair.
     * 
     * @param pair
     *            Variable-value pair
     * @return The FF proposition corresponding to the given variable-value pair
     */
    private FFProposition getProposition(Pair<Integer, Integer> pair) {
        return getProposition(pair.first, pair.second);
    }

    /**
     * Initialize the propositions and mark those as reached which are true in
     * the current state. Put them into the queue of reachable propositions.
     * 
     * @param state
     *            Current state
     */
    private void initializePropositions(ExplicitState state) {
        for (int var : state.variableValueAssignment.keySet()) {
            int value = state.variableValueAssignment.get(var);
            assert value >= 0;
            for (FFProposition prop : variableValueToProposition.get(var)) {
            	//System.out.println(prop);
                prop.reachedBy = null;
                prop.reachCost = FFProposition.INFINITE_REACH_COST;
                //System.out.println(prop.reachCost);
            }
            FFProposition currentProp = getProposition(var, value);
            // System.out.println("currentProp: " + currentProp);
            currentProp.reachCost = 0;
            
            if (!reachableQueue.contains(currentProp)) {
                reachableQueue.add(currentProp);
            }
        }
        assert goalProp != null;
        goalProp.reachedBy = null;
        goalProp.reachCost = FFProposition.INFINITE_REACH_COST;
    }

    /**
     * Initialize rules by setting their unsatisfied precondition counts to the
     * respective numbers of preconditions, and trigger rules with empty bodies.
     */
    private void initializeRules() {
        for (FFRule rule : rules) {
            rule.unsatisfiedPreconditions = rule.body.size();
            if (rule.unsatisfiedPreconditions == 0) {
                triggerRule(rule);
            }
        }
    }

    /**
     * Simplify the proposition and rule sets.
     */
    private void simplify() {
        // TODO: implement this
    }

    /**
     * Trigger a rule and mark its effect/head proposition as reached and add it
     * to the queue of reached propositions, unless it has already been reached
     * before. Set the cost of reaching the proposition.
     * 
     * @param rule
     *            Rule to be triggered.
     */
    private void triggerRule(FFRule rule) {
        FFProposition effect = rule.head;
        if (effect.reachCost == FFProposition.INFINITE_REACH_COST) {
            effect.reachedBy = rule;
            int cost = rule.baseCost;
            
            for (FFProposition condition : rule.body) {  	
                //assert condition.reachCost >= 0; // TODO [issue #24] @Robert: Handling of costs in FF.
                cost += condition.reachCost;
            }
            effect.reachCost = cost;
        
            reachableQueue.add(effect);
        }
    }

}

/**
 * A proposition, i.e., a variable-value pair, together with a list of FF rules
 * in whose precondition it occurs, the rule by which it was reached (initially
 * <tt>null</tt>) and to cost to reach it.
 * 
 * @author Robert Mattmueller
 */
class FFProposition {
	
    /**
     * Indicates invalid reachability cost.
     */
    public static final int INVALID_REACH_COST  = -2;

    /**
     * Indicates infinite reachability cost.
     */
    public static final int INFINITE_REACH_COST = -1;

    /**
     * The list of FF rules in whose body this proposition occurs.
     */
    List<FFRule>            preconditionOf;

    /**
     * The FF rule by which this proposition was reached.
     */
    FFRule                  reachedBy;

    /**
     * The cost to reach this proposition.
     */
    int                     reachCost;

    /**
     * Variable represented by the variable-value pair of this proposition.
     */
    int                     var;

    /**
     * Value represented by the variable-value pair of this proposition.
     */
    int                     value;

    /**
     * Creates an FF proposition for a given variable-value pair.
     * 
     * @param var
     *            Variable
     * @param value
     *            Value
     */
    public FFProposition(int var, int value) {
        preconditionOf = new LinkedList<FFRule>();
        reachedBy = null;
        this.var = var;
        this.value = value;
        reachCost = INVALID_REACH_COST;
    }

    @Override
    public String toString() {
        return var + ":" + value;
    }
}

/**
 * Queue containing all reached propositions. Propositions are processed in the
 * order in which they were inserted (= reached).
 * 
 * Additional set representation for fast membership test
 */
class FFReachableQueue<E> {

    /**
     * Underlying list representation
     */
    private List<E> list;

    /**
     * Underlying set representation (for fast membership test)
     */
    private Set<E>  set;

    /**
     * Creates a new empty reachability queue.
     */
    public FFReachableQueue() {
        list = new ArrayList<E>();
        set = new LinkedHashSet<E>();
    }

    /**
     * Add an element to the end of this queue.
     * 
     * @param e
     *            Element
     * @return True iff <tt>e</tt> was successfully added to this queue.
     */
    public boolean add(E e) {
        boolean b1 = list.add(e);
        boolean b2 = set.add(e);
        assert b1 == b2; // TODO [issue #24] @Robert: Handling of costs in FF.
        if (b1 != b2) {
            System.err.println("ERROR in FFReachableQueue.add(): different results of adding to list and to set.");
            System.exit(-1);
        }
        return b1 && b2;
    }

    /**
     * Clear this queue.
     */
    public void clear() {
        list.clear();
        set.clear();
    }

    /**
     * Membership test
     * 
     * @param e
     *            Element
     * @return True iff <tt>e</tt> is contained in this queue.
     */
    public boolean contains(E e) {
        return set.contains(e);
    }

    /**
     * Get the element at a specified position in this queue.
     * 
     * @param index
     *            The position from which to retrieve the element.
     * @return The element at position <tt>index</tt> in this queue.
     */
    public E get(int index) {
        return list.get(index);
    }

    /**
     * Test this queue for emptyness.
     * 
     * @return True iff this queue is empty.
     */
    public boolean isEmpty() {
        boolean b1 = list.isEmpty();
        boolean b2 = set.isEmpty();
        if (b1 != b2) {
            System.err.println("ERROR in FFReachableQueue.isEmpty(): different results for list and set.");
            System.exit(-1);
        }
        return b1;
    }

    /**
     * Get the number of elements held in this queue.
     * 
     * @return The number of elements in this queue
     */
    public int size() {
        int n1 = list.size();
        int n2 = set.size();
        if (n1 != n2) {
            System.err.println("ERROR in FFReachableQueue.size(): different results for list and set.");
            System.exit(-1);
        }
        return n1;
    }
}

/**
 * An FF rule is a rule (head :- body) where the body is the precondition of an
 * operator and the head is one of the operator's add effects.
 * 
 * @author Robert Mattmueller
 */
class FFRule {
    
    /**
     * Indicates that the counter of unsatisfied preconditions of a rule has not
     * yet been initialized.
     */
    public static final int   INVALID_PRECONDITION_COUNT = -1;

    /**
     * Preconditions / body of this rule.
     */
    Collection<FFProposition> body;

    /**
     * Effect / head of this rule.
     */
    FFProposition             head;

    /**
     * Number of preconditions of this rule which are still unsatisfied. This
     * number is decreased during the exploration of the relaxed planning graph
     * until it drops to zero und this rule triggers.
     */
    int                       unsatisfiedPreconditions;

    /**
     * Base cost of this rule.
     */
    int                       baseCost;

    /**
     * Creates a new FF rule with a given body, head, and base cost.
     * 
     * @param body
     *            Body of this rule
     * @param head
     *            Head of this rule
     * @param baseCost
     *            Base cost of this rule
     */
    public FFRule(Collection<FFProposition> body, FFProposition head, int baseCost) {
        this.body = body;
        this.head = head;
        unsatisfiedPreconditions = INVALID_PRECONDITION_COUNT;
        this.baseCost = baseCost;
    }

//    /**
//     * Get the body of this rule.
//     */
//    @Override
//    public Collection<FFProposition> getBody() {
//        return body;
//    }
//
//    /**
//     * Get the head of this rule.
//     */
//    @Override
//    public FFProposition getHead() {
//        return head;
//    }

    @Override
    public String toString() {
        return "[FFRule] " + head + " :- " + body;
    }
}
