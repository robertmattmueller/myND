begin_version
3
end_version
begin_metric
0
end_metric
12
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
5
Atom grasped(cup0, left_arm)
Atom grasped(cup1, left_arm)
Atom grasped(cup2, left_arm)
Atom grasped(cup3, left_arm)
Atom hand-free(left_arm)
end_variable
begin_variable
var2
-1
6
Atom grasped(cup0, right_arm)
Atom grasped(cup1, right_arm)
Atom grasped(cup2, right_arm)
Atom grasped(cup3, right_arm)
Atom grasped-sponge(right_arm)
Atom hand-free(right_arm)
end_variable
begin_variable
var3
-1
3
Atom on(cup0, table0)
Atom on(cup0, table1)
<none of those>
end_variable
begin_variable
var4
-1
3
Atom on(cup1, table0)
Atom on(cup1, table1)
<none of those>
end_variable
begin_variable
var5
-1
3
Atom on(cup2, table0)
Atom on(cup2, table1)
<none of those>
end_variable
begin_variable
var6
-1
3
Atom on(cup3, table0)
Atom on(cup3, table1)
<none of those>
end_variable
begin_variable
var7
-1
2
Atom robot-in-room(room0)
Atom robot-in-room(room1)
end_variable
begin_variable
var8
-1
2
Atom wiped(wipe0)
NegatedAtom wiped(wipe0)
end_variable
begin_variable
var9
-1
2
Atom wiped(wipe1)
NegatedAtom wiped(wipe1)
end_variable
begin_variable
var10
-1
2
Atom wiped(wipe2)
NegatedAtom wiped(wipe2)
end_variable
begin_variable
var11
-1
2
Atom wiped(wipe3)
NegatedAtom wiped(wipe3)
end_variable
7
begin_mutex_group
4
1 0
2 0
3 0
3 1
end_mutex_group
begin_mutex_group
5
1 0
1 1
1 2
1 3
1 4
end_mutex_group
begin_mutex_group
6
2 0
2 1
2 2
2 3
2 4
2 5
end_mutex_group
begin_mutex_group
4
1 1
2 1
4 0
4 1
end_mutex_group
begin_mutex_group
4
1 2
2 2
5 0
5 1
end_mutex_group
begin_mutex_group
4
1 3
2 3
6 0
6 1
end_mutex_group
begin_mutex_group
2
7 0
7 1
end_mutex_group
begin_state
1
4
5
1
0
0
0
1
1
1
1
1
end_state
begin_goal
8
3 0
4 0
5 0
6 0
8 0
9 0
10 0
11 0
end_goal
42
begin_operator
drive-through-door door0 room0 room1
2
0 0
7 0
2
0
1
0 7 0 1
0
end_operator
begin_operator
drive-through-door door0 room1 room0
2
0 0
7 1
2
0
1
0 7 1 0
0
end_operator
begin_operator
open-door room0 door0 left_arm
3
0 1
1 4
7 0
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
1 4
7 1
2
0
1
0 0 1 0
0
end_operator
begin_operator
pickup-object room1 cup0 table0 left_arm
3
1 4
3 0
7 1
2
0
2
0 1 4 0
0 3 0 2
0
end_operator
begin_operator
pickup-object room1 cup0 table0 right_arm
3
2 5
3 0
7 1
2
0
2
0 2 5 0
0 3 0 2
0
end_operator
begin_operator
pickup-object room1 cup0 table1 left_arm
3
1 4
3 1
7 1
2
0
2
0 1 4 0
0 3 1 2
0
end_operator
begin_operator
pickup-object room1 cup0 table1 right_arm
3
2 5
3 1
7 1
2
0
2
0 2 5 0
0 3 1 2
0
end_operator
begin_operator
pickup-object room1 cup1 table0 left_arm
3
1 4
4 0
7 1
2
0
2
0 1 4 1
0 4 0 2
0
end_operator
begin_operator
pickup-object room1 cup1 table0 right_arm
3
2 5
4 0
7 1
2
0
2
0 2 5 1
0 4 0 2
0
end_operator
begin_operator
pickup-object room1 cup1 table1 left_arm
3
1 4
4 1
7 1
2
0
2
0 1 4 1
0 4 1 2
0
end_operator
begin_operator
pickup-object room1 cup1 table1 right_arm
3
2 5
4 1
7 1
2
0
2
0 2 5 1
0 4 1 2
0
end_operator
begin_operator
pickup-object room1 cup2 table0 left_arm
3
1 4
5 0
7 1
2
0
2
0 1 4 2
0 5 0 2
0
end_operator
begin_operator
pickup-object room1 cup2 table0 right_arm
3
2 5
5 0
7 1
2
0
2
0 2 5 2
0 5 0 2
0
end_operator
begin_operator
pickup-object room1 cup2 table1 left_arm
3
1 4
5 1
7 1
2
0
2
0 1 4 2
0 5 1 2
0
end_operator
begin_operator
pickup-object room1 cup2 table1 right_arm
3
2 5
5 1
7 1
2
0
2
0 2 5 2
0 5 1 2
0
end_operator
begin_operator
pickup-object room1 cup3 table0 left_arm
3
1 4
6 0
7 1
2
0
2
0 1 4 3
0 6 0 2
0
end_operator
begin_operator
pickup-object room1 cup3 table0 right_arm
3
2 5
6 0
7 1
2
0
2
0 2 5 3
0 6 0 2
0
end_operator
begin_operator
pickup-object room1 cup3 table1 left_arm
3
1 4
6 1
7 1
2
0
2
0 1 4 3
0 6 1 2
0
end_operator
begin_operator
pickup-object room1 cup3 table1 right_arm
3
2 5
6 1
7 1
2
0
2
0 2 5 3
0 6 1 2
0
end_operator
begin_operator
pickup-sponge right_arm
1
2 5
2
0
1
0 2 5 4
0
end_operator
begin_operator
putdown-object room1 cup0 table0 left_arm
2
1 0
7 1
2
0
2
0 1 0 4
0 3 -1 0
0
end_operator
begin_operator
putdown-object room1 cup0 table0 right_arm
2
2 0
7 1
2
0
2
0 2 0 5
0 3 -1 0
0
end_operator
begin_operator
putdown-object room1 cup0 table1 left_arm
2
1 0
7 1
2
0
2
0 1 0 4
0 3 -1 1
0
end_operator
begin_operator
putdown-object room1 cup0 table1 right_arm
2
2 0
7 1
2
0
2
0 2 0 5
0 3 -1 1
0
end_operator
begin_operator
putdown-object room1 cup1 table0 left_arm
2
1 1
7 1
2
0
2
0 1 1 4
0 4 -1 0
0
end_operator
begin_operator
putdown-object room1 cup1 table0 right_arm
2
2 1
7 1
2
0
2
0 2 1 5
0 4 -1 0
0
end_operator
begin_operator
putdown-object room1 cup1 table1 left_arm
2
1 1
7 1
2
0
2
0 1 1 4
0 4 -1 1
0
end_operator
begin_operator
putdown-object room1 cup1 table1 right_arm
2
2 1
7 1
2
0
2
0 2 1 5
0 4 -1 1
0
end_operator
begin_operator
putdown-object room1 cup2 table0 left_arm
2
1 2
7 1
2
0
2
0 1 2 4
0 5 -1 0
0
end_operator
begin_operator
putdown-object room1 cup2 table0 right_arm
2
2 2
7 1
2
0
2
0 2 2 5
0 5 -1 0
0
end_operator
begin_operator
putdown-object room1 cup2 table1 left_arm
2
1 2
7 1
2
0
2
0 1 2 4
0 5 -1 1
0
end_operator
begin_operator
putdown-object room1 cup2 table1 right_arm
2
2 2
7 1
2
0
2
0 2 2 5
0 5 -1 1
0
end_operator
begin_operator
putdown-object room1 cup3 table0 left_arm
2
1 3
7 1
2
0
2
0 1 3 4
0 6 -1 0
0
end_operator
begin_operator
putdown-object room1 cup3 table0 right_arm
2
2 3
7 1
2
0
2
0 2 3 5
0 6 -1 0
0
end_operator
begin_operator
putdown-object room1 cup3 table1 left_arm
2
1 3
7 1
2
0
2
0 1 3 4
0 6 -1 1
0
end_operator
begin_operator
putdown-object room1 cup3 table1 right_arm
2
2 3
7 1
2
0
2
0 2 3 5
0 6 -1 1
0
end_operator
begin_operator
putdown-sponge right_arm
1
2 4
2
0
1
0 2 4 5
0
end_operator
begin_operator
wipe room1 wipe0 table0 right_arm
3
2 4
7 1
8 1
2
0
1
0 8 1 0
0
end_operator
begin_operator
wipe room1 wipe1 table1 right_arm
3
2 4
7 1
9 1
2
0
1
0 9 1 0
0
end_operator
begin_operator
wipe room1 wipe2 table1 right_arm
3
2 4
7 1
10 1
2
0
1
0 10 1 0
0
end_operator
begin_operator
wipe room1 wipe3 table0 right_arm
3
2 4
7 1
11 1
2
0
1
0 11 1 0
0
end_operator
0
