begin_version
3.FOND
end_version
begin_metric
0
end_metric
29
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
Atom completed(o10)
NegatedAtom completed(o10)
end_variable
begin_variable
var2
-1
2
Atom completed(o2)
NegatedAtom completed(o2)
end_variable
begin_variable
var3
-1
2
Atom completed(o3)
NegatedAtom completed(o3)
end_variable
begin_variable
var4
-1
2
Atom completed(o4)
NegatedAtom completed(o4)
end_variable
begin_variable
var5
-1
2
Atom completed(o5)
NegatedAtom completed(o5)
end_variable
begin_variable
var6
-1
2
Atom completed(o6)
NegatedAtom completed(o6)
end_variable
begin_variable
var7
-1
2
Atom completed(o7)
NegatedAtom completed(o7)
end_variable
begin_variable
var8
-1
2
Atom completed(o8)
NegatedAtom completed(o8)
end_variable
begin_variable
var9
-1
2
Atom completed(o9)
NegatedAtom completed(o9)
end_variable
begin_variable
var10
-1
2
Atom fault(f1)
NegatedAtom fault(f1)
end_variable
begin_variable
var11
-1
2
Atom fault(f2)
NegatedAtom fault(f2)
end_variable
begin_variable
var12
-1
11
Atom faulted-op(o1, f1)
Atom faulted-op(o10, f1)
Atom faulted-op(o2, f1)
Atom faulted-op(o3, f1)
Atom faulted-op(o4, f1)
Atom faulted-op(o5, f1)
Atom faulted-op(o6, f1)
Atom faulted-op(o7, f1)
Atom faulted-op(o8, f1)
Atom faulted-op(o9, f1)
Atom not-fault(f1)
end_variable
begin_variable
var13
-1
11
Atom faulted-op(o1, f2)
Atom faulted-op(o10, f2)
Atom faulted-op(o2, f2)
Atom faulted-op(o3, f2)
Atom faulted-op(o4, f2)
Atom faulted-op(o5, f2)
Atom faulted-op(o6, f2)
Atom faulted-op(o7, f2)
Atom faulted-op(o8, f2)
Atom faulted-op(o9, f2)
Atom not-fault(f2)
end_variable
begin_variable
var14
-1
2
Atom last-fault(f1)
NegatedAtom last-fault(f1)
end_variable
begin_variable
var15
-1
2
Atom last-fault(f2)
NegatedAtom last-fault(f2)
end_variable
begin_variable
var16
-1
2
Atom made()
NegatedAtom made()
end_variable
begin_variable
var17
-1
2
Atom not-completed(o1)
NegatedAtom not-completed(o1)
end_variable
begin_variable
var18
-1
2
Atom not-completed(o10)
NegatedAtom not-completed(o10)
end_variable
begin_variable
var19
-1
2
Atom not-completed(o2)
NegatedAtom not-completed(o2)
end_variable
begin_variable
var20
-1
2
Atom not-completed(o3)
NegatedAtom not-completed(o3)
end_variable
begin_variable
var21
-1
2
Atom not-completed(o4)
NegatedAtom not-completed(o4)
end_variable
begin_variable
var22
-1
2
Atom not-completed(o5)
NegatedAtom not-completed(o5)
end_variable
begin_variable
var23
-1
2
Atom not-completed(o6)
NegatedAtom not-completed(o6)
end_variable
begin_variable
var24
-1
2
Atom not-completed(o7)
NegatedAtom not-completed(o7)
end_variable
begin_variable
var25
-1
2
Atom not-completed(o8)
NegatedAtom not-completed(o8)
end_variable
begin_variable
var26
-1
2
Atom not-completed(o9)
NegatedAtom not-completed(o9)
end_variable
begin_variable
var27
-1
2
Atom not-last-fault(f1)
NegatedAtom not-last-fault(f1)
end_variable
begin_variable
var28
-1
2
Atom not-last-fault(f2)
NegatedAtom not-last-fault(f2)
end_variable
12
begin_mutex_group
3
12 0
13 0
17 0
end_mutex_group
begin_mutex_group
11
12 0
12 1
12 2
12 3
12 4
12 5
12 6
12 7
12 8
12 9
12 10
end_mutex_group
begin_mutex_group
11
13 0
13 1
13 2
13 3
13 4
13 5
13 6
13 7
13 8
13 9
13 10
end_mutex_group
begin_mutex_group
3
12 1
13 1
18 0
end_mutex_group
begin_mutex_group
3
12 2
13 2
19 0
end_mutex_group
begin_mutex_group
3
12 3
13 3
20 0
end_mutex_group
begin_mutex_group
3
12 4
13 4
21 0
end_mutex_group
begin_mutex_group
3
12 5
13 5
22 0
end_mutex_group
begin_mutex_group
3
12 6
13 6
23 0
end_mutex_group
begin_mutex_group
3
12 7
13 7
24 0
end_mutex_group
begin_mutex_group
3
12 8
13 8
25 0
end_mutex_group
begin_mutex_group
3
12 9
13 9
26 0
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
1
1
1
10
10
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
0
0
0
end_state
begin_goal
1
16 0
end_goal
41
begin_operator
finish 
11
0 0
1 0
2 0
3 0
4 0
5 0
6 0
7 0
8 0
9 0
28 0
1
1
0 16 -1 0
0
end_operator
begin_operator
perform-operation-1-fault o1
3
12 10
13 10
17 0
2
6
0 0 -1 0
0 10 -1 0
0 12 10 0
0 14 -1 0
0 17 0 1
0 27 -1 1
2
0 0 -1 0
0 17 0 1
0
end_operator
begin_operator
perform-operation-1-fault o10
3
12 10
13 10
18 0
2
6
0 1 -1 0
0 10 -1 0
0 12 10 1
0 14 -1 0
0 18 0 1
0 27 -1 1
2
0 1 -1 0
0 18 0 1
0
end_operator
begin_operator
perform-operation-1-fault o2
3
12 10
13 10
19 0
2
6
0 2 -1 0
0 10 -1 0
0 12 10 2
0 14 -1 0
0 19 0 1
0 27 -1 1
2
0 2 -1 0
0 19 0 1
0
end_operator
begin_operator
perform-operation-1-fault o3
3
12 10
13 10
20 0
2
6
0 3 -1 0
0 10 -1 0
0 12 10 3
0 14 -1 0
0 20 0 1
0 27 -1 1
2
0 3 -1 0
0 20 0 1
0
end_operator
begin_operator
perform-operation-1-fault o4
3
12 10
13 10
21 0
2
6
0 4 -1 0
0 10 -1 0
0 12 10 4
0 14 -1 0
0 21 0 1
0 27 -1 1
2
0 4 -1 0
0 21 0 1
0
end_operator
begin_operator
perform-operation-1-fault o5
3
12 10
13 10
22 0
2
6
0 5 -1 0
0 10 -1 0
0 12 10 5
0 14 -1 0
0 22 0 1
0 27 -1 1
2
0 5 -1 0
0 22 0 1
0
end_operator
begin_operator
perform-operation-1-fault o6
3
12 10
13 10
23 0
2
6
0 6 -1 0
0 10 -1 0
0 12 10 6
0 14 -1 0
0 23 0 1
0 27 -1 1
2
0 6 -1 0
0 23 0 1
0
end_operator
begin_operator
perform-operation-1-fault o7
3
12 10
13 10
24 0
2
6
0 7 -1 0
0 10 -1 0
0 12 10 7
0 14 -1 0
0 24 0 1
0 27 -1 1
2
0 7 -1 0
0 24 0 1
0
end_operator
begin_operator
perform-operation-1-fault o8
3
12 10
13 10
25 0
2
6
0 8 -1 0
0 10 -1 0
0 12 10 8
0 14 -1 0
0 25 0 1
0 27 -1 1
2
0 8 -1 0
0 25 0 1
0
end_operator
begin_operator
perform-operation-1-fault o9
3
12 10
13 10
26 0
2
6
0 9 -1 0
0 10 -1 0
0 12 10 9
0 14 -1 0
0 26 0 1
0 27 -1 1
2
0 9 -1 0
0 26 0 1
0
end_operator
begin_operator
perform-operation-2-fault o1
3
10 0
13 10
17 0
2
6
0 0 -1 0
0 11 -1 0
0 13 10 0
0 15 -1 0
0 17 0 1
0 28 -1 1
2
0 0 -1 0
0 17 0 1
0
end_operator
begin_operator
perform-operation-2-fault o10
3
10 0
13 10
18 0
2
6
0 1 -1 0
0 11 -1 0
0 13 10 1
0 15 -1 0
0 18 0 1
0 28 -1 1
2
0 1 -1 0
0 18 0 1
0
end_operator
begin_operator
perform-operation-2-fault o2
3
10 0
13 10
19 0
2
6
0 2 -1 0
0 11 -1 0
0 13 10 2
0 15 -1 0
0 19 0 1
0 28 -1 1
2
0 2 -1 0
0 19 0 1
0
end_operator
begin_operator
perform-operation-2-fault o3
3
10 0
13 10
20 0
2
6
0 3 -1 0
0 11 -1 0
0 13 10 3
0 15 -1 0
0 20 0 1
0 28 -1 1
2
0 3 -1 0
0 20 0 1
0
end_operator
begin_operator
perform-operation-2-fault o4
3
10 0
13 10
21 0
2
6
0 4 -1 0
0 11 -1 0
0 13 10 4
0 15 -1 0
0 21 0 1
0 28 -1 1
2
0 4 -1 0
0 21 0 1
0
end_operator
begin_operator
perform-operation-2-fault o5
3
10 0
13 10
22 0
2
6
0 5 -1 0
0 11 -1 0
0 13 10 5
0 15 -1 0
0 22 0 1
0 28 -1 1
2
0 5 -1 0
0 22 0 1
0
end_operator
begin_operator
perform-operation-2-fault o6
3
10 0
13 10
23 0
2
6
0 6 -1 0
0 11 -1 0
0 13 10 6
0 15 -1 0
0 23 0 1
0 28 -1 1
2
0 6 -1 0
0 23 0 1
0
end_operator
begin_operator
perform-operation-2-fault o7
3
10 0
13 10
24 0
2
6
0 7 -1 0
0 11 -1 0
0 13 10 7
0 15 -1 0
0 24 0 1
0 28 -1 1
2
0 7 -1 0
0 24 0 1
0
end_operator
begin_operator
perform-operation-2-fault o8
3
10 0
13 10
25 0
2
6
0 8 -1 0
0 11 -1 0
0 13 10 8
0 15 -1 0
0 25 0 1
0 28 -1 1
2
0 8 -1 0
0 25 0 1
0
end_operator
begin_operator
perform-operation-2-fault o9
3
10 0
13 10
26 0
2
6
0 9 -1 0
0 11 -1 0
0 13 10 9
0 15 -1 0
0 26 0 1
0 28 -1 1
2
0 9 -1 0
0 26 0 1
0
end_operator
begin_operator
repair-fault-1 o1
2
12 0
14 0
1
5
0 0 -1 1
0 12 0 10
0 14 0 1
0 17 -1 0
0 27 -1 0
0
end_operator
begin_operator
repair-fault-1 o10
2
12 1
14 0
1
5
0 1 -1 1
0 12 1 10
0 14 0 1
0 18 -1 0
0 27 -1 0
0
end_operator
begin_operator
repair-fault-1 o2
2
12 2
14 0
1
5
0 2 -1 1
0 12 2 10
0 14 0 1
0 19 -1 0
0 27 -1 0
0
end_operator
begin_operator
repair-fault-1 o3
2
12 3
14 0
1
5
0 3 -1 1
0 12 3 10
0 14 0 1
0 20 -1 0
0 27 -1 0
0
end_operator
begin_operator
repair-fault-1 o4
2
12 4
14 0
1
5
0 4 -1 1
0 12 4 10
0 14 0 1
0 21 -1 0
0 27 -1 0
0
end_operator
begin_operator
repair-fault-1 o5
2
12 5
14 0
1
5
0 5 -1 1
0 12 5 10
0 14 0 1
0 22 -1 0
0 27 -1 0
0
end_operator
begin_operator
repair-fault-1 o6
2
12 6
14 0
1
5
0 6 -1 1
0 12 6 10
0 14 0 1
0 23 -1 0
0 27 -1 0
0
end_operator
begin_operator
repair-fault-1 o7
2
12 7
14 0
1
5
0 7 -1 1
0 12 7 10
0 14 0 1
0 24 -1 0
0 27 -1 0
0
end_operator
begin_operator
repair-fault-1 o8
2
12 8
14 0
1
5
0 8 -1 1
0 12 8 10
0 14 0 1
0 25 -1 0
0 27 -1 0
0
end_operator
begin_operator
repair-fault-1 o9
2
12 9
14 0
1
5
0 9 -1 1
0 12 9 10
0 14 0 1
0 26 -1 0
0 27 -1 0
0
end_operator
begin_operator
repair-fault-2 o1
2
13 0
15 0
1
7
0 0 -1 1
0 13 0 10
0 14 -1 0
0 15 0 1
0 17 -1 0
0 27 -1 1
0 28 -1 0
0
end_operator
begin_operator
repair-fault-2 o10
2
13 1
15 0
1
7
0 1 -1 1
0 13 1 10
0 14 -1 0
0 15 0 1
0 18 -1 0
0 27 -1 1
0 28 -1 0
0
end_operator
begin_operator
repair-fault-2 o2
2
13 2
15 0
1
7
0 2 -1 1
0 13 2 10
0 14 -1 0
0 15 0 1
0 19 -1 0
0 27 -1 1
0 28 -1 0
0
end_operator
begin_operator
repair-fault-2 o3
2
13 3
15 0
1
7
0 3 -1 1
0 13 3 10
0 14 -1 0
0 15 0 1
0 20 -1 0
0 27 -1 1
0 28 -1 0
0
end_operator
begin_operator
repair-fault-2 o4
2
13 4
15 0
1
7
0 4 -1 1
0 13 4 10
0 14 -1 0
0 15 0 1
0 21 -1 0
0 27 -1 1
0 28 -1 0
0
end_operator
begin_operator
repair-fault-2 o5
2
13 5
15 0
1
7
0 5 -1 1
0 13 5 10
0 14 -1 0
0 15 0 1
0 22 -1 0
0 27 -1 1
0 28 -1 0
0
end_operator
begin_operator
repair-fault-2 o6
2
13 6
15 0
1
7
0 6 -1 1
0 13 6 10
0 14 -1 0
0 15 0 1
0 23 -1 0
0 27 -1 1
0 28 -1 0
0
end_operator
begin_operator
repair-fault-2 o7
2
13 7
15 0
1
7
0 7 -1 1
0 13 7 10
0 14 -1 0
0 15 0 1
0 24 -1 0
0 27 -1 1
0 28 -1 0
0
end_operator
begin_operator
repair-fault-2 o8
2
13 8
15 0
1
7
0 8 -1 1
0 13 8 10
0 14 -1 0
0 15 0 1
0 25 -1 0
0 27 -1 1
0 28 -1 0
0
end_operator
begin_operator
repair-fault-2 o9
2
13 9
15 0
1
7
0 9 -1 1
0 13 9 10
0 14 -1 0
0 15 0 1
0 26 -1 0
0 27 -1 1
0 28 -1 0
0
end_operator
0
