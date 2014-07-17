begin_version
3.FOND
end_version
begin_metric
0
end_metric
25
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
Atom completed(o8)
NegatedAtom completed(o8)
end_variable
begin_variable
var8
-1
2
Atom fault(f1)
NegatedAtom fault(f1)
end_variable
begin_variable
var9
-1
2
Atom fault(f2)
NegatedAtom fault(f2)
end_variable
begin_variable
var10
-1
9
Atom faulted-op(o1, f1)
Atom faulted-op(o2, f1)
Atom faulted-op(o3, f1)
Atom faulted-op(o4, f1)
Atom faulted-op(o5, f1)
Atom faulted-op(o6, f1)
Atom faulted-op(o7, f1)
Atom faulted-op(o8, f1)
Atom not-fault(f1)
end_variable
begin_variable
var11
-1
9
Atom faulted-op(o1, f2)
Atom faulted-op(o2, f2)
Atom faulted-op(o3, f2)
Atom faulted-op(o4, f2)
Atom faulted-op(o5, f2)
Atom faulted-op(o6, f2)
Atom faulted-op(o7, f2)
Atom faulted-op(o8, f2)
Atom not-fault(f2)
end_variable
begin_variable
var12
-1
2
Atom last-fault(f1)
NegatedAtom last-fault(f1)
end_variable
begin_variable
var13
-1
2
Atom last-fault(f2)
NegatedAtom last-fault(f2)
end_variable
begin_variable
var14
-1
2
Atom made()
NegatedAtom made()
end_variable
begin_variable
var15
-1
2
Atom not-completed(o1)
NegatedAtom not-completed(o1)
end_variable
begin_variable
var16
-1
2
Atom not-completed(o2)
NegatedAtom not-completed(o2)
end_variable
begin_variable
var17
-1
2
Atom not-completed(o3)
NegatedAtom not-completed(o3)
end_variable
begin_variable
var18
-1
2
Atom not-completed(o4)
NegatedAtom not-completed(o4)
end_variable
begin_variable
var19
-1
2
Atom not-completed(o5)
NegatedAtom not-completed(o5)
end_variable
begin_variable
var20
-1
2
Atom not-completed(o6)
NegatedAtom not-completed(o6)
end_variable
begin_variable
var21
-1
2
Atom not-completed(o7)
NegatedAtom not-completed(o7)
end_variable
begin_variable
var22
-1
2
Atom not-completed(o8)
NegatedAtom not-completed(o8)
end_variable
begin_variable
var23
-1
2
Atom not-last-fault(f1)
NegatedAtom not-last-fault(f1)
end_variable
begin_variable
var24
-1
2
Atom not-last-fault(f2)
NegatedAtom not-last-fault(f2)
end_variable
10
begin_mutex_group
3
10 0
11 0
15 0
end_mutex_group
begin_mutex_group
9
10 0
10 1
10 2
10 3
10 4
10 5
10 6
10 7
10 8
end_mutex_group
begin_mutex_group
9
11 0
11 1
11 2
11 3
11 4
11 5
11 6
11 7
11 8
end_mutex_group
begin_mutex_group
3
10 1
11 1
16 0
end_mutex_group
begin_mutex_group
3
10 2
11 2
17 0
end_mutex_group
begin_mutex_group
3
10 3
11 3
18 0
end_mutex_group
begin_mutex_group
3
10 4
11 4
19 0
end_mutex_group
begin_mutex_group
3
10 5
11 5
20 0
end_mutex_group
begin_mutex_group
3
10 6
11 6
21 0
end_mutex_group
begin_mutex_group
3
10 7
11 7
22 0
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
8
8
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
14 0
end_goal
33
begin_operator
finish 
9
0 0
1 0
2 0
3 0
4 0
5 0
6 0
7 0
24 0
1
1
0 14 -1 0
0
end_operator
begin_operator
perform-operation-1-fault o1
3
10 8
11 8
15 0
2
6
0 0 -1 0
0 8 -1 0
0 10 8 0
0 12 -1 0
0 15 0 1
0 23 -1 1
2
0 0 -1 0
0 15 0 1
0
end_operator
begin_operator
perform-operation-1-fault o2
3
10 8
11 8
16 0
2
6
0 1 -1 0
0 8 -1 0
0 10 8 1
0 12 -1 0
0 16 0 1
0 23 -1 1
2
0 1 -1 0
0 16 0 1
0
end_operator
begin_operator
perform-operation-1-fault o3
3
10 8
11 8
17 0
2
6
0 2 -1 0
0 8 -1 0
0 10 8 2
0 12 -1 0
0 17 0 1
0 23 -1 1
2
0 2 -1 0
0 17 0 1
0
end_operator
begin_operator
perform-operation-1-fault o4
3
10 8
11 8
18 0
2
6
0 3 -1 0
0 8 -1 0
0 10 8 3
0 12 -1 0
0 18 0 1
0 23 -1 1
2
0 3 -1 0
0 18 0 1
0
end_operator
begin_operator
perform-operation-1-fault o5
3
10 8
11 8
19 0
2
6
0 4 -1 0
0 8 -1 0
0 10 8 4
0 12 -1 0
0 19 0 1
0 23 -1 1
2
0 4 -1 0
0 19 0 1
0
end_operator
begin_operator
perform-operation-1-fault o6
3
10 8
11 8
20 0
2
6
0 5 -1 0
0 8 -1 0
0 10 8 5
0 12 -1 0
0 20 0 1
0 23 -1 1
2
0 5 -1 0
0 20 0 1
0
end_operator
begin_operator
perform-operation-1-fault o7
3
10 8
11 8
21 0
2
6
0 6 -1 0
0 8 -1 0
0 10 8 6
0 12 -1 0
0 21 0 1
0 23 -1 1
2
0 6 -1 0
0 21 0 1
0
end_operator
begin_operator
perform-operation-1-fault o8
3
10 8
11 8
22 0
2
6
0 7 -1 0
0 8 -1 0
0 10 8 7
0 12 -1 0
0 22 0 1
0 23 -1 1
2
0 7 -1 0
0 22 0 1
0
end_operator
begin_operator
perform-operation-2-fault o1
3
8 0
11 8
15 0
2
6
0 0 -1 0
0 9 -1 0
0 11 8 0
0 13 -1 0
0 15 0 1
0 24 -1 1
2
0 0 -1 0
0 15 0 1
0
end_operator
begin_operator
perform-operation-2-fault o2
3
8 0
11 8
16 0
2
6
0 1 -1 0
0 9 -1 0
0 11 8 1
0 13 -1 0
0 16 0 1
0 24 -1 1
2
0 1 -1 0
0 16 0 1
0
end_operator
begin_operator
perform-operation-2-fault o3
3
8 0
11 8
17 0
2
6
0 2 -1 0
0 9 -1 0
0 11 8 2
0 13 -1 0
0 17 0 1
0 24 -1 1
2
0 2 -1 0
0 17 0 1
0
end_operator
begin_operator
perform-operation-2-fault o4
3
8 0
11 8
18 0
2
6
0 3 -1 0
0 9 -1 0
0 11 8 3
0 13 -1 0
0 18 0 1
0 24 -1 1
2
0 3 -1 0
0 18 0 1
0
end_operator
begin_operator
perform-operation-2-fault o5
3
8 0
11 8
19 0
2
6
0 4 -1 0
0 9 -1 0
0 11 8 4
0 13 -1 0
0 19 0 1
0 24 -1 1
2
0 4 -1 0
0 19 0 1
0
end_operator
begin_operator
perform-operation-2-fault o6
3
8 0
11 8
20 0
2
6
0 5 -1 0
0 9 -1 0
0 11 8 5
0 13 -1 0
0 20 0 1
0 24 -1 1
2
0 5 -1 0
0 20 0 1
0
end_operator
begin_operator
perform-operation-2-fault o7
3
8 0
11 8
21 0
2
6
0 6 -1 0
0 9 -1 0
0 11 8 6
0 13 -1 0
0 21 0 1
0 24 -1 1
2
0 6 -1 0
0 21 0 1
0
end_operator
begin_operator
perform-operation-2-fault o8
3
8 0
11 8
22 0
2
6
0 7 -1 0
0 9 -1 0
0 11 8 7
0 13 -1 0
0 22 0 1
0 24 -1 1
2
0 7 -1 0
0 22 0 1
0
end_operator
begin_operator
repair-fault-1 o1
2
10 0
12 0
1
5
0 0 -1 1
0 10 0 8
0 12 0 1
0 15 -1 0
0 23 -1 0
0
end_operator
begin_operator
repair-fault-1 o2
2
10 1
12 0
1
5
0 1 -1 1
0 10 1 8
0 12 0 1
0 16 -1 0
0 23 -1 0
0
end_operator
begin_operator
repair-fault-1 o3
2
10 2
12 0
1
5
0 2 -1 1
0 10 2 8
0 12 0 1
0 17 -1 0
0 23 -1 0
0
end_operator
begin_operator
repair-fault-1 o4
2
10 3
12 0
1
5
0 3 -1 1
0 10 3 8
0 12 0 1
0 18 -1 0
0 23 -1 0
0
end_operator
begin_operator
repair-fault-1 o5
2
10 4
12 0
1
5
0 4 -1 1
0 10 4 8
0 12 0 1
0 19 -1 0
0 23 -1 0
0
end_operator
begin_operator
repair-fault-1 o6
2
10 5
12 0
1
5
0 5 -1 1
0 10 5 8
0 12 0 1
0 20 -1 0
0 23 -1 0
0
end_operator
begin_operator
repair-fault-1 o7
2
10 6
12 0
1
5
0 6 -1 1
0 10 6 8
0 12 0 1
0 21 -1 0
0 23 -1 0
0
end_operator
begin_operator
repair-fault-1 o8
2
10 7
12 0
1
5
0 7 -1 1
0 10 7 8
0 12 0 1
0 22 -1 0
0 23 -1 0
0
end_operator
begin_operator
repair-fault-2 o1
2
11 0
13 0
1
7
0 0 -1 1
0 11 0 8
0 12 -1 0
0 13 0 1
0 15 -1 0
0 23 -1 1
0 24 -1 0
0
end_operator
begin_operator
repair-fault-2 o2
2
11 1
13 0
1
7
0 1 -1 1
0 11 1 8
0 12 -1 0
0 13 0 1
0 16 -1 0
0 23 -1 1
0 24 -1 0
0
end_operator
begin_operator
repair-fault-2 o3
2
11 2
13 0
1
7
0 2 -1 1
0 11 2 8
0 12 -1 0
0 13 0 1
0 17 -1 0
0 23 -1 1
0 24 -1 0
0
end_operator
begin_operator
repair-fault-2 o4
2
11 3
13 0
1
7
0 3 -1 1
0 11 3 8
0 12 -1 0
0 13 0 1
0 18 -1 0
0 23 -1 1
0 24 -1 0
0
end_operator
begin_operator
repair-fault-2 o5
2
11 4
13 0
1
7
0 4 -1 1
0 11 4 8
0 12 -1 0
0 13 0 1
0 19 -1 0
0 23 -1 1
0 24 -1 0
0
end_operator
begin_operator
repair-fault-2 o6
2
11 5
13 0
1
7
0 5 -1 1
0 11 5 8
0 12 -1 0
0 13 0 1
0 20 -1 0
0 23 -1 1
0 24 -1 0
0
end_operator
begin_operator
repair-fault-2 o7
2
11 6
13 0
1
7
0 6 -1 1
0 11 6 8
0 12 -1 0
0 13 0 1
0 21 -1 0
0 23 -1 1
0 24 -1 0
0
end_operator
begin_operator
repair-fault-2 o8
2
11 7
13 0
1
7
0 7 -1 1
0 11 7 8
0 12 -1 0
0 13 0 1
0 22 -1 0
0 23 -1 1
0 24 -1 0
0
end_operator
0
