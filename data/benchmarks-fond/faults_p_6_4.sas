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
Atom fault(f1)
NegatedAtom fault(f1)
end_variable
begin_variable
var7
-1
2
Atom fault(f2)
NegatedAtom fault(f2)
end_variable
begin_variable
var8
-1
2
Atom fault(f3)
NegatedAtom fault(f3)
end_variable
begin_variable
var9
-1
2
Atom fault(f4)
NegatedAtom fault(f4)
end_variable
begin_variable
var10
-1
7
Atom faulted-op(o1, f1)
Atom faulted-op(o2, f1)
Atom faulted-op(o3, f1)
Atom faulted-op(o4, f1)
Atom faulted-op(o5, f1)
Atom faulted-op(o6, f1)
Atom not-fault(f1)
end_variable
begin_variable
var11
-1
7
Atom faulted-op(o1, f2)
Atom faulted-op(o2, f2)
Atom faulted-op(o3, f2)
Atom faulted-op(o4, f2)
Atom faulted-op(o5, f2)
Atom faulted-op(o6, f2)
Atom not-fault(f2)
end_variable
begin_variable
var12
-1
7
Atom faulted-op(o1, f3)
Atom faulted-op(o2, f3)
Atom faulted-op(o3, f3)
Atom faulted-op(o4, f3)
Atom faulted-op(o5, f3)
Atom faulted-op(o6, f3)
Atom not-fault(f3)
end_variable
begin_variable
var13
-1
7
Atom faulted-op(o1, f4)
Atom faulted-op(o2, f4)
Atom faulted-op(o3, f4)
Atom faulted-op(o4, f4)
Atom faulted-op(o5, f4)
Atom faulted-op(o6, f4)
Atom not-fault(f4)
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
Atom last-fault(f3)
NegatedAtom last-fault(f3)
end_variable
begin_variable
var17
-1
2
Atom last-fault(f4)
NegatedAtom last-fault(f4)
end_variable
begin_variable
var18
-1
2
Atom made()
NegatedAtom made()
end_variable
begin_variable
var19
-1
2
Atom not-completed(o1)
NegatedAtom not-completed(o1)
end_variable
begin_variable
var20
-1
2
Atom not-completed(o2)
NegatedAtom not-completed(o2)
end_variable
begin_variable
var21
-1
2
Atom not-completed(o3)
NegatedAtom not-completed(o3)
end_variable
begin_variable
var22
-1
2
Atom not-completed(o4)
NegatedAtom not-completed(o4)
end_variable
begin_variable
var23
-1
2
Atom not-completed(o5)
NegatedAtom not-completed(o5)
end_variable
begin_variable
var24
-1
2
Atom not-completed(o6)
NegatedAtom not-completed(o6)
end_variable
begin_variable
var25
-1
2
Atom not-last-fault(f1)
NegatedAtom not-last-fault(f1)
end_variable
begin_variable
var26
-1
2
Atom not-last-fault(f2)
NegatedAtom not-last-fault(f2)
end_variable
begin_variable
var27
-1
2
Atom not-last-fault(f3)
NegatedAtom not-last-fault(f3)
end_variable
begin_variable
var28
-1
2
Atom not-last-fault(f4)
NegatedAtom not-last-fault(f4)
end_variable
10
begin_mutex_group
5
10 0
11 0
12 0
13 0
19 0
end_mutex_group
begin_mutex_group
7
10 0
10 1
10 2
10 3
10 4
10 5
10 6
end_mutex_group
begin_mutex_group
7
11 0
11 1
11 2
11 3
11 4
11 5
11 6
end_mutex_group
begin_mutex_group
7
12 0
12 1
12 2
12 3
12 4
12 5
12 6
end_mutex_group
begin_mutex_group
7
13 0
13 1
13 2
13 3
13 4
13 5
13 6
end_mutex_group
begin_mutex_group
5
10 1
11 1
12 1
13 1
20 0
end_mutex_group
begin_mutex_group
5
10 2
11 2
12 2
13 2
21 0
end_mutex_group
begin_mutex_group
5
10 3
11 3
12 3
13 3
22 0
end_mutex_group
begin_mutex_group
5
10 4
11 4
12 4
13 4
23 0
end_mutex_group
begin_mutex_group
5
10 5
11 5
12 5
13 5
24 0
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
6
6
6
6
1
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
0
0
0
end_state
begin_goal
1
18 0
end_goal
49
begin_operator
finish 
7
0 0
1 0
2 0
3 0
4 0
5 0
28 0
1
1
0 18 -1 0
0
end_operator
begin_operator
perform-operation-1-fault o1
5
10 6
11 6
12 6
13 6
19 0
2
6
0 0 -1 0
0 6 -1 0
0 10 6 0
0 14 -1 0
0 19 0 1
0 25 -1 1
2
0 0 -1 0
0 19 0 1
0
end_operator
begin_operator
perform-operation-1-fault o2
5
10 6
11 6
12 6
13 6
20 0
2
6
0 1 -1 0
0 6 -1 0
0 10 6 1
0 14 -1 0
0 20 0 1
0 25 -1 1
2
0 1 -1 0
0 20 0 1
0
end_operator
begin_operator
perform-operation-1-fault o3
5
10 6
11 6
12 6
13 6
21 0
2
6
0 2 -1 0
0 6 -1 0
0 10 6 2
0 14 -1 0
0 21 0 1
0 25 -1 1
2
0 2 -1 0
0 21 0 1
0
end_operator
begin_operator
perform-operation-1-fault o4
5
10 6
11 6
12 6
13 6
22 0
2
6
0 3 -1 0
0 6 -1 0
0 10 6 3
0 14 -1 0
0 22 0 1
0 25 -1 1
2
0 3 -1 0
0 22 0 1
0
end_operator
begin_operator
perform-operation-1-fault o5
5
10 6
11 6
12 6
13 6
23 0
2
6
0 4 -1 0
0 6 -1 0
0 10 6 4
0 14 -1 0
0 23 0 1
0 25 -1 1
2
0 4 -1 0
0 23 0 1
0
end_operator
begin_operator
perform-operation-1-fault o6
5
10 6
11 6
12 6
13 6
24 0
2
6
0 5 -1 0
0 6 -1 0
0 10 6 5
0 14 -1 0
0 24 0 1
0 25 -1 1
2
0 5 -1 0
0 24 0 1
0
end_operator
begin_operator
perform-operation-2-fault o1
5
6 0
11 6
12 6
13 6
19 0
2
6
0 0 -1 0
0 7 -1 0
0 11 6 0
0 15 -1 0
0 19 0 1
0 26 -1 1
2
0 0 -1 0
0 19 0 1
0
end_operator
begin_operator
perform-operation-2-fault o2
5
6 0
11 6
12 6
13 6
20 0
2
6
0 1 -1 0
0 7 -1 0
0 11 6 1
0 15 -1 0
0 20 0 1
0 26 -1 1
2
0 1 -1 0
0 20 0 1
0
end_operator
begin_operator
perform-operation-2-fault o3
5
6 0
11 6
12 6
13 6
21 0
2
6
0 2 -1 0
0 7 -1 0
0 11 6 2
0 15 -1 0
0 21 0 1
0 26 -1 1
2
0 2 -1 0
0 21 0 1
0
end_operator
begin_operator
perform-operation-2-fault o4
5
6 0
11 6
12 6
13 6
22 0
2
6
0 3 -1 0
0 7 -1 0
0 11 6 3
0 15 -1 0
0 22 0 1
0 26 -1 1
2
0 3 -1 0
0 22 0 1
0
end_operator
begin_operator
perform-operation-2-fault o5
5
6 0
11 6
12 6
13 6
23 0
2
6
0 4 -1 0
0 7 -1 0
0 11 6 4
0 15 -1 0
0 23 0 1
0 26 -1 1
2
0 4 -1 0
0 23 0 1
0
end_operator
begin_operator
perform-operation-2-fault o6
5
6 0
11 6
12 6
13 6
24 0
2
6
0 5 -1 0
0 7 -1 0
0 11 6 5
0 15 -1 0
0 24 0 1
0 26 -1 1
2
0 5 -1 0
0 24 0 1
0
end_operator
begin_operator
perform-operation-3-fault o1
5
6 0
7 0
12 6
13 6
19 0
2
6
0 0 -1 0
0 8 -1 0
0 12 6 0
0 16 -1 0
0 19 0 1
0 27 -1 1
2
0 0 -1 0
0 19 0 1
0
end_operator
begin_operator
perform-operation-3-fault o2
5
6 0
7 0
12 6
13 6
20 0
2
6
0 1 -1 0
0 8 -1 0
0 12 6 1
0 16 -1 0
0 20 0 1
0 27 -1 1
2
0 1 -1 0
0 20 0 1
0
end_operator
begin_operator
perform-operation-3-fault o3
5
6 0
7 0
12 6
13 6
21 0
2
6
0 2 -1 0
0 8 -1 0
0 12 6 2
0 16 -1 0
0 21 0 1
0 27 -1 1
2
0 2 -1 0
0 21 0 1
0
end_operator
begin_operator
perform-operation-3-fault o4
5
6 0
7 0
12 6
13 6
22 0
2
6
0 3 -1 0
0 8 -1 0
0 12 6 3
0 16 -1 0
0 22 0 1
0 27 -1 1
2
0 3 -1 0
0 22 0 1
0
end_operator
begin_operator
perform-operation-3-fault o5
5
6 0
7 0
12 6
13 6
23 0
2
6
0 4 -1 0
0 8 -1 0
0 12 6 4
0 16 -1 0
0 23 0 1
0 27 -1 1
2
0 4 -1 0
0 23 0 1
0
end_operator
begin_operator
perform-operation-3-fault o6
5
6 0
7 0
12 6
13 6
24 0
2
6
0 5 -1 0
0 8 -1 0
0 12 6 5
0 16 -1 0
0 24 0 1
0 27 -1 1
2
0 5 -1 0
0 24 0 1
0
end_operator
begin_operator
perform-operation-4-fault o1
5
6 0
7 0
8 0
13 6
19 0
2
6
0 0 -1 0
0 9 -1 0
0 13 6 0
0 17 -1 0
0 19 0 1
0 28 -1 1
2
0 0 -1 0
0 19 0 1
0
end_operator
begin_operator
perform-operation-4-fault o2
5
6 0
7 0
8 0
13 6
20 0
2
6
0 1 -1 0
0 9 -1 0
0 13 6 1
0 17 -1 0
0 20 0 1
0 28 -1 1
2
0 1 -1 0
0 20 0 1
0
end_operator
begin_operator
perform-operation-4-fault o3
5
6 0
7 0
8 0
13 6
21 0
2
6
0 2 -1 0
0 9 -1 0
0 13 6 2
0 17 -1 0
0 21 0 1
0 28 -1 1
2
0 2 -1 0
0 21 0 1
0
end_operator
begin_operator
perform-operation-4-fault o4
5
6 0
7 0
8 0
13 6
22 0
2
6
0 3 -1 0
0 9 -1 0
0 13 6 3
0 17 -1 0
0 22 0 1
0 28 -1 1
2
0 3 -1 0
0 22 0 1
0
end_operator
begin_operator
perform-operation-4-fault o5
5
6 0
7 0
8 0
13 6
23 0
2
6
0 4 -1 0
0 9 -1 0
0 13 6 4
0 17 -1 0
0 23 0 1
0 28 -1 1
2
0 4 -1 0
0 23 0 1
0
end_operator
begin_operator
perform-operation-4-fault o6
5
6 0
7 0
8 0
13 6
24 0
2
6
0 5 -1 0
0 9 -1 0
0 13 6 5
0 17 -1 0
0 24 0 1
0 28 -1 1
2
0 5 -1 0
0 24 0 1
0
end_operator
begin_operator
repair-fault-1 o1
2
10 0
14 0
1
5
0 0 -1 1
0 10 0 6
0 14 0 1
0 19 -1 0
0 25 -1 0
0
end_operator
begin_operator
repair-fault-1 o2
2
10 1
14 0
1
5
0 1 -1 1
0 10 1 6
0 14 0 1
0 20 -1 0
0 25 -1 0
0
end_operator
begin_operator
repair-fault-1 o3
2
10 2
14 0
1
5
0 2 -1 1
0 10 2 6
0 14 0 1
0 21 -1 0
0 25 -1 0
0
end_operator
begin_operator
repair-fault-1 o4
2
10 3
14 0
1
5
0 3 -1 1
0 10 3 6
0 14 0 1
0 22 -1 0
0 25 -1 0
0
end_operator
begin_operator
repair-fault-1 o5
2
10 4
14 0
1
5
0 4 -1 1
0 10 4 6
0 14 0 1
0 23 -1 0
0 25 -1 0
0
end_operator
begin_operator
repair-fault-1 o6
2
10 5
14 0
1
5
0 5 -1 1
0 10 5 6
0 14 0 1
0 24 -1 0
0 25 -1 0
0
end_operator
begin_operator
repair-fault-2 o1
2
11 0
15 0
1
7
0 0 -1 1
0 11 0 6
0 14 -1 0
0 15 0 1
0 19 -1 0
0 25 -1 1
0 26 -1 0
0
end_operator
begin_operator
repair-fault-2 o2
2
11 1
15 0
1
7
0 1 -1 1
0 11 1 6
0 14 -1 0
0 15 0 1
0 20 -1 0
0 25 -1 1
0 26 -1 0
0
end_operator
begin_operator
repair-fault-2 o3
2
11 2
15 0
1
7
0 2 -1 1
0 11 2 6
0 14 -1 0
0 15 0 1
0 21 -1 0
0 25 -1 1
0 26 -1 0
0
end_operator
begin_operator
repair-fault-2 o4
2
11 3
15 0
1
7
0 3 -1 1
0 11 3 6
0 14 -1 0
0 15 0 1
0 22 -1 0
0 25 -1 1
0 26 -1 0
0
end_operator
begin_operator
repair-fault-2 o5
2
11 4
15 0
1
7
0 4 -1 1
0 11 4 6
0 14 -1 0
0 15 0 1
0 23 -1 0
0 25 -1 1
0 26 -1 0
0
end_operator
begin_operator
repair-fault-2 o6
2
11 5
15 0
1
7
0 5 -1 1
0 11 5 6
0 14 -1 0
0 15 0 1
0 24 -1 0
0 25 -1 1
0 26 -1 0
0
end_operator
begin_operator
repair-fault-3 o1
2
12 0
16 0
1
7
0 0 -1 1
0 12 0 6
0 15 -1 0
0 16 0 1
0 19 -1 0
0 26 -1 1
0 27 -1 0
0
end_operator
begin_operator
repair-fault-3 o2
2
12 1
16 0
1
7
0 1 -1 1
0 12 1 6
0 15 -1 0
0 16 0 1
0 20 -1 0
0 26 -1 1
0 27 -1 0
0
end_operator
begin_operator
repair-fault-3 o3
2
12 2
16 0
1
7
0 2 -1 1
0 12 2 6
0 15 -1 0
0 16 0 1
0 21 -1 0
0 26 -1 1
0 27 -1 0
0
end_operator
begin_operator
repair-fault-3 o4
2
12 3
16 0
1
7
0 3 -1 1
0 12 3 6
0 15 -1 0
0 16 0 1
0 22 -1 0
0 26 -1 1
0 27 -1 0
0
end_operator
begin_operator
repair-fault-3 o5
2
12 4
16 0
1
7
0 4 -1 1
0 12 4 6
0 15 -1 0
0 16 0 1
0 23 -1 0
0 26 -1 1
0 27 -1 0
0
end_operator
begin_operator
repair-fault-3 o6
2
12 5
16 0
1
7
0 5 -1 1
0 12 5 6
0 15 -1 0
0 16 0 1
0 24 -1 0
0 26 -1 1
0 27 -1 0
0
end_operator
begin_operator
repair-fault-4 o1
2
13 0
17 0
1
7
0 0 -1 1
0 13 0 6
0 16 -1 0
0 17 0 1
0 19 -1 0
0 27 -1 1
0 28 -1 0
0
end_operator
begin_operator
repair-fault-4 o2
2
13 1
17 0
1
7
0 1 -1 1
0 13 1 6
0 16 -1 0
0 17 0 1
0 20 -1 0
0 27 -1 1
0 28 -1 0
0
end_operator
begin_operator
repair-fault-4 o3
2
13 2
17 0
1
7
0 2 -1 1
0 13 2 6
0 16 -1 0
0 17 0 1
0 21 -1 0
0 27 -1 1
0 28 -1 0
0
end_operator
begin_operator
repair-fault-4 o4
2
13 3
17 0
1
7
0 3 -1 1
0 13 3 6
0 16 -1 0
0 17 0 1
0 22 -1 0
0 27 -1 1
0 28 -1 0
0
end_operator
begin_operator
repair-fault-4 o5
2
13 4
17 0
1
7
0 4 -1 1
0 13 4 6
0 16 -1 0
0 17 0 1
0 23 -1 0
0 27 -1 1
0 28 -1 0
0
end_operator
begin_operator
repair-fault-4 o6
2
13 5
17 0
1
7
0 5 -1 1
0 13 5 6
0 16 -1 0
0 17 0 1
0 24 -1 0
0 27 -1 1
0 28 -1 0
0
end_operator
0
