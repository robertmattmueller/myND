begin_version
3.FOND
end_version
begin_metric
0
end_metric
15
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
Atom completed(o3)
NegatedAtom completed(o3)
end_variable
begin_variable
var3
-1
2
Atom completed(o4)
NegatedAtom completed(o4)
end_variable
begin_variable
var4
-1
2
Atom completed(o5)
NegatedAtom completed(o5)
end_variable
begin_variable
var5
-1
2
Atom fault(f1)
NegatedAtom fault(f1)
end_variable
begin_variable
var6
-1
6
Atom faulted-op(o1, f1)
Atom faulted-op(o2, f1)
Atom faulted-op(o3, f1)
Atom faulted-op(o4, f1)
Atom faulted-op(o5, f1)
Atom not-fault(f1)
end_variable
begin_variable
var7
-1
2
Atom last-fault(f1)
NegatedAtom last-fault(f1)
end_variable
begin_variable
var8
-1
2
Atom made()
NegatedAtom made()
end_variable
begin_variable
var9
-1
2
Atom not-completed(o1)
NegatedAtom not-completed(o1)
end_variable
begin_variable
var10
-1
2
Atom not-completed(o2)
NegatedAtom not-completed(o2)
end_variable
begin_variable
var11
-1
2
Atom not-completed(o3)
NegatedAtom not-completed(o3)
end_variable
begin_variable
var12
-1
2
Atom not-completed(o4)
NegatedAtom not-completed(o4)
end_variable
begin_variable
var13
-1
2
Atom not-completed(o5)
NegatedAtom not-completed(o5)
end_variable
begin_variable
var14
-1
2
Atom not-last-fault(f1)
NegatedAtom not-last-fault(f1)
end_variable
8
begin_mutex_group
6
6 0
6 1
6 2
6 3
6 4
6 5
end_mutex_group
begin_mutex_group
2
6 0
9 0
end_mutex_group
begin_mutex_group
2
6 1
10 0
end_mutex_group
begin_mutex_group
2
6 2
11 0
end_mutex_group
begin_mutex_group
2
6 3
12 0
end_mutex_group
begin_mutex_group
2
6 4
13 0
end_mutex_group
begin_mutex_group
2
7 0
6 5
end_mutex_group
begin_mutex_group
2
7 0
6 5
end_mutex_group
begin_state
1
1
1
1
1
1
5
1
1
0
0
0
0
0
0
end_state
begin_goal
1
8 0
end_goal
11
begin_operator
finish 
6
0 0
1 0
2 0
3 0
4 0
14 0
1
1
0 8 -1 0
0
end_operator
begin_operator
perform-operation-1-fault o1
2
6 5
9 0
2
6
0 0 -1 0
0 5 -1 0
0 6 5 0
0 7 -1 0
0 9 0 1
0 14 -1 1
2
0 0 -1 0
0 9 0 1
0
end_operator
begin_operator
perform-operation-1-fault o2
2
6 5
10 0
2
6
0 1 -1 0
0 5 -1 0
0 6 5 1
0 7 -1 0
0 10 0 1
0 14 -1 1
2
0 1 -1 0
0 10 0 1
0
end_operator
begin_operator
perform-operation-1-fault o3
2
6 5
11 0
2
6
0 2 -1 0
0 5 -1 0
0 6 5 2
0 7 -1 0
0 11 0 1
0 14 -1 1
2
0 2 -1 0
0 11 0 1
0
end_operator
begin_operator
perform-operation-1-fault o4
2
6 5
12 0
2
6
0 3 -1 0
0 5 -1 0
0 6 5 3
0 7 -1 0
0 12 0 1
0 14 -1 1
2
0 3 -1 0
0 12 0 1
0
end_operator
begin_operator
perform-operation-1-fault o5
2
6 5
13 0
2
6
0 4 -1 0
0 5 -1 0
0 6 5 4
0 7 -1 0
0 13 0 1
0 14 -1 1
2
0 4 -1 0
0 13 0 1
0
end_operator
begin_operator
repair-fault-1 o1
2
6 0
7 0
1
5
0 0 -1 1
0 6 0 5
0 7 0 1
0 9 -1 0
0 14 -1 0
0
end_operator
begin_operator
repair-fault-1 o2
2
6 1
7 0
1
5
0 1 -1 1
0 6 1 5
0 7 0 1
0 10 -1 0
0 14 -1 0
0
end_operator
begin_operator
repair-fault-1 o3
2
6 2
7 0
1
5
0 2 -1 1
0 6 2 5
0 7 0 1
0 11 -1 0
0 14 -1 0
0
end_operator
begin_operator
repair-fault-1 o4
2
6 3
7 0
1
5
0 3 -1 1
0 6 3 5
0 7 0 1
0 12 -1 0
0 14 -1 0
0
end_operator
begin_operator
repair-fault-1 o5
2
6 4
7 0
1
5
0 4 -1 1
0 6 4 5
0 7 0 1
0 13 -1 0
0 14 -1 0
0
end_operator
0
