begin_version
3.FOND
end_version
begin_metric
0
end_metric
9
begin_variable
var0
-1
2
Atom completed(o1)
NegatedAtom completed(o1)
end_variable
begin_variable
var1
-1
2
Atom completed(o2)
NegatedAtom completed(o2)
end_variable
begin_variable
var2
-1
2
Atom fault(f1)
NegatedAtom fault(f1)
end_variable
begin_variable
var3
-1
3
Atom faulted-op(o1, f1)
Atom faulted-op(o2, f1)
Atom not-fault(f1)
end_variable
begin_variable
var4
-1
2
Atom last-fault(f1)
NegatedAtom last-fault(f1)
end_variable
begin_variable
var5
-1
2
Atom made()
NegatedAtom made()
end_variable
begin_variable
var6
-1
2
Atom not-completed(o1)
NegatedAtom not-completed(o1)
end_variable
begin_variable
var7
-1
2
Atom not-completed(o2)
NegatedAtom not-completed(o2)
end_variable
begin_variable
var8
-1
2
Atom not-last-fault(f1)
NegatedAtom not-last-fault(f1)
end_variable
5
begin_mutex_group
3
3 0
3 1
3 2
end_mutex_group
begin_mutex_group
2
3 0
6 0
end_mutex_group
begin_mutex_group
2
3 1
7 0
end_mutex_group
begin_mutex_group
2
4 0
3 2
end_mutex_group
begin_mutex_group
2
4 0
3 2
end_mutex_group
begin_state
1
1
1
2
1
1
0
0
0
end_state
begin_goal
1
5 0
end_goal
5
begin_operator
finish 
3
0 0
1 0
8 0
1
1
0 5 -1 0
0
end_operator
begin_operator
perform-operation-1-fault o1
2
3 2
6 0
2
6
0 0 -1 0
0 2 -1 0
0 3 2 0
0 4 -1 0
0 6 0 1
0 8 -1 1
2
0 0 -1 0
0 6 0 1
0
end_operator
begin_operator
perform-operation-1-fault o2
2
3 2
7 0
2
6
0 1 -1 0
0 2 -1 0
0 3 2 1
0 4 -1 0
0 7 0 1
0 8 -1 1
2
0 1 -1 0
0 7 0 1
0
end_operator
begin_operator
repair-fault-1 o1
2
3 0
4 0
1
5
0 0 -1 1
0 3 0 2
0 4 0 1
0 6 -1 0
0 8 -1 0
0
end_operator
begin_operator
repair-fault-1 o2
2
3 1
4 0
1
5
0 1 -1 1
0 3 1 2
0 4 0 1
0 7 -1 0
0 8 -1 0
0
end_operator
0
