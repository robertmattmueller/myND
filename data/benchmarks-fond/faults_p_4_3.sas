begin_version
3.FOND
end_version
begin_metric
0
end_metric
21
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
Atom fault(f1)
NegatedAtom fault(f1)
end_variable
begin_variable
var5
-1
2
Atom fault(f2)
NegatedAtom fault(f2)
end_variable
begin_variable
var6
-1
2
Atom fault(f3)
NegatedAtom fault(f3)
end_variable
begin_variable
var7
-1
5
Atom faulted-op(o1, f1)
Atom faulted-op(o2, f1)
Atom faulted-op(o3, f1)
Atom faulted-op(o4, f1)
Atom not-fault(f1)
end_variable
begin_variable
var8
-1
5
Atom faulted-op(o1, f2)
Atom faulted-op(o2, f2)
Atom faulted-op(o3, f2)
Atom faulted-op(o4, f2)
Atom not-fault(f2)
end_variable
begin_variable
var9
-1
5
Atom faulted-op(o1, f3)
Atom faulted-op(o2, f3)
Atom faulted-op(o3, f3)
Atom faulted-op(o4, f3)
Atom not-fault(f3)
end_variable
begin_variable
var10
-1
2
Atom last-fault(f1)
NegatedAtom last-fault(f1)
end_variable
begin_variable
var11
-1
2
Atom last-fault(f2)
NegatedAtom last-fault(f2)
end_variable
begin_variable
var12
-1
2
Atom last-fault(f3)
NegatedAtom last-fault(f3)
end_variable
begin_variable
var13
-1
2
Atom made()
NegatedAtom made()
end_variable
begin_variable
var14
-1
2
Atom not-completed(o1)
NegatedAtom not-completed(o1)
end_variable
begin_variable
var15
-1
2
Atom not-completed(o2)
NegatedAtom not-completed(o2)
end_variable
begin_variable
var16
-1
2
Atom not-completed(o3)
NegatedAtom not-completed(o3)
end_variable
begin_variable
var17
-1
2
Atom not-completed(o4)
NegatedAtom not-completed(o4)
end_variable
begin_variable
var18
-1
2
Atom not-last-fault(f1)
NegatedAtom not-last-fault(f1)
end_variable
begin_variable
var19
-1
2
Atom not-last-fault(f2)
NegatedAtom not-last-fault(f2)
end_variable
begin_variable
var20
-1
2
Atom not-last-fault(f3)
NegatedAtom not-last-fault(f3)
end_variable
7
begin_mutex_group
4
7 0
8 0
9 0
14 0
end_mutex_group
begin_mutex_group
5
7 0
7 1
7 2
7 3
7 4
end_mutex_group
begin_mutex_group
5
8 0
8 1
8 2
8 3
8 4
end_mutex_group
begin_mutex_group
5
9 0
9 1
9 2
9 3
9 4
end_mutex_group
begin_mutex_group
4
7 1
8 1
9 1
15 0
end_mutex_group
begin_mutex_group
4
7 2
8 2
9 2
16 0
end_mutex_group
begin_mutex_group
4
7 3
8 3
9 3
17 0
end_mutex_group
begin_state
1
1
1
1
1
1
1
4
4
4
1
1
1
1
0
0
0
0
0
0
0
end_state
begin_goal
1
13 0
end_goal
25
begin_operator
finish 
5
0 0
1 0
2 0
3 0
20 0
1
1
0 13 -1 0
0
end_operator
begin_operator
perform-operation-1-fault o1
4
7 4
8 4
9 4
14 0
2
6
0 0 -1 0
0 4 -1 0
0 7 4 0
0 10 -1 0
0 14 0 1
0 18 -1 1
2
0 0 -1 0
0 14 0 1
0
end_operator
begin_operator
perform-operation-1-fault o2
4
7 4
8 4
9 4
15 0
2
6
0 1 -1 0
0 4 -1 0
0 7 4 1
0 10 -1 0
0 15 0 1
0 18 -1 1
2
0 1 -1 0
0 15 0 1
0
end_operator
begin_operator
perform-operation-1-fault o3
4
7 4
8 4
9 4
16 0
2
6
0 2 -1 0
0 4 -1 0
0 7 4 2
0 10 -1 0
0 16 0 1
0 18 -1 1
2
0 2 -1 0
0 16 0 1
0
end_operator
begin_operator
perform-operation-1-fault o4
4
7 4
8 4
9 4
17 0
2
6
0 3 -1 0
0 4 -1 0
0 7 4 3
0 10 -1 0
0 17 0 1
0 18 -1 1
2
0 3 -1 0
0 17 0 1
0
end_operator
begin_operator
perform-operation-2-fault o1
4
4 0
8 4
9 4
14 0
2
6
0 0 -1 0
0 5 -1 0
0 8 4 0
0 11 -1 0
0 14 0 1
0 19 -1 1
2
0 0 -1 0
0 14 0 1
0
end_operator
begin_operator
perform-operation-2-fault o2
4
4 0
8 4
9 4
15 0
2
6
0 1 -1 0
0 5 -1 0
0 8 4 1
0 11 -1 0
0 15 0 1
0 19 -1 1
2
0 1 -1 0
0 15 0 1
0
end_operator
begin_operator
perform-operation-2-fault o3
4
4 0
8 4
9 4
16 0
2
6
0 2 -1 0
0 5 -1 0
0 8 4 2
0 11 -1 0
0 16 0 1
0 19 -1 1
2
0 2 -1 0
0 16 0 1
0
end_operator
begin_operator
perform-operation-2-fault o4
4
4 0
8 4
9 4
17 0
2
6
0 3 -1 0
0 5 -1 0
0 8 4 3
0 11 -1 0
0 17 0 1
0 19 -1 1
2
0 3 -1 0
0 17 0 1
0
end_operator
begin_operator
perform-operation-3-fault o1
4
4 0
5 0
9 4
14 0
2
6
0 0 -1 0
0 6 -1 0
0 9 4 0
0 12 -1 0
0 14 0 1
0 20 -1 1
2
0 0 -1 0
0 14 0 1
0
end_operator
begin_operator
perform-operation-3-fault o2
4
4 0
5 0
9 4
15 0
2
6
0 1 -1 0
0 6 -1 0
0 9 4 1
0 12 -1 0
0 15 0 1
0 20 -1 1
2
0 1 -1 0
0 15 0 1
0
end_operator
begin_operator
perform-operation-3-fault o3
4
4 0
5 0
9 4
16 0
2
6
0 2 -1 0
0 6 -1 0
0 9 4 2
0 12 -1 0
0 16 0 1
0 20 -1 1
2
0 2 -1 0
0 16 0 1
0
end_operator
begin_operator
perform-operation-3-fault o4
4
4 0
5 0
9 4
17 0
2
6
0 3 -1 0
0 6 -1 0
0 9 4 3
0 12 -1 0
0 17 0 1
0 20 -1 1
2
0 3 -1 0
0 17 0 1
0
end_operator
begin_operator
repair-fault-1 o1
2
7 0
10 0
1
5
0 0 -1 1
0 7 0 4
0 10 0 1
0 14 -1 0
0 18 -1 0
0
end_operator
begin_operator
repair-fault-1 o2
2
7 1
10 0
1
5
0 1 -1 1
0 7 1 4
0 10 0 1
0 15 -1 0
0 18 -1 0
0
end_operator
begin_operator
repair-fault-1 o3
2
7 2
10 0
1
5
0 2 -1 1
0 7 2 4
0 10 0 1
0 16 -1 0
0 18 -1 0
0
end_operator
begin_operator
repair-fault-1 o4
2
7 3
10 0
1
5
0 3 -1 1
0 7 3 4
0 10 0 1
0 17 -1 0
0 18 -1 0
0
end_operator
begin_operator
repair-fault-2 o1
2
8 0
11 0
1
7
0 0 -1 1
0 8 0 4
0 10 -1 0
0 11 0 1
0 14 -1 0
0 18 -1 1
0 19 -1 0
0
end_operator
begin_operator
repair-fault-2 o2
2
8 1
11 0
1
7
0 1 -1 1
0 8 1 4
0 10 -1 0
0 11 0 1
0 15 -1 0
0 18 -1 1
0 19 -1 0
0
end_operator
begin_operator
repair-fault-2 o3
2
8 2
11 0
1
7
0 2 -1 1
0 8 2 4
0 10 -1 0
0 11 0 1
0 16 -1 0
0 18 -1 1
0 19 -1 0
0
end_operator
begin_operator
repair-fault-2 o4
2
8 3
11 0
1
7
0 3 -1 1
0 8 3 4
0 10 -1 0
0 11 0 1
0 17 -1 0
0 18 -1 1
0 19 -1 0
0
end_operator
begin_operator
repair-fault-3 o1
2
9 0
12 0
1
7
0 0 -1 1
0 9 0 4
0 11 -1 0
0 12 0 1
0 14 -1 0
0 19 -1 1
0 20 -1 0
0
end_operator
begin_operator
repair-fault-3 o2
2
9 1
12 0
1
7
0 1 -1 1
0 9 1 4
0 11 -1 0
0 12 0 1
0 15 -1 0
0 19 -1 1
0 20 -1 0
0
end_operator
begin_operator
repair-fault-3 o3
2
9 2
12 0
1
7
0 2 -1 1
0 9 2 4
0 11 -1 0
0 12 0 1
0 16 -1 0
0 19 -1 1
0 20 -1 0
0
end_operator
begin_operator
repair-fault-3 o4
2
9 3
12 0
1
7
0 3 -1 1
0 9 3 4
0 11 -1 0
0 12 0 1
0 17 -1 0
0 19 -1 1
0 20 -1 0
0
end_operator
0
