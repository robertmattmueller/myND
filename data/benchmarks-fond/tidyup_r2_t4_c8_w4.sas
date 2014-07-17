begin_version
3
end_version
begin_metric
0
end_metric
16
begin_variable
var0
-1
2
Atom door-open(door0)
NegatedAtom door-open(door0)
end_variable
begin_variable
var1
-1
9
Atom grasped(cup0, left_arm)
Atom grasped(cup1, left_arm)
Atom grasped(cup2, left_arm)
Atom grasped(cup3, left_arm)
Atom grasped(cup4, left_arm)
Atom grasped(cup5, left_arm)
Atom grasped(cup6, left_arm)
Atom grasped(cup7, left_arm)
Atom hand-free(left_arm)
end_variable
begin_variable
var2
-1
10
Atom grasped(cup0, right_arm)
Atom grasped(cup1, right_arm)
Atom grasped(cup2, right_arm)
Atom grasped(cup3, right_arm)
Atom grasped(cup4, right_arm)
Atom grasped(cup5, right_arm)
Atom grasped(cup6, right_arm)
Atom grasped(cup7, right_arm)
Atom grasped-sponge(right_arm)
Atom hand-free(right_arm)
end_variable
begin_variable
var3
-1
5
Atom on(cup0, table0)
Atom on(cup0, table1)
Atom on(cup0, table2)
Atom on(cup0, table3)
<none of those>
end_variable
begin_variable
var4
-1
5
Atom on(cup1, table0)
Atom on(cup1, table1)
Atom on(cup1, table2)
Atom on(cup1, table3)
<none of those>
end_variable
begin_variable
var5
-1
5
Atom on(cup2, table0)
Atom on(cup2, table1)
Atom on(cup2, table2)
Atom on(cup2, table3)
<none of those>
end_variable
begin_variable
var6
-1
5
Atom on(cup3, table0)
Atom on(cup3, table1)
Atom on(cup3, table2)
Atom on(cup3, table3)
<none of those>
end_variable
begin_variable
var7
-1
5
Atom on(cup4, table0)
Atom on(cup4, table1)
Atom on(cup4, table2)
Atom on(cup4, table3)
<none of those>
end_variable
begin_variable
var8
-1
5
Atom on(cup5, table0)
Atom on(cup5, table1)
Atom on(cup5, table2)
Atom on(cup5, table3)
<none of those>
end_variable
begin_variable
var9
-1
5
Atom on(cup6, table0)
Atom on(cup6, table1)
Atom on(cup6, table2)
Atom on(cup6, table3)
<none of those>
end_variable
begin_variable
var10
-1
5
Atom on(cup7, table0)
Atom on(cup7, table1)
Atom on(cup7, table2)
Atom on(cup7, table3)
<none of those>
end_variable
begin_variable
var11
-1
2
Atom robot-in-room(room0)
Atom robot-in-room(room1)
end_variable
begin_variable
var12
-1
2
Atom wiped(wipe0)
NegatedAtom wiped(wipe0)
end_variable
begin_variable
var13
-1
2
Atom wiped(wipe1)
NegatedAtom wiped(wipe1)
end_variable
begin_variable
var14
-1
2
Atom wiped(wipe2)
NegatedAtom wiped(wipe2)
end_variable
begin_variable
var15
-1
2
Atom wiped(wipe3)
NegatedAtom wiped(wipe3)
end_variable
11
begin_mutex_group
6
1 0
2 0
3 0
3 1
3 2
3 3
end_mutex_group
begin_mutex_group
9
1 0
1 1
1 2
1 3
1 4
1 5
1 6
1 7
1 8
end_mutex_group
begin_mutex_group
10
2 0
2 1
2 2
2 3
2 4
2 5
2 6
2 7
2 8
2 9
end_mutex_group
begin_mutex_group
6
1 1
2 1
4 0
4 1
4 2
4 3
end_mutex_group
begin_mutex_group
6
1 2
2 2
5 0
5 1
5 2
5 3
end_mutex_group
begin_mutex_group
6
1 3
2 3
6 0
6 1
6 2
6 3
end_mutex_group
begin_mutex_group
6
1 4
2 4
7 0
7 1
7 2
7 3
end_mutex_group
begin_mutex_group
6
1 5
2 5
8 0
8 1
8 2
8 3
end_mutex_group
begin_mutex_group
6
1 6
2 6
9 0
9 1
9 2
9 3
end_mutex_group
begin_mutex_group
6
1 7
2 7
10 0
10 1
10 2
10 3
end_mutex_group
begin_mutex_group
2
11 0
11 1
end_mutex_group
begin_state
1
8
9
3
3
0
2
0
2
2
2
0
1
1
1
1
end_state
begin_goal
12
3 0
4 0
5 0
6 0
7 0
8 0
9 0
10 0
12 0
13 0
14 0
15 0
end_goal
138
begin_operator
drive-through-door door0 room0 room1
2
0 0
11 0
2
0
1
0 11 0 1
0
end_operator
begin_operator
drive-through-door door0 room1 room0
2
0 0
11 1
2
0
1
0 11 1 0
0
end_operator
begin_operator
open-door room0 door0 left_arm
3
0 1
1 8
11 0
2
0
1
0 0 1 0
0
end_operator
begin_operator
open-door room1 door0 left_arm
3
0 1
1 8
11 1
2
0
1
0 0 1 0
0
end_operator
begin_operator
pickup-object room0 cup0 table0 left_arm
3
1 8
3 0
11 0
2
0
2
0 1 8 0
0 3 0 4
0
end_operator
begin_operator
pickup-object room0 cup0 table0 right_arm
3
2 9
3 0
11 0
2
0
2
0 2 9 0
0 3 0 4
0
end_operator
begin_operator
pickup-object room0 cup0 table1 left_arm
3
1 8
3 1
11 0
2
0
2
0 1 8 0
0 3 1 4
0
end_operator
begin_operator
pickup-object room0 cup0 table1 right_arm
3
2 9
3 1
11 0
2
0
2
0 2 9 0
0 3 1 4
0
end_operator
begin_operator
pickup-object room0 cup0 table2 left_arm
3
1 8
3 2
11 0
2
0
2
0 1 8 0
0 3 2 4
0
end_operator
begin_operator
pickup-object room0 cup0 table2 right_arm
3
2 9
3 2
11 0
2
0
2
0 2 9 0
0 3 2 4
0
end_operator
begin_operator
pickup-object room0 cup1 table0 left_arm
3
1 8
4 0
11 0
2
0
2
0 1 8 1
0 4 0 4
0
end_operator
begin_operator
pickup-object room0 cup1 table0 right_arm
3
2 9
4 0
11 0
2
0
2
0 2 9 1
0 4 0 4
0
end_operator
begin_operator
pickup-object room0 cup1 table1 left_arm
3
1 8
4 1
11 0
2
0
2
0 1 8 1
0 4 1 4
0
end_operator
begin_operator
pickup-object room0 cup1 table1 right_arm
3
2 9
4 1
11 0
2
0
2
0 2 9 1
0 4 1 4
0
end_operator
begin_operator
pickup-object room0 cup1 table2 left_arm
3
1 8
4 2
11 0
2
0
2
0 1 8 1
0 4 2 4
0
end_operator
begin_operator
pickup-object room0 cup1 table2 right_arm
3
2 9
4 2
11 0
2
0
2
0 2 9 1
0 4 2 4
0
end_operator
begin_operator
pickup-object room0 cup2 table0 left_arm
3
1 8
5 0
11 0
2
0
2
0 1 8 2
0 5 0 4
0
end_operator
begin_operator
pickup-object room0 cup2 table0 right_arm
3
2 9
5 0
11 0
2
0
2
0 2 9 2
0 5 0 4
0
end_operator
begin_operator
pickup-object room0 cup2 table1 left_arm
3
1 8
5 1
11 0
2
0
2
0 1 8 2
0 5 1 4
0
end_operator
begin_operator
pickup-object room0 cup2 table1 right_arm
3
2 9
5 1
11 0
2
0
2
0 2 9 2
0 5 1 4
0
end_operator
begin_operator
pickup-object room0 cup2 table2 left_arm
3
1 8
5 2
11 0
2
0
2
0 1 8 2
0 5 2 4
0
end_operator
begin_operator
pickup-object room0 cup2 table2 right_arm
3
2 9
5 2
11 0
2
0
2
0 2 9 2
0 5 2 4
0
end_operator
begin_operator
pickup-object room0 cup3 table0 left_arm
3
1 8
6 0
11 0
2
0
2
0 1 8 3
0 6 0 4
0
end_operator
begin_operator
pickup-object room0 cup3 table0 right_arm
3
2 9
6 0
11 0
2
0
2
0 2 9 3
0 6 0 4
0
end_operator
begin_operator
pickup-object room0 cup3 table1 left_arm
3
1 8
6 1
11 0
2
0
2
0 1 8 3
0 6 1 4
0
end_operator
begin_operator
pickup-object room0 cup3 table1 right_arm
3
2 9
6 1
11 0
2
0
2
0 2 9 3
0 6 1 4
0
end_operator
begin_operator
pickup-object room0 cup3 table2 left_arm
3
1 8
6 2
11 0
2
0
2
0 1 8 3
0 6 2 4
0
end_operator
begin_operator
pickup-object room0 cup3 table2 right_arm
3
2 9
6 2
11 0
2
0
2
0 2 9 3
0 6 2 4
0
end_operator
begin_operator
pickup-object room0 cup4 table0 left_arm
3
1 8
7 0
11 0
2
0
2
0 1 8 4
0 7 0 4
0
end_operator
begin_operator
pickup-object room0 cup4 table0 right_arm
3
2 9
7 0
11 0
2
0
2
0 2 9 4
0 7 0 4
0
end_operator
begin_operator
pickup-object room0 cup4 table1 left_arm
3
1 8
7 1
11 0
2
0
2
0 1 8 4
0 7 1 4
0
end_operator
begin_operator
pickup-object room0 cup4 table1 right_arm
3
2 9
7 1
11 0
2
0
2
0 2 9 4
0 7 1 4
0
end_operator
begin_operator
pickup-object room0 cup4 table2 left_arm
3
1 8
7 2
11 0
2
0
2
0 1 8 4
0 7 2 4
0
end_operator
begin_operator
pickup-object room0 cup4 table2 right_arm
3
2 9
7 2
11 0
2
0
2
0 2 9 4
0 7 2 4
0
end_operator
begin_operator
pickup-object room0 cup5 table0 left_arm
3
1 8
8 0
11 0
2
0
2
0 1 8 5
0 8 0 4
0
end_operator
begin_operator
pickup-object room0 cup5 table0 right_arm
3
2 9
8 0
11 0
2
0
2
0 2 9 5
0 8 0 4
0
end_operator
begin_operator
pickup-object room0 cup5 table1 left_arm
3
1 8
8 1
11 0
2
0
2
0 1 8 5
0 8 1 4
0
end_operator
begin_operator
pickup-object room0 cup5 table1 right_arm
3
2 9
8 1
11 0
2
0
2
0 2 9 5
0 8 1 4
0
end_operator
begin_operator
pickup-object room0 cup5 table2 left_arm
3
1 8
8 2
11 0
2
0
2
0 1 8 5
0 8 2 4
0
end_operator
begin_operator
pickup-object room0 cup5 table2 right_arm
3
2 9
8 2
11 0
2
0
2
0 2 9 5
0 8 2 4
0
end_operator
begin_operator
pickup-object room0 cup6 table0 left_arm
3
1 8
9 0
11 0
2
0
2
0 1 8 6
0 9 0 4
0
end_operator
begin_operator
pickup-object room0 cup6 table0 right_arm
3
2 9
9 0
11 0
2
0
2
0 2 9 6
0 9 0 4
0
end_operator
begin_operator
pickup-object room0 cup6 table1 left_arm
3
1 8
9 1
11 0
2
0
2
0 1 8 6
0 9 1 4
0
end_operator
begin_operator
pickup-object room0 cup6 table1 right_arm
3
2 9
9 1
11 0
2
0
2
0 2 9 6
0 9 1 4
0
end_operator
begin_operator
pickup-object room0 cup6 table2 left_arm
3
1 8
9 2
11 0
2
0
2
0 1 8 6
0 9 2 4
0
end_operator
begin_operator
pickup-object room0 cup6 table2 right_arm
3
2 9
9 2
11 0
2
0
2
0 2 9 6
0 9 2 4
0
end_operator
begin_operator
pickup-object room0 cup7 table0 left_arm
3
1 8
10 0
11 0
2
0
2
0 1 8 7
0 10 0 4
0
end_operator
begin_operator
pickup-object room0 cup7 table0 right_arm
3
2 9
10 0
11 0
2
0
2
0 2 9 7
0 10 0 4
0
end_operator
begin_operator
pickup-object room0 cup7 table1 left_arm
3
1 8
10 1
11 0
2
0
2
0 1 8 7
0 10 1 4
0
end_operator
begin_operator
pickup-object room0 cup7 table1 right_arm
3
2 9
10 1
11 0
2
0
2
0 2 9 7
0 10 1 4
0
end_operator
begin_operator
pickup-object room0 cup7 table2 left_arm
3
1 8
10 2
11 0
2
0
2
0 1 8 7
0 10 2 4
0
end_operator
begin_operator
pickup-object room0 cup7 table2 right_arm
3
2 9
10 2
11 0
2
0
2
0 2 9 7
0 10 2 4
0
end_operator
begin_operator
pickup-object room1 cup0 table3 left_arm
3
1 8
3 3
11 1
2
0
2
0 1 8 0
0 3 3 4
0
end_operator
begin_operator
pickup-object room1 cup0 table3 right_arm
3
2 9
3 3
11 1
2
0
2
0 2 9 0
0 3 3 4
0
end_operator
begin_operator
pickup-object room1 cup1 table3 left_arm
3
1 8
4 3
11 1
2
0
2
0 1 8 1
0 4 3 4
0
end_operator
begin_operator
pickup-object room1 cup1 table3 right_arm
3
2 9
4 3
11 1
2
0
2
0 2 9 1
0 4 3 4
0
end_operator
begin_operator
pickup-object room1 cup2 table3 left_arm
3
1 8
5 3
11 1
2
0
2
0 1 8 2
0 5 3 4
0
end_operator
begin_operator
pickup-object room1 cup2 table3 right_arm
3
2 9
5 3
11 1
2
0
2
0 2 9 2
0 5 3 4
0
end_operator
begin_operator
pickup-object room1 cup3 table3 left_arm
3
1 8
6 3
11 1
2
0
2
0 1 8 3
0 6 3 4
0
end_operator
begin_operator
pickup-object room1 cup3 table3 right_arm
3
2 9
6 3
11 1
2
0
2
0 2 9 3
0 6 3 4
0
end_operator
begin_operator
pickup-object room1 cup4 table3 left_arm
3
1 8
7 3
11 1
2
0
2
0 1 8 4
0 7 3 4
0
end_operator
begin_operator
pickup-object room1 cup4 table3 right_arm
3
2 9
7 3
11 1
2
0
2
0 2 9 4
0 7 3 4
0
end_operator
begin_operator
pickup-object room1 cup5 table3 left_arm
3
1 8
8 3
11 1
2
0
2
0 1 8 5
0 8 3 4
0
end_operator
begin_operator
pickup-object room1 cup5 table3 right_arm
3
2 9
8 3
11 1
2
0
2
0 2 9 5
0 8 3 4
0
end_operator
begin_operator
pickup-object room1 cup6 table3 left_arm
3
1 8
9 3
11 1
2
0
2
0 1 8 6
0 9 3 4
0
end_operator
begin_operator
pickup-object room1 cup6 table3 right_arm
3
2 9
9 3
11 1
2
0
2
0 2 9 6
0 9 3 4
0
end_operator
begin_operator
pickup-object room1 cup7 table3 left_arm
3
1 8
10 3
11 1
2
0
2
0 1 8 7
0 10 3 4
0
end_operator
begin_operator
pickup-object room1 cup7 table3 right_arm
3
2 9
10 3
11 1
2
0
2
0 2 9 7
0 10 3 4
0
end_operator
begin_operator
pickup-sponge right_arm
1
2 9
2
0
1
0 2 9 8
0
end_operator
begin_operator
putdown-object room0 cup0 table0 left_arm
2
1 0
11 0
2
0
2
0 1 0 8
0 3 -1 0
0
end_operator
begin_operator
putdown-object room0 cup0 table0 right_arm
2
2 0
11 0
2
0
2
0 2 0 9
0 3 -1 0
0
end_operator
begin_operator
putdown-object room0 cup0 table1 left_arm
2
1 0
11 0
2
0
2
0 1 0 8
0 3 -1 1
0
end_operator
begin_operator
putdown-object room0 cup0 table1 right_arm
2
2 0
11 0
2
0
2
0 2 0 9
0 3 -1 1
0
end_operator
begin_operator
putdown-object room0 cup0 table2 left_arm
2
1 0
11 0
2
0
2
0 1 0 8
0 3 -1 2
0
end_operator
begin_operator
putdown-object room0 cup0 table2 right_arm
2
2 0
11 0
2
0
2
0 2 0 9
0 3 -1 2
0
end_operator
begin_operator
putdown-object room0 cup1 table0 left_arm
2
1 1
11 0
2
0
2
0 1 1 8
0 4 -1 0
0
end_operator
begin_operator
putdown-object room0 cup1 table0 right_arm
2
2 1
11 0
2
0
2
0 2 1 9
0 4 -1 0
0
end_operator
begin_operator
putdown-object room0 cup1 table1 left_arm
2
1 1
11 0
2
0
2
0 1 1 8
0 4 -1 1
0
end_operator
begin_operator
putdown-object room0 cup1 table1 right_arm
2
2 1
11 0
2
0
2
0 2 1 9
0 4 -1 1
0
end_operator
begin_operator
putdown-object room0 cup1 table2 left_arm
2
1 1
11 0
2
0
2
0 1 1 8
0 4 -1 2
0
end_operator
begin_operator
putdown-object room0 cup1 table2 right_arm
2
2 1
11 0
2
0
2
0 2 1 9
0 4 -1 2
0
end_operator
begin_operator
putdown-object room0 cup2 table0 left_arm
2
1 2
11 0
2
0
2
0 1 2 8
0 5 -1 0
0
end_operator
begin_operator
putdown-object room0 cup2 table0 right_arm
2
2 2
11 0
2
0
2
0 2 2 9
0 5 -1 0
0
end_operator
begin_operator
putdown-object room0 cup2 table1 left_arm
2
1 2
11 0
2
0
2
0 1 2 8
0 5 -1 1
0
end_operator
begin_operator
putdown-object room0 cup2 table1 right_arm
2
2 2
11 0
2
0
2
0 2 2 9
0 5 -1 1
0
end_operator
begin_operator
putdown-object room0 cup2 table2 left_arm
2
1 2
11 0
2
0
2
0 1 2 8
0 5 -1 2
0
end_operator
begin_operator
putdown-object room0 cup2 table2 right_arm
2
2 2
11 0
2
0
2
0 2 2 9
0 5 -1 2
0
end_operator
begin_operator
putdown-object room0 cup3 table0 left_arm
2
1 3
11 0
2
0
2
0 1 3 8
0 6 -1 0
0
end_operator
begin_operator
putdown-object room0 cup3 table0 right_arm
2
2 3
11 0
2
0
2
0 2 3 9
0 6 -1 0
0
end_operator
begin_operator
putdown-object room0 cup3 table1 left_arm
2
1 3
11 0
2
0
2
0 1 3 8
0 6 -1 1
0
end_operator
begin_operator
putdown-object room0 cup3 table1 right_arm
2
2 3
11 0
2
0
2
0 2 3 9
0 6 -1 1
0
end_operator
begin_operator
putdown-object room0 cup3 table2 left_arm
2
1 3
11 0
2
0
2
0 1 3 8
0 6 -1 2
0
end_operator
begin_operator
putdown-object room0 cup3 table2 right_arm
2
2 3
11 0
2
0
2
0 2 3 9
0 6 -1 2
0
end_operator
begin_operator
putdown-object room0 cup4 table0 left_arm
2
1 4
11 0
2
0
2
0 1 4 8
0 7 -1 0
0
end_operator
begin_operator
putdown-object room0 cup4 table0 right_arm
2
2 4
11 0
2
0
2
0 2 4 9
0 7 -1 0
0
end_operator
begin_operator
putdown-object room0 cup4 table1 left_arm
2
1 4
11 0
2
0
2
0 1 4 8
0 7 -1 1
0
end_operator
begin_operator
putdown-object room0 cup4 table1 right_arm
2
2 4
11 0
2
0
2
0 2 4 9
0 7 -1 1
0
end_operator
begin_operator
putdown-object room0 cup4 table2 left_arm
2
1 4
11 0
2
0
2
0 1 4 8
0 7 -1 2
0
end_operator
begin_operator
putdown-object room0 cup4 table2 right_arm
2
2 4
11 0
2
0
2
0 2 4 9
0 7 -1 2
0
end_operator
begin_operator
putdown-object room0 cup5 table0 left_arm
2
1 5
11 0
2
0
2
0 1 5 8
0 8 -1 0
0
end_operator
begin_operator
putdown-object room0 cup5 table0 right_arm
2
2 5
11 0
2
0
2
0 2 5 9
0 8 -1 0
0
end_operator
begin_operator
putdown-object room0 cup5 table1 left_arm
2
1 5
11 0
2
0
2
0 1 5 8
0 8 -1 1
0
end_operator
begin_operator
putdown-object room0 cup5 table1 right_arm
2
2 5
11 0
2
0
2
0 2 5 9
0 8 -1 1
0
end_operator
begin_operator
putdown-object room0 cup5 table2 left_arm
2
1 5
11 0
2
0
2
0 1 5 8
0 8 -1 2
0
end_operator
begin_operator
putdown-object room0 cup5 table2 right_arm
2
2 5
11 0
2
0
2
0 2 5 9
0 8 -1 2
0
end_operator
begin_operator
putdown-object room0 cup6 table0 left_arm
2
1 6
11 0
2
0
2
0 1 6 8
0 9 -1 0
0
end_operator
begin_operator
putdown-object room0 cup6 table0 right_arm
2
2 6
11 0
2
0
2
0 2 6 9
0 9 -1 0
0
end_operator
begin_operator
putdown-object room0 cup6 table1 left_arm
2
1 6
11 0
2
0
2
0 1 6 8
0 9 -1 1
0
end_operator
begin_operator
putdown-object room0 cup6 table1 right_arm
2
2 6
11 0
2
0
2
0 2 6 9
0 9 -1 1
0
end_operator
begin_operator
putdown-object room0 cup6 table2 left_arm
2
1 6
11 0
2
0
2
0 1 6 8
0 9 -1 2
0
end_operator
begin_operator
putdown-object room0 cup6 table2 right_arm
2
2 6
11 0
2
0
2
0 2 6 9
0 9 -1 2
0
end_operator
begin_operator
putdown-object room0 cup7 table0 left_arm
2
1 7
11 0
2
0
2
0 1 7 8
0 10 -1 0
0
end_operator
begin_operator
putdown-object room0 cup7 table0 right_arm
2
2 7
11 0
2
0
2
0 2 7 9
0 10 -1 0
0
end_operator
begin_operator
putdown-object room0 cup7 table1 left_arm
2
1 7
11 0
2
0
2
0 1 7 8
0 10 -1 1
0
end_operator
begin_operator
putdown-object room0 cup7 table1 right_arm
2
2 7
11 0
2
0
2
0 2 7 9
0 10 -1 1
0
end_operator
begin_operator
putdown-object room0 cup7 table2 left_arm
2
1 7
11 0
2
0
2
0 1 7 8
0 10 -1 2
0
end_operator
begin_operator
putdown-object room0 cup7 table2 right_arm
2
2 7
11 0
2
0
2
0 2 7 9
0 10 -1 2
0
end_operator
begin_operator
putdown-object room1 cup0 table3 left_arm
2
1 0
11 1
2
0
2
0 1 0 8
0 3 -1 3
0
end_operator
begin_operator
putdown-object room1 cup0 table3 right_arm
2
2 0
11 1
2
0
2
0 2 0 9
0 3 -1 3
0
end_operator
begin_operator
putdown-object room1 cup1 table3 left_arm
2
1 1
11 1
2
0
2
0 1 1 8
0 4 -1 3
0
end_operator
begin_operator
putdown-object room1 cup1 table3 right_arm
2
2 1
11 1
2
0
2
0 2 1 9
0 4 -1 3
0
end_operator
begin_operator
putdown-object room1 cup2 table3 left_arm
2
1 2
11 1
2
0
2
0 1 2 8
0 5 -1 3
0
end_operator
begin_operator
putdown-object room1 cup2 table3 right_arm
2
2 2
11 1
2
0
2
0 2 2 9
0 5 -1 3
0
end_operator
begin_operator
putdown-object room1 cup3 table3 left_arm
2
1 3
11 1
2
0
2
0 1 3 8
0 6 -1 3
0
end_operator
begin_operator
putdown-object room1 cup3 table3 right_arm
2
2 3
11 1
2
0
2
0 2 3 9
0 6 -1 3
0
end_operator
begin_operator
putdown-object room1 cup4 table3 left_arm
2
1 4
11 1
2
0
2
0 1 4 8
0 7 -1 3
0
end_operator
begin_operator
putdown-object room1 cup4 table3 right_arm
2
2 4
11 1
2
0
2
0 2 4 9
0 7 -1 3
0
end_operator
begin_operator
putdown-object room1 cup5 table3 left_arm
2
1 5
11 1
2
0
2
0 1 5 8
0 8 -1 3
0
end_operator
begin_operator
putdown-object room1 cup5 table3 right_arm
2
2 5
11 1
2
0
2
0 2 5 9
0 8 -1 3
0
end_operator
begin_operator
putdown-object room1 cup6 table3 left_arm
2
1 6
11 1
2
0
2
0 1 6 8
0 9 -1 3
0
end_operator
begin_operator
putdown-object room1 cup6 table3 right_arm
2
2 6
11 1
2
0
2
0 2 6 9
0 9 -1 3
0
end_operator
begin_operator
putdown-object room1 cup7 table3 left_arm
2
1 7
11 1
2
0
2
0 1 7 8
0 10 -1 3
0
end_operator
begin_operator
putdown-object room1 cup7 table3 right_arm
2
2 7
11 1
2
0
2
0 2 7 9
0 10 -1 3
0
end_operator
begin_operator
putdown-sponge right_arm
1
2 8
2
0
1
0 2 8 9
0
end_operator
begin_operator
wipe room0 wipe1 table2 right_arm
3
2 8
11 0
13 1
2
0
1
0 13 1 0
0
end_operator
begin_operator
wipe room0 wipe2 table2 right_arm
3
2 8
11 0
14 1
2
0
1
0 14 1 0
0
end_operator
begin_operator
wipe room0 wipe3 table2 right_arm
3
2 8
11 0
15 1
2
0
1
0 15 1 0
0
end_operator
begin_operator
wipe room1 wipe0 table3 right_arm
3
2 8
11 1
12 1
2
0
1
0 12 1 0
0
end_operator
0
