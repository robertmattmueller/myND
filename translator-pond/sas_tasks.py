from __future__ import print_function

SAS_FILE_VERSION = "3.POND"


class SASTask:
    def __init__(self, variables, mutexes, init, goal,
                 operators, axioms, metric):
        self.variables = variables
        self.mutexes = mutexes
        self.init = init
        self.goal = goal
        self.operators = sorted(operators, key=lambda op: (op.name, op.prevail, op.pre_post))
        self.axioms = sorted(axioms, key=lambda axiom: (axiom.condition, axiom.effect))
        self.metric = metric
    def output(self, stream):
        print("begin_version", file=stream)
        print(SAS_FILE_VERSION, file=stream)
        print("end_version", file=stream)
        print("begin_metric", file=stream)
        print(int(self.metric), file=stream)
        print("end_metric", file=stream)
        self.variables.output(stream)
        print(len(self.mutexes), file=stream)
        for mutex in self.mutexes:
            mutex.output(stream)
        self.init.output(stream)
        self.goal.output(stream)
        print(len(self.operators), file=stream)
        for op in self.operators:
            op.output(stream)
        print(len(self.axioms), file=stream)
        for axiom in self.axioms:
            axiom.output(stream)
    def get_encoding_size(self):
        task_size = 0
        task_size += self.variables.get_encoding_size()
        for mutex in self.mutexes:
            task_size += mutex.get_encoding_size()
        task_size += self.goal.get_encoding_size()
        for op in self.operators:
            task_size += op.get_encoding_size()
        for axiom in self.axioms:
            task_size += axiom.get_encoding_size()
        return task_size

class SASVariables:
    def __init__(self, ranges, axiom_layers, value_names):
        self.ranges = ranges
        self.axiom_layers = axiom_layers
        self.value_names = value_names
    def dump(self):
        for var, (rang, axiom_layer) in enumerate(zip(self.ranges, self.axiom_layers)):
            if axiom_layer != -1:
                axiom_str = " [axiom layer %d]" % axiom_layer
            else:
                axiom_str = ""
            print("v%d in {%s}%s" % (var, list(range(rang)), axiom_str))
    def output(self, stream):
        print(len(self.ranges), file=stream)
        for var, (rang, axiom_layer, values) in enumerate(zip(
                self.ranges, self.axiom_layers, self.value_names)):
            print("begin_variable", file=stream)
            print("var%d" % var, file=stream)
            print(axiom_layer, file=stream)
            print(rang, file=stream)
            assert rang == len(values), (rang, values)
            for value in values:
                print(value, file=stream)
            print("end_variable", file=stream)
    def get_encoding_size(self):
        # A variable with range k has encoding size k + 1 to also give the
        # variable itself some weight.
        return len(self.ranges) + sum(self.ranges)

class SASMutexGroup:
    def __init__(self, facts):
        self.facts = facts
    def dump(self):
        for var, val in self.facts:
            print("v%d: %d" % (var, val))
    def output(self, stream):
        print("begin_mutex_group", file=stream)
        print(len(self.facts), file=stream)
        for var, val in self.facts:
            print(var, val, file=stream)
        print("end_mutex_group", file=stream)
    def get_encoding_size(self):
        return len(self.facts)

class SASInit:
    def __init__(self, facts, facts_oneof, formulae):
        # Adapted to POND
        self.facts = facts
        self.facts_oneof = facts_oneof
        self.formulae = formulae
    def dump(self):
        print(len(self.facts))
        for var, val in self.facts:
            if val != -1:
                print("v%d: %d" % (var, val))
        # TODO POND
 #       print len(self.facts_oneof)
 #       for var, val, var2, val2 in self.facts_oneof:
 #           print "v%d: %d | v%d: %d" % (var, val, var2, val2)
 #       print len(self.facts_or)
 #       for var, val, var2, val2 in self.facts_or:
 #           print "v%d: %d | v%d: %d" % (var, val, var2, val2)
    def output(self, stream):
        print("begin_state", file=stream)
        print(len(self.facts), file=stream)
        for var, val in self.facts:
            print(var, val, file=stream)
        print(len(self.facts_oneof), file=stream)
        for list in self.facts_oneof:
            print(' '.join(['%d %d' % x for x in list]), file=stream)
        print(len(self.formulae), file=stream)
        for list in self.formulae:
            #print(' '.join(['%d %d' % x for x in list]), file=stream)
            l = [str(x).replace(' ','').replace(',',' ') for x in list]
            print(''.join(l), file=stream)

        print("end_state", file=stream)

class SASGoal:
    def __init__(self, pairs):
        self.pairs = sorted(pairs)
    def dump(self):
        for var, val in self.pairs:
            print("v%d: %d" % (var, val))
    def output(self, stream):
        print("begin_goal", file=stream)
        print(len(self.pairs), file=stream)
        for var, val in self.pairs:
            print(var, val, file=stream)
        print("end_goal", file=stream)
    def get_encoding_size(self):
        return len(self.pairs)

class SASOperator:
    def __init__(self, name, prevail, pre_post, cost, observation):
        self.name = name
        self.prevail = sorted(prevail)
        self.pre_post = sorted(pre_post)
        self.cost = cost
        self.observation = observation
    def dump(self):
        print(self.name)
        print("Prevail:")
        print(self.prevail)
        for nondet_choice in self.pre_post:
            print("nondet choice:")
            print(nondet_choice)
        print("Observation:")
        print(self.observation)
        print("Cost:")
        print(self.cost)
    def output(self, stream):
        print("begin_operator", file=stream)
        print(self.name[1:-1], file=stream)
        print(len(self.prevail), file=stream)
        for var, val in self.prevail:
            print(var, val, file=stream)
        print(len(self.pre_post), file=stream)
        for nondet_choice in self.pre_post:
            print(len(nondet_choice), file=stream)
            for var, pre, post, cond in nondet_choice:
                print(len(cond), end=' ', file=stream)
                for cvar, cval in cond:
                    print(cvar, cval, end=' ', file=stream)
                print(var, pre, post, file=stream)
        print(self.cost, file=stream)
        print(len(self.observation), file=stream)
        for var, val in self.observation:
            print(var, val, file=stream)
        print("end_operator", file=stream)
    def get_encoding_size(self):
        size = 1 + len(self.prevail)
        for nondet_choice in self.pre_post:
            for var, pre, post, cond in nondet_choice:
                size += 1 + len(cond)
                if pre != -1:
                    size += 1
        return size
    # FOND/POND
    def get_preconditions(self):
        preconditions = self.prevail
        for pp in self.pre_post:
            if pp[1] != -1:
                preconditions.append((pp[0], pp[1]))
        return sorted(preconditions)

class SASAxiom:
    def __init__(self, condition, effect):
        self.condition = sorted(condition)
        self.effect = effect
        assert self.effect[1] in (0, 1)

        for _, val in condition:
            assert val >= 0, condition
    def dump(self):
        print("Condition:")
        for var, val in self.condition:
            print("  v%d: %d" % (var, val))
        print("Effect:")
        var, val = self.effect
        print("  v%d: %d" % (var, val))
    def output(self, stream):
        print("begin_rule", file=stream)
        print(len(self.condition), file=stream)
        for var, val in self.condition:
            print(var, val, file=stream)
        var, val = self.effect
        print(var, 1 - val, val, file=stream)
        print("end_rule", file=stream)
    def get_encoding_size(self):
        return 1 + len(self.condition)
