begin_version
3
end_version
begin_metric
0
end_metric
22
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
2
Atom door-open(door1)
NegatedAtom door-open(door1)
end_variable
begin_variable
var2
-1
8
Atom grasped(cup0, left_arm)
Atom grasped(cup1, left_arm)
Atom grasped(cup2, left_arm)
Atom grasped(cup3, left_arm)
Atom grasped(cup4, left_arm)
Atom grasped(cup5, left_arm)
Atom grasped(cup6, left_arm)
Atom hand-free(left_arm)
end_variable
begin_variable
var3
-1
9
Atom grasped(cup0, right_arm)
Atom grasped(cup1, right_arm)
Atom grasped(cup2, right_arm)
Atom grasped(cup3, right_arm)
Atom grasped(cup4, right_arm)
Atom grasped(cup5, right_arm)
Atom grasped(cup6, right_arm)
Atom grasped-sponge(right_arm)
Atom hand-free(right_arm)
end_variable
begin_variable
var4
-1
7
Atom on(cup0, table0)
Atom on(cup0, table1)
Atom on(cup0, table2)
Atom on(cup0, table3)
Atom on(cup0, table4)
Atom on(cup0, table5)
<none of those>
end_variable
begin_variable
var5
-1
7
Atom on(cup1, table0)
Atom on(cup1, table1)
Atom on(cup1, table2)
Atom on(cup1, table3)
Atom on(cup1, table4)
Atom on(cup1, table5)
<none of those>
end_variable
begin_variable
var6
-1
7
Atom on(cup2, table0)
Atom on(cup2, table1)
Atom on(cup2, table2)
Atom on(cup2, table3)
Atom on(cup2, table4)
Atom on(cup2, table5)
<none of those>
end_variable
begin_variable
var7
-1
7
Atom on(cup3, table0)
Atom on(cup3, table1)
Atom on(cup3, table2)
Atom on(cup3, table3)
Atom on(cup3, table4)
Atom on(cup3, table5)
<none of those>
end_variable
begin_variable
var8
-1
7
Atom on(cup4, table0)
Atom on(cup4, table1)
Atom on(cup4, table2)
Atom on(cup4, table3)
Atom on(cup4, table4)
Atom on(cup4, table5)
<none of those>
end_variable
begin_variable
var9
-1
7
Atom on(cup5, table0)
Atom on(cup5, table1)
Atom on(cup5, table2)
Atom on(cup5, table3)
Atom on(cup5, table4)
Atom on(cup5, table5)
<none of those>
end_variable
begin_variable
var10
-1
7
Atom on(cup6, table0)
Atom on(cup6, table1)
Atom on(cup6, table2)
Atom on(cup6, table3)
Atom on(cup6, table4)
Atom on(cup6, table5)
<none of those>
end_variable
begin_variable
var11
-1
3
Atom robot-in-room(room0)
Atom robot-in-room(room1)
Atom robot-in-room(room2)
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
begin_variable
var16
-1
2
Atom wiped(wipe4)
NegatedAtom wiped(wipe4)
end_variable
begin_variable
var17
-1
2
Atom wiped(wipe5)
NegatedAtom wiped(wipe5)
end_variable
begin_variable
var18
-1
2
Atom wiped(wipe6)
NegatedAtom wiped(wipe6)
end_variable
begin_variable
var19
-1
2
Atom wiped(wipe7)
NegatedAtom wiped(wipe7)
end_variable
begin_variable
var20
-1
2
Atom wiped(wipe8)
NegatedAtom wiped(wipe8)
end_variable
begin_variable
var21
-1
2
Atom wiped(wipe9)
NegatedAtom wiped(wipe9)
end_variable
10
begin_mutex_group
8
2 0
3 0
4 0
4 1
4 2
4 3
4 4
4 5
end_mutex_group
begin_mutex_group
8
2 0
2 1
2 2
2 3
2 4
2 5
2 6
2 7
end_mutex_group
begin_mutex_group
9
3 0
3 1
3 2
3 3
3 4
3 5
3 6
3 7
3 8
end_mutex_group
begin_mutex_group
8
2 1
3 1
5 0
5 1
5 2
5 3
5 4
5 5
end_mutex_group
begin_mutex_group
8
2 2
3 2
6 0
6 1
6 2
6 3
6 4
6 5
end_mutex_group
begin_mutex_group
8
2 3
3 3
7 0
7 1
7 2
7 3
7 4
7 5
end_mutex_group
begin_mutex_group
8
2 4
3 4
8 0
8 1
8 2
8 3
8 4
8 5
end_mutex_group
begin_mutex_group
8
2 5
3 5
9 0
9 1
9 2
9 3
9 4
9 5
end_mutex_group
begin_mutex_group
8
2 6
3 6
10 0
10 1
10 2
10 3
10 4
10 5
end_mutex_group
begin_mutex_group
3
11 0
11 1
11 2
end_mutex_group
begin_state
1
1
7
8
0
4
4
2
2
5
5
2
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
end_state
begin_goal
17
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
16 0
17 0
18 0
19 0
20 0
21 0
end_goal
188
begin_operator
drive-through-door door0 room0 room2
2
0 0
11 0
2
0
1
0 11 0 2
0
end_operator
begin_operator
drive-through-door door0 room2 room0
2
0 0
11 2
2
0
1
0 11 2 0
0
end_operator
begin_operator
drive-through-door door1 room1 room2
2
1 0
11 1
2
0
1
0 11 1 2
0
end_operator
begin_operator
drive-through-door door1 room2 room1
2
1 0
11 2
2
0
1
0 11 2 1
0
end_operator
begin_operator
open-door room0 door0 left_arm
3
0 1
2 7
11 0
2
0
1
0 0 1 0
0
end_operator
begin_operator
open-door room1 door1 left_arm
3
1 1
2 7
11 1
2
0
1
0 1 1 0
0
end_operator
begin_operator
open-door room2 door0 left_arm
3
0 1
2 7
11 2
2
0
1
0 0 1 0
0
end_operator
begin_operator
open-door room2 door1 left_arm
3
1 1
2 7
11 2
2
0
1
0 1 1 0
0
end_operator
begin_operator
pickup-object room0 cup0 table1 left_arm
3
2 7
4 1
11 0
2
0
2
0 2 7 0
0 4 1 6
0
end_operator
begin_operator
pickup-object room0 cup0 table1 right_arm
3
3 8
4 1
11 0
2
0
2
0 3 8 0
0 4 1 6
0
end_operator
begin_operator
pickup-object room0 cup1 table1 left_arm
3
2 7
5 1
11 0
2
0
2
0 2 7 1
0 5 1 6
0
end_operator
begin_operator
pickup-object room0 cup1 table1 right_arm
3
3 8
5 1
11 0
2
0
2
0 3 8 1
0 5 1 6
0
end_operator
begin_operator
pickup-object room0 cup2 table1 left_arm
3
2 7
6 1
11 0
2
0
2
0 2 7 2
0 6 1 6
0
end_operator
begin_operator
pickup-object room0 cup2 table1 right_arm
3
3 8
6 1
11 0
2
0
2
0 3 8 2
0 6 1 6
0
end_operator
begin_operator
pickup-object room0 cup3 table1 left_arm
3
2 7
7 1
11 0
2
0
2
0 2 7 3
0 7 1 6
0
end_operator
begin_operator
pickup-object room0 cup3 table1 right_arm
3
3 8
7 1
11 0
2
0
2
0 3 8 3
0 7 1 6
0
end_operator
begin_operator
pickup-object room0 cup4 table1 left_arm
3
2 7
8 1
11 0
2
0
2
0 2 7 4
0 8 1 6
0
end_operator
begin_operator
pickup-object room0 cup4 table1 right_arm
3
3 8
8 1
11 0
2
0
2
0 3 8 4
0 8 1 6
0
end_operator
begin_operator
pickup-object room0 cup5 table1 left_arm
3
2 7
9 1
11 0
2
0
2
0 2 7 5
0 9 1 6
0
end_operator
begin_operator
pickup-object room0 cup5 table1 right_arm
3
3 8
9 1
11 0
2
0
2
0 3 8 5
0 9 1 6
0
end_operator
begin_operator
pickup-object room0 cup6 table1 left_arm
3
2 7
10 1
11 0
2
0
2
0 2 7 6
0 10 1 6
0
end_operator
begin_operator
pickup-object room0 cup6 table1 right_arm
3
3 8
10 1
11 0
2
0
2
0 3 8 6
0 10 1 6
0
end_operator
begin_operator
pickup-object room1 cup0 table0 left_arm
3
2 7
4 0
11 1
2
0
2
0 2 7 0
0 4 0 6
0
end_operator
begin_operator
pickup-object room1 cup0 table0 right_arm
3
3 8
4 0
11 1
2
0
2
0 3 8 0
0 4 0 6
0
end_operator
begin_operator
pickup-object room1 cup0 table2 left_arm
3
2 7
4 2
11 1
2
0
2
0 2 7 0
0 4 2 6
0
end_operator
begin_operator
pickup-object room1 cup0 table2 right_arm
3
3 8
4 2
11 1
2
0
2
0 3 8 0
0 4 2 6
0
end_operator
begin_operator
pickup-object room1 cup0 table3 left_arm
3
2 7
4 3
11 1
2
0
2
0 2 7 0
0 4 3 6
0
end_operator
begin_operator
pickup-object room1 cup0 table3 right_arm
3
3 8
4 3
11 1
2
0
2
0 3 8 0
0 4 3 6
0
end_operator
begin_operator
pickup-object room1 cup0 table5 left_arm
3
2 7
4 5
11 1
2
0
2
0 2 7 0
0 4 5 6
0
end_operator
begin_operator
pickup-object room1 cup0 table5 right_arm
3
3 8
4 5
11 1
2
0
2
0 3 8 0
0 4 5 6
0
end_operator
begin_operator
pickup-object room1 cup1 table0 left_arm
3
2 7
5 0
11 1
2
0
2
0 2 7 1
0 5 0 6
0
end_operator
begin_operator
pickup-object room1 cup1 table0 right_arm
3
3 8
5 0
11 1
2
0
2
0 3 8 1
0 5 0 6
0
end_operator
begin_operator
pickup-object room1 cup1 table2 left_arm
3
2 7
5 2
11 1
2
0
2
0 2 7 1
0 5 2 6
0
end_operator
begin_operator
pickup-object room1 cup1 table2 right_arm
3
3 8
5 2
11 1
2
0
2
0 3 8 1
0 5 2 6
0
end_operator
begin_operator
pickup-object room1 cup1 table3 left_arm
3
2 7
5 3
11 1
2
0
2
0 2 7 1
0 5 3 6
0
end_operator
begin_operator
pickup-object room1 cup1 table3 right_arm
3
3 8
5 3
11 1
2
0
2
0 3 8 1
0 5 3 6
0
end_operator
begin_operator
pickup-object room1 cup1 table5 left_arm
3
2 7
5 5
11 1
2
0
2
0 2 7 1
0 5 5 6
0
end_operator
begin_operator
pickup-object room1 cup1 table5 right_arm
3
3 8
5 5
11 1
2
0
2
0 3 8 1
0 5 5 6
0
end_operator
begin_operator
pickup-object room1 cup2 table0 left_arm
3
2 7
6 0
11 1
2
0
2
0 2 7 2
0 6 0 6
0
end_operator
begin_operator
pickup-object room1 cup2 table0 right_arm
3
3 8
6 0
11 1
2
0
2
0 3 8 2
0 6 0 6
0
end_operator
begin_operator
pickup-object room1 cup2 table2 left_arm
3
2 7
6 2
11 1
2
0
2
0 2 7 2
0 6 2 6
0
end_operator
begin_operator
pickup-object room1 cup2 table2 right_arm
3
3 8
6 2
11 1
2
0
2
0 3 8 2
0 6 2 6
0
end_operator
begin_operator
pickup-object room1 cup2 table3 left_arm
3
2 7
6 3
11 1
2
0
2
0 2 7 2
0 6 3 6
0
end_operator
begin_operator
pickup-object room1 cup2 table3 right_arm
3
3 8
6 3
11 1
2
0
2
0 3 8 2
0 6 3 6
0
end_operator
begin_operator
pickup-object room1 cup2 table5 left_arm
3
2 7
6 5
11 1
2
0
2
0 2 7 2
0 6 5 6
0
end_operator
begin_operator
pickup-object room1 cup2 table5 right_arm
3
3 8
6 5
11 1
2
0
2
0 3 8 2
0 6 5 6
0
end_operator
begin_operator
pickup-object room1 cup3 table0 left_arm
3
2 7
7 0
11 1
2
0
2
0 2 7 3
0 7 0 6
0
end_operator
begin_operator
pickup-object room1 cup3 table0 right_arm
3
3 8
7 0
11 1
2
0
2
0 3 8 3
0 7 0 6
0
end_operator
begin_operator
pickup-object room1 cup3 table2 left_arm
3
2 7
7 2
11 1
2
0
2
0 2 7 3
0 7 2 6
0
end_operator
begin_operator
pickup-object room1 cup3 table2 right_arm
3
3 8
7 2
11 1
2
0
2
0 3 8 3
0 7 2 6
0
end_operator
begin_operator
pickup-object room1 cup3 table3 left_arm
3
2 7
7 3
11 1
2
0
2
0 2 7 3
0 7 3 6
0
end_operator
begin_operator
pickup-object room1 cup3 table3 right_arm
3
3 8
7 3
11 1
2
0
2
0 3 8 3
0 7 3 6
0
end_operator
begin_operator
pickup-object room1 cup3 table5 left_arm
3
2 7
7 5
11 1
2
0
2
0 2 7 3
0 7 5 6
0
end_operator
begin_operator
pickup-object room1 cup3 table5 right_arm
3
3 8
7 5
11 1
2
0
2
0 3 8 3
0 7 5 6
0
end_operator
begin_operator
pickup-object room1 cup4 table0 left_arm
3
2 7
8 0
11 1
2
0
2
0 2 7 4
0 8 0 6
0
end_operator
begin_operator
pickup-object room1 cup4 table0 right_arm
3
3 8
8 0
11 1
2
0
2
0 3 8 4
0 8 0 6
0
end_operator
begin_operator
pickup-object room1 cup4 table2 left_arm
3
2 7
8 2
11 1
2
0
2
0 2 7 4
0 8 2 6
0
end_operator
begin_operator
pickup-object room1 cup4 table2 right_arm
3
3 8
8 2
11 1
2
0
2
0 3 8 4
0 8 2 6
0
end_operator
begin_operator
pickup-object room1 cup4 table3 left_arm
3
2 7
8 3
11 1
2
0
2
0 2 7 4
0 8 3 6
0
end_operator
begin_operator
pickup-object room1 cup4 table3 right_arm
3
3 8
8 3
11 1
2
0
2
0 3 8 4
0 8 3 6
0
end_operator
begin_operator
pickup-object room1 cup4 table5 left_arm
3
2 7
8 5
11 1
2
0
2
0 2 7 4
0 8 5 6
0
end_operator
begin_operator
pickup-object room1 cup4 table5 right_arm
3
3 8
8 5
11 1
2
0
2
0 3 8 4
0 8 5 6
0
end_operator
begin_operator
pickup-object room1 cup5 table0 left_arm
3
2 7
9 0
11 1
2
0
2
0 2 7 5
0 9 0 6
0
end_operator
begin_operator
pickup-object room1 cup5 table0 right_arm
3
3 8
9 0
11 1
2
0
2
0 3 8 5
0 9 0 6
0
end_operator
begin_operator
pickup-object room1 cup5 table2 left_arm
3
2 7
9 2
11 1
2
0
2
0 2 7 5
0 9 2 6
0
end_operator
begin_operator
pickup-object room1 cup5 table2 right_arm
3
3 8
9 2
11 1
2
0
2
0 3 8 5
0 9 2 6
0
end_operator
begin_operator
pickup-object room1 cup5 table3 left_arm
3
2 7
9 3
11 1
2
0
2
0 2 7 5
0 9 3 6
0
end_operator
begin_operator
pickup-object room1 cup5 table3 right_arm
3
3 8
9 3
11 1
2
0
2
0 3 8 5
0 9 3 6
0
end_operator
begin_operator
pickup-object room1 cup5 table5 left_arm
3
2 7
9 5
11 1
2
0
2
0 2 7 5
0 9 5 6
0
end_operator
begin_operator
pickup-object room1 cup5 table5 right_arm
3
3 8
9 5
11 1
2
0
2
0 3 8 5
0 9 5 6
0
end_operator
begin_operator
pickup-object room1 cup6 table0 left_arm
3
2 7
10 0
11 1
2
0
2
0 2 7 6
0 10 0 6
0
end_operator
begin_operator
pickup-object room1 cup6 table0 right_arm
3
3 8
10 0
11 1
2
0
2
0 3 8 6
0 10 0 6
0
end_operator
begin_operator
pickup-object room1 cup6 table2 left_arm
3
2 7
10 2
11 1
2
0
2
0 2 7 6
0 10 2 6
0
end_operator
begin_operator
pickup-object room1 cup6 table2 right_arm
3
3 8
10 2
11 1
2
0
2
0 3 8 6
0 10 2 6
0
end_operator
begin_operator
pickup-object room1 cup6 table3 left_arm
3
2 7
10 3
11 1
2
0
2
0 2 7 6
0 10 3 6
0
end_operator
begin_operator
pickup-object room1 cup6 table3 right_arm
3
3 8
10 3
11 1
2
0
2
0 3 8 6
0 10 3 6
0
end_operator
begin_operator
pickup-object room1 cup6 table5 left_arm
3
2 7
10 5
11 1
2
0
2
0 2 7 6
0 10 5 6
0
end_operator
begin_operator
pickup-object room1 cup6 table5 right_arm
3
3 8
10 5
11 1
2
0
2
0 3 8 6
0 10 5 6
0
end_operator
begin_operator
pickup-object room2 cup0 table4 left_arm
3
2 7
4 4
11 2
2
0
2
0 2 7 0
0 4 4 6
0
end_operator
begin_operator
pickup-object room2 cup0 table4 right_arm
3
3 8
4 4
11 2
2
0
2
0 3 8 0
0 4 4 6
0
end_operator
begin_operator
pickup-object room2 cup1 table4 left_arm
3
2 7
5 4
11 2
2
0
2
0 2 7 1
0 5 4 6
0
end_operator
begin_operator
pickup-object room2 cup1 table4 right_arm
3
3 8
5 4
11 2
2
0
2
0 3 8 1
0 5 4 6
0
end_operator
begin_operator
pickup-object room2 cup2 table4 left_arm
3
2 7
6 4
11 2
2
0
2
0 2 7 2
0 6 4 6
0
end_operator
begin_operator
pickup-object room2 cup2 table4 right_arm
3
3 8
6 4
11 2
2
0
2
0 3 8 2
0 6 4 6
0
end_operator
begin_operator
pickup-object room2 cup3 table4 left_arm
3
2 7
7 4
11 2
2
0
2
0 2 7 3
0 7 4 6
0
end_operator
begin_operator
pickup-object room2 cup3 table4 right_arm
3
3 8
7 4
11 2
2
0
2
0 3 8 3
0 7 4 6
0
end_operator
begin_operator
pickup-object room2 cup4 table4 left_arm
3
2 7
8 4
11 2
2
0
2
0 2 7 4
0 8 4 6
0
end_operator
begin_operator
pickup-object room2 cup4 table4 right_arm
3
3 8
8 4
11 2
2
0
2
0 3 8 4
0 8 4 6
0
end_operator
begin_operator
pickup-object room2 cup5 table4 left_arm
3
2 7
9 4
11 2
2
0
2
0 2 7 5
0 9 4 6
0
end_operator
begin_operator
pickup-object room2 cup5 table4 right_arm
3
3 8
9 4
11 2
2
0
2
0 3 8 5
0 9 4 6
0
end_operator
begin_operator
pickup-object room2 cup6 table4 left_arm
3
2 7
10 4
11 2
2
0
2
0 2 7 6
0 10 4 6
0
end_operator
begin_operator
pickup-object room2 cup6 table4 right_arm
3
3 8
10 4
11 2
2
0
2
0 3 8 6
0 10 4 6
0
end_operator
begin_operator
pickup-sponge right_arm
1
3 8
2
0
1
0 3 8 7
0
end_operator
begin_operator
putdown-object room0 cup0 table1 left_arm
2
2 0
11 0
2
0
2
0 2 0 7
0 4 -1 1
0
end_operator
begin_operator
putdown-object room0 cup0 table1 right_arm
2
3 0
11 0
2
0
2
0 3 0 8
0 4 -1 1
0
end_operator
begin_operator
putdown-object room0 cup1 table1 left_arm
2
2 1
11 0
2
0
2
0 2 1 7
0 5 -1 1
0
end_operator
begin_operator
putdown-object room0 cup1 table1 right_arm
2
3 1
11 0
2
0
2
0 3 1 8
0 5 -1 1
0
end_operator
begin_operator
putdown-object room0 cup2 table1 left_arm
2
2 2
11 0
2
0
2
0 2 2 7
0 6 -1 1
0
end_operator
begin_operator
putdown-object room0 cup2 table1 right_arm
2
3 2
11 0
2
0
2
0 3 2 8
0 6 -1 1
0
end_operator
begin_operator
putdown-object room0 cup3 table1 left_arm
2
2 3
11 0
2
0
2
0 2 3 7
0 7 -1 1
0
end_operator
begin_operator
putdown-object room0 cup3 table1 right_arm
2
3 3
11 0
2
0
2
0 3 3 8
0 7 -1 1
0
end_operator
begin_operator
putdown-object room0 cup4 table1 left_arm
2
2 4
11 0
2
0
2
0 2 4 7
0 8 -1 1
0
end_operator
begin_operator
putdown-object room0 cup4 table1 right_arm
2
3 4
11 0
2
0
2
0 3 4 8
0 8 -1 1
0
end_operator
begin_operator
putdown-object room0 cup5 table1 left_arm
2
2 5
11 0
2
0
2
0 2 5 7
0 9 -1 1
0
end_operator
begin_operator
putdown-object room0 cup5 table1 right_arm
2
3 5
11 0
2
0
2
0 3 5 8
0 9 -1 1
0
end_operator
begin_operator
putdown-object room0 cup6 table1 left_arm
2
2 6
11 0
2
0
2
0 2 6 7
0 10 -1 1
0
end_operator
begin_operator
putdown-object room0 cup6 table1 right_arm
2
3 6
11 0
2
0
2
0 3 6 8
0 10 -1 1
0
end_operator
begin_operator
putdown-object room1 cup0 table0 left_arm
2
2 0
11 1
2
0
2
0 2 0 7
0 4 -1 0
0
end_operator
begin_operator
putdown-object room1 cup0 table0 right_arm
2
3 0
11 1
2
0
2
0 3 0 8
0 4 -1 0
0
end_operator
begin_operator
putdown-object room1 cup0 table2 left_arm
2
2 0
11 1
2
0
2
0 2 0 7
0 4 -1 2
0
end_operator
begin_operator
putdown-object room1 cup0 table2 right_arm
2
3 0
11 1
2
0
2
0 3 0 8
0 4 -1 2
0
end_operator
begin_operator
putdown-object room1 cup0 table3 left_arm
2
2 0
11 1
2
0
2
0 2 0 7
0 4 -1 3
0
end_operator
begin_operator
putdown-object room1 cup0 table3 right_arm
2
3 0
11 1
2
0
2
0 3 0 8
0 4 -1 3
0
end_operator
begin_operator
putdown-object room1 cup0 table5 left_arm
2
2 0
11 1
2
0
2
0 2 0 7
0 4 -1 5
0
end_operator
begin_operator
putdown-object room1 cup0 table5 right_arm
2
3 0
11 1
2
0
2
0 3 0 8
0 4 -1 5
0
end_operator
begin_operator
putdown-object room1 cup1 table0 left_arm
2
2 1
11 1
2
0
2
0 2 1 7
0 5 -1 0
0
end_operator
begin_operator
putdown-object room1 cup1 table0 right_arm
2
3 1
11 1
2
0
2
0 3 1 8
0 5 -1 0
0
end_operator
begin_operator
putdown-object room1 cup1 table2 left_arm
2
2 1
11 1
2
0
2
0 2 1 7
0 5 -1 2
0
end_operator
begin_operator
putdown-object room1 cup1 table2 right_arm
2
3 1
11 1
2
0
2
0 3 1 8
0 5 -1 2
0
end_operator
begin_operator
putdown-object room1 cup1 table3 left_arm
2
2 1
11 1
2
0
2
0 2 1 7
0 5 -1 3
0
end_operator
begin_operator
putdown-object room1 cup1 table3 right_arm
2
3 1
11 1
2
0
2
0 3 1 8
0 5 -1 3
0
end_operator
begin_operator
putdown-object room1 cup1 table5 left_arm
2
2 1
11 1
2
0
2
0 2 1 7
0 5 -1 5
0
end_operator
begin_operator
putdown-object room1 cup1 table5 right_arm
2
3 1
11 1
2
0
2
0 3 1 8
0 5 -1 5
0
end_operator
begin_operator
putdown-object room1 cup2 table0 left_arm
2
2 2
11 1
2
0
2
0 2 2 7
0 6 -1 0
0
end_operator
begin_operator
putdown-object room1 cup2 table0 right_arm
2
3 2
11 1
2
0
2
0 3 2 8
0 6 -1 0
0
end_operator
begin_operator
putdown-object room1 cup2 table2 left_arm
2
2 2
11 1
2
0
2
0 2 2 7
0 6 -1 2
0
end_operator
begin_operator
putdown-object room1 cup2 table2 right_arm
2
3 2
11 1
2
0
2
0 3 2 8
0 6 -1 2
0
end_operator
begin_operator
putdown-object room1 cup2 table3 left_arm
2
2 2
11 1
2
0
2
0 2 2 7
0 6 -1 3
0
end_operator
begin_operator
putdown-object room1 cup2 table3 right_arm
2
3 2
11 1
2
0
2
0 3 2 8
0 6 -1 3
0
end_operator
begin_operator
putdown-object room1 cup2 table5 left_arm
2
2 2
11 1
2
0
2
0 2 2 7
0 6 -1 5
0
end_operator
begin_operator
putdown-object room1 cup2 table5 right_arm
2
3 2
11 1
2
0
2
0 3 2 8
0 6 -1 5
0
end_operator
begin_operator
putdown-object room1 cup3 table0 left_arm
2
2 3
11 1
2
0
2
0 2 3 7
0 7 -1 0
0
end_operator
begin_operator
putdown-object room1 cup3 table0 right_arm
2
3 3
11 1
2
0
2
0 3 3 8
0 7 -1 0
0
end_operator
begin_operator
putdown-object room1 cup3 table2 left_arm
2
2 3
11 1
2
0
2
0 2 3 7
0 7 -1 2
0
end_operator
begin_operator
putdown-object room1 cup3 table2 right_arm
2
3 3
11 1
2
0
2
0 3 3 8
0 7 -1 2
0
end_operator
begin_operator
putdown-object room1 cup3 table3 left_arm
2
2 3
11 1
2
0
2
0 2 3 7
0 7 -1 3
0
end_operator
begin_operator
putdown-object room1 cup3 table3 right_arm
2
3 3
11 1
2
0
2
0 3 3 8
0 7 -1 3
0
end_operator
begin_operator
putdown-object room1 cup3 table5 left_arm
2
2 3
11 1
2
0
2
0 2 3 7
0 7 -1 5
0
end_operator
begin_operator
putdown-object room1 cup3 table5 right_arm
2
3 3
11 1
2
0
2
0 3 3 8
0 7 -1 5
0
end_operator
begin_operator
putdown-object room1 cup4 table0 left_arm
2
2 4
11 1
2
0
2
0 2 4 7
0 8 -1 0
0
end_operator
begin_operator
putdown-object room1 cup4 table0 right_arm
2
3 4
11 1
2
0
2
0 3 4 8
0 8 -1 0
0
end_operator
begin_operator
putdown-object room1 cup4 table2 left_arm
2
2 4
11 1
2
0
2
0 2 4 7
0 8 -1 2
0
end_operator
begin_operator
putdown-object room1 cup4 table2 right_arm
2
3 4
11 1
2
0
2
0 3 4 8
0 8 -1 2
0
end_operator
begin_operator
putdown-object room1 cup4 table3 left_arm
2
2 4
11 1
2
0
2
0 2 4 7
0 8 -1 3
0
end_operator
begin_operator
putdown-object room1 cup4 table3 right_arm
2
3 4
11 1
2
0
2
0 3 4 8
0 8 -1 3
0
end_operator
begin_operator
putdown-object room1 cup4 table5 left_arm
2
2 4
11 1
2
0
2
0 2 4 7
0 8 -1 5
0
end_operator
begin_operator
putdown-object room1 cup4 table5 right_arm
2
3 4
11 1
2
0
2
0 3 4 8
0 8 -1 5
0
end_operator
begin_operator
putdown-object room1 cup5 table0 left_arm
2
2 5
11 1
2
0
2
0 2 5 7
0 9 -1 0
0
end_operator
begin_operator
putdown-object room1 cup5 table0 right_arm
2
3 5
11 1
2
0
2
0 3 5 8
0 9 -1 0
0
end_operator
begin_operator
putdown-object room1 cup5 table2 left_arm
2
2 5
11 1
2
0
2
0 2 5 7
0 9 -1 2
0
end_operator
begin_operator
putdown-object room1 cup5 table2 right_arm
2
3 5
11 1
2
0
2
0 3 5 8
0 9 -1 2
0
end_operator
begin_operator
putdown-object room1 cup5 table3 left_arm
2
2 5
11 1
2
0
2
0 2 5 7
0 9 -1 3
0
end_operator
begin_operator
putdown-object room1 cup5 table3 right_arm
2
3 5
11 1
2
0
2
0 3 5 8
0 9 -1 3
0
end_operator
begin_operator
putdown-object room1 cup5 table5 left_arm
2
2 5
11 1
2
0
2
0 2 5 7
0 9 -1 5
0
end_operator
begin_operator
putdown-object room1 cup5 table5 right_arm
2
3 5
11 1
2
0
2
0 3 5 8
0 9 -1 5
0
end_operator
begin_operator
putdown-object room1 cup6 table0 left_arm
2
2 6
11 1
2
0
2
0 2 6 7
0 10 -1 0
0
end_operator
begin_operator
putdown-object room1 cup6 table0 right_arm
2
3 6
11 1
2
0
2
0 3 6 8
0 10 -1 0
0
end_operator
begin_operator
putdown-object room1 cup6 table2 left_arm
2
2 6
11 1
2
0
2
0 2 6 7
0 10 -1 2
0
end_operator
begin_operator
putdown-object room1 cup6 table2 right_arm
2
3 6
11 1
2
0
2
0 3 6 8
0 10 -1 2
0
end_operator
begin_operator
putdown-object room1 cup6 table3 left_arm
2
2 6
11 1
2
0
2
0 2 6 7
0 10 -1 3
0
end_operator
begin_operator
putdown-object room1 cup6 table3 right_arm
2
3 6
11 1
2
0
2
0 3 6 8
0 10 -1 3
0
end_operator
begin_operator
putdown-object room1 cup6 table5 left_arm
2
2 6
11 1
2
0
2
0 2 6 7
0 10 -1 5
0
end_operator
begin_operator
putdown-object room1 cup6 table5 right_arm
2
3 6
11 1
2
0
2
0 3 6 8
0 10 -1 5
0
end_operator
begin_operator
putdown-object room2 cup0 table4 left_arm
2
2 0
11 2
2
0
2
0 2 0 7
0 4 -1 4
0
end_operator
begin_operator
putdown-object room2 cup0 table4 right_arm
2
3 0
11 2
2
0
2
0 3 0 8
0 4 -1 4
0
end_operator
begin_operator
putdown-object room2 cup1 table4 left_arm
2
2 1
11 2
2
0
2
0 2 1 7
0 5 -1 4
0
end_operator
begin_operator
putdown-object room2 cup1 table4 right_arm
2
3 1
11 2
2
0
2
0 3 1 8
0 5 -1 4
0
end_operator
begin_operator
putdown-object room2 cup2 table4 left_arm
2
2 2
11 2
2
0
2
0 2 2 7
0 6 -1 4
0
end_operator
begin_operator
putdown-object room2 cup2 table4 right_arm
2
3 2
11 2
2
0
2
0 3 2 8
0 6 -1 4
0
end_operator
begin_operator
putdown-object room2 cup3 table4 left_arm
2
2 3
11 2
2
0
2
0 2 3 7
0 7 -1 4
0
end_operator
begin_operator
putdown-object room2 cup3 table4 right_arm
2
3 3
11 2
2
0
2
0 3 3 8
0 7 -1 4
0
end_operator
begin_operator
putdown-object room2 cup4 table4 left_arm
2
2 4
11 2
2
0
2
0 2 4 7
0 8 -1 4
0
end_operator
begin_operator
putdown-object room2 cup4 table4 right_arm
2
3 4
11 2
2
0
2
0 3 4 8
0 8 -1 4
0
end_operator
begin_operator
putdown-object room2 cup5 table4 left_arm
2
2 5
11 2
2
0
2
0 2 5 7
0 9 -1 4
0
end_operator
begin_operator
putdown-object room2 cup5 table4 right_arm
2
3 5
11 2
2
0
2
0 3 5 8
0 9 -1 4
0
end_operator
begin_operator
putdown-object room2 cup6 table4 left_arm
2
2 6
11 2
2
0
2
0 2 6 7
0 10 -1 4
0
end_operator
begin_operator
putdown-object room2 cup6 table4 right_arm
2
3 6
11 2
2
0
2
0 3 6 8
0 10 -1 4
0
end_operator
begin_operator
putdown-sponge right_arm
1
3 7
2
0
1
0 3 7 8
0
end_operator
begin_operator
wipe room0 wipe9 table1 right_arm
3
3 7
11 0
21 1
2
0
1
0 21 1 0
0
end_operator
begin_operator
wipe room1 wipe0 table0 right_arm
3
3 7
11 1
12 1
2
0
1
0 12 1 0
0
end_operator
begin_operator
wipe room1 wipe1 table2 right_arm
3
3 7
11 1
13 1
2
0
1
0 13 1 0
0
end_operator
begin_operator
wipe room1 wipe2 table3 right_arm
3
3 7
11 1
14 1
2
0
1
0 14 1 0
0
end_operator
begin_operator
wipe room1 wipe3 table2 right_arm
3
3 7
11 1
15 1
2
0
1
0 15 1 0
0
end_operator
begin_operator
wipe room1 wipe4 table0 right_arm
3
3 7
11 1
16 1
2
0
1
0 16 1 0
0
end_operator
begin_operator
wipe room1 wipe5 table2 right_arm
3
3 7
11 1
17 1
2
0
1
0 17 1 0
0
end_operator
begin_operator
wipe room1 wipe7 table5 right_arm
3
3 7
11 1
19 1
2
0
1
0 19 1 0
0
end_operator
begin_operator
wipe room1 wipe8 table2 right_arm
3
3 7
11 1
20 1
2
0
1
0 20 1 0
0
end_operator
begin_operator
wipe room2 wipe6 table4 right_arm
3
3 7
11 2
18 1
2
0
1
0 18 1 0
0
end_operator
0
