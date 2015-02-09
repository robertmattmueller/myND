package mynd.search.policy;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

import mynd.state.Operator;
import mynd.state.State;

public class WeakPlan extends Policy {
	
	public static class WeakPlanEntry {
		public final State state;
		public final Operator action;
		public final Set<State> unintendedOutcomes;
		public WeakPlanEntry(State state, Operator action) {
			this.state = state;
			this.action = action;
			this.unintendedOutcomes = new HashSet<State>();
		}
	}
	
	public final State reachedGoal;
	public final LinkedList<WeakPlanEntry> entries;
	public final int distanceOffset;
	
	public WeakPlan(State reachedGoal, int distanceOffset) {
		this.reachedGoal = reachedGoal;
		this.entries = new LinkedList<WeakPlanEntry>();
		this.distanceOffset = distanceOffset;
	}
	
	public Policy toPolicy() {
		Policy result = new Policy();
		Iterator<WeakPlanEntry> itr = this.entries.descendingIterator();
		int count = 0;
		while (itr.hasNext()) {
			WeakPlanEntry curr = itr.next();
			result.addEntry(curr.state, curr.action, this.distanceOffset + (++count));
		}
		return result;
	}
	
	public boolean containsEntry(State state) {
		for (WeakPlanEntry e : this.entries) {
			if (e.state.equals(state)) {
				return true;
			}
		}
		return false;
	}
	
	public WeakPlanEntry get(State state) {
		for (WeakPlanEntry e : this.entries) {
			if (e.state.equals(state)) {
				return e;
			}
		}
		return null;
	}
}
