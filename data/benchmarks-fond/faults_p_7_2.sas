begin_version
3.FOND
end_version
begin_metric
0
end_metric
23
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
Atom completed(o6)
NegatedAtom completed(o6)
end_variable
begin_variable
var6
-1
2
Atom completed(o7)
NegatedAtom completed(o7)
end_variable
begin_variable
var7
-1
2
Atom fault(f1)
NegatedAtom fault(f1)
end_variable
begin_variable
var8
-1
2
Atom fault(f2)
NegatedAtom fault(f2)
end_variable
begin_variable
var9
-1
8
Atom faulted-op(o1, f1)
Atom faulted-op(o2, f1)
Atom faulted-op(o3, f1)
Atom faulted-op(o4, f1)
Atom faulted-op(o5, f1)
Atom faulted-op(o6, f1)
Atom faulted-op(o7, f1)
Atom not-fault(f1)
end_variable
begin_variable
var10
-1
8
Atom faulted-op(o1, f2)
Atom faulted-op(o2, f2)
Atom faulted-op(o3, f2)
Atom faulted-op(o4, f2)
Atom faulted-op(o5, f2)
Atom faulted-op(o6, f2)
Atom faulted-op(o7, f2)
Atom not-fault(f2)
end_variable
begin_variable
var11
-1
2
Atom last-fault(f1)
NegatedAtom last-fault(f1)
end_variable
begin_variable
var12
-1
2
Atom last-fault(f2)
NegatedAtom last-fault(f2)
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
Atom not-completed(o5)
NegatedAtom not-completed(o5)
end_variable
begin_variable
var19
-1
2
Atom not-completed(o6)
NegatedAtom not-completed(o6)
end_variable
begin_variable
var20
-1
2
Atom not-completed(o7)
NegatedAtom not-completed(o7)
end_variable
begin_variable
var21
-1
2
Atom not-last-fault(f1)
NegatedAtom not-last-fault(f1)
end_variable
begin_variable
var22
-1
2
Atom not-last-fault(f2)
NegatedAtom not-last-fault(f2)
end_variable
9
begin_mutex_group
3
9 0
10 0
14 0
end_mutex_group
begin_mutex_group
8
9 0
9 1
9 2
9 3
9 4
9 5
9 6
9 7
end_mutex_group
begin_mutex_group
8
10 0
10 1
10 2
10 3
10 4
10 5
10 6
10 7
end_mutex_group
begin_mutex_group
3
9 1
10 1
15 0
end_mutex_group
begin_mutex_group
3
9 2
10 2
16 0
end_mutex_group
begin_mutex_group
3
9 3
10 3
17 0
end_mutex_group
begin_mutex_group
3
9 4
10 4
18 0
end_mutex_group
begin_mutex_group
3
9 5
10 5
19 0
end_mutex_group
begin_mutex_group
3
9 6
10 6
20 0
end_mutex_group
begin_state
1
1
1
1
1
1
1
1
1
7
7
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
0
0
end_state
begin_goal
1
13 0
end_goal
29
begin_operator
finish 
8
0 0
1 0
2 0
3 0
4 0
5 0
6 0
22 0
1
1
0 13 -1 0
0
end_operator
begin_operator
perform-operation-1-fault o1
3
9 7
10 7
14 0
2
6
0 0 -1 0
0 7 -1 0
0 9 7 0
0 11 -1 0
0 14 0 1
0 21 -1 1
2
0 0 -1 0
0 14 0 1
0
end_operator
begin_operator
perform-operation-1-fault o2
3
9 7
10 7
15 0
2
6
0 1 -1 0
0 7 -1 0
0 9 7 1
0 11 -1 0
0 15 0 1
0 21 -1 1
2
0 1 -1 0
0 15 0 1
0
end_operator
begin_operator
perform-operation-1-fault o3
3
9 7
10 7
16 0
2
6
0 2 -1 0
0 7 -1 0
0 9 7 2
0 11 -1 0
0 16 0 1
0 21 -1 1
2
0 2 -1 0
0 16 0 1
0
end_operator
begin_operator
perform-operation-1-fault o4
3
9 7
10 7
17 0
2
6
0 3 -1 0
0 7 -1 0
0 9 7 3
0 11 -1 0
0 17 0 1
0 21 -1 1
2
0 3 -1 0
0 17 0 1
0
end_operator
begin_operator
perform-operation-1-fault o5
3
9 7
10 7
18 0
2
6
0 4 -1 0
0 7 -1 0
0 9 7 4
0 11 -1 0
0 18 0 1
0 21 -1 1
2
0 4 -1 0
0 18 0 1
0
end_operator
begin_operator
perform-operation-1-fault o6
3
9 7
10 7
19 0
2
6
0 5 -1 0
0 7 -1 0
0 9 7 5
0 11 -1 0
0 19 0 1
0 21 -1 1
2
0 5 -1 0
0 19 0 1
0
end_operator
begin_operator
perform-operation-1-fault o7
3
9 7
10 7
20 0
2
6
0 6 -1 0
0 7 -1 0
0 9 7 6
0 11 -1 0
0 20 0 1
0 21 -1 1
2
0 6 -1 0
0 20 0 1
0
end_operator
begin_operator
perform-operation-2-fault o1
3
7 0
10 7
14 0
2
6
0 0 -1 0
0 8 -1 0
0 10 7 0
0 12 -1 0
0 14 0 1
0 22 -1 1
2
0 0 -1 0
0 14 0 1
0
end_operator
begin_operator
perform-operation-2-fault o2
3
7 0
10 7
15 0
2
6
0 1 -1 0
0 8 -1 0
0 10 7 1
0 12 -1 0
0 15 0 1
0 22 -1 1
2
0 1 -1 0
0 15 0 1
0
end_operator
begin_operator
perform-operation-2-fault o3
3
7 0
10 7
16 0
2
6
0 2 -1 0
0 8 -1 0
0 10 7 2
0 12 -1 0
0 16 0 1
0 22 -1 1
2
0 2 -1 0
0 16 0 1
0
end_operator
begin_operator
perform-operation-2-fault o4
3
7 0
10 7
17 0
2
6
0 3 -1 0
0 8 -1 0
0 10 7 3
0 12 -1 0
0 17 0 1
0 22 -1 1
2
0 3 -1 0
0 17 0 1
0
end_operator
begin_operator
perform-operation-2-fault o5
3
7 0
10 7
18 0
2
6
0 4 -1 0
0 8 -1 0
0 10 7 4
0 12 -1 0
0 18 0 1
0 22 -1 1
2
0 4 -1 0
0 18 0 1
0
end_operator
begin_operator
perform-operation-2-fault o6
3
7 0
10 7
19 0
2
6
0 5 -1 0
0 8 -1 0
0 10 7 5
0 12 -1 0
0 19 0 1
0 22 -1 1
2
0 5 -1 0
0 19 0 1
0
end_operator
begin_operator
perform-operation-2-fault o7
3
7 0
10 7
20 0
2
6
0 6 -1 0
0 8 -1 0
0 10 7 6
0 12 -1 0
0 20 0 1
0 22 -1 1
2
0 6 -1 0
0 20 0 1
0
end_operator
begin_operator
repair-fault-1 o1
2
9 0
11 0
1
5
0 0 -1 1
0 9 0 7
0 11 0 1
0 14 -1 0
0 21 -1 0
0
end_operator
begin_operator
repair-fault-1 o2
2
9 1
11 0
1
5
0 1 -1 1
0 9 1 7
0 11 0 1
0 15 -1 0
0 21 -1 0
0
end_operator
begin_operator
repair-fault-1 o3
2
9 2
11 0
1
5
0 2 -1 1
0 9 2 7
0 11 0 1
0 16 -1 0
0 21 -1 0
0
end_operator
begin_operator
repair-fault-1 o4
2
9 3
11 0
1
5
0 3 -1 1
0 9 3 7
0 11 0 1
0 17 -1 0
0 21 -1 0
0
end_operator
begin_operator
repair-fault-1 o5
2
9 4
11 0
1
5
0 4 -1 1
0 9 4 7
0 11 0 1
0 18 -1 0
0 21 -1 0
0
end_operator
begin_operator
repair-fault-1 o6
2
9 5
11 0
1
5
0 5 -1 1
0 9 5 7
0 11 0 1
0 19 -1 0
0 21 -1 0
0
end_operator
begin_operator
repair-fault-1 o7
2
9 6
11 0
1
5
0 6 -1 1
0 9 6 7
0 11 0 1
0 20 -1 0
0 21 -1 0
0
end_operator
begin_operator
repair-fault-2 o1
2
10 0
12 0
1
7
0 0 -1 1
0 10 0 7
0 11 -1 0
0 12 0 1
0 14 -1 0
0 21 -1 1
0 22 -1 0
0
end_operator
begin_operator
repair-fault-2 o2
2
10 1
12 0
1
7
0 1 -1 1
0 10 1 7
0 11 -1 0
0 12 0 1
0 15 -1 0
0 21 -1 1
0 22 -1 0
0
end_operator
begin_operator
repair-fault-2 o3
2
10 2
12 0
1
7
0 2 -1 1
0 10 2 7
0 11 -1 0
0 12 0 1
0 16 -1 0
0 21 -1 1
0 22 -1 0
0
end_operator
begin_operator
repair-fault-2 o4
2
10 3
12 0
1
7
0 3 -1 1
0 10 3 7
0 11 -1 0
0 12 0 1
0 17 -1 0
0 21 -1 1
0 22 -1 0
0
end_operator
begin_operator
repair-fault-2 o5
2
10 4
12 0
1
7
0 4 -1 1
0 10 4 7
0 11 -1 0
0 12 0 1
0 18 -1 0
0 21 -1 1
0 22 -1 0
0
end_operator
begin_operator
repair-fault-2 o6
2
10 5
12 0
1
7
0 5 -1 1
0 10 5 7
0 11 -1 0
0 12 0 1
0 19 -1 0
0 21 -1 1
0 22 -1 0
0
end_operator
begin_operator
repair-fault-2 o7
2
10 6
12 0
1
7
0 6 -1 1
0 10 6 7
0 11 -1 0
0 12 0 1
0 20 -1 0
0 21 -1 1
0 22 -1 0
0
end_operator
0
