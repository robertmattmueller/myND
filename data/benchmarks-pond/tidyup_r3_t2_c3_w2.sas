begin_version
3.POND
end_version
begin_metric
0
end_metric
17
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
4
Atom grasped(cup0, left_arm)
Atom grasped(cup1, left_arm)
Atom grasped(cup2, left_arm)
Atom hand-free(left_arm)
end_variable
begin_variable
var3
-1
5
Atom grasped(cup0, right_arm)
Atom grasped(cup1, right_arm)
Atom grasped(cup2, right_arm)
Atom grasped-sponge(right_arm)
Atom hand-free(right_arm)
end_variable
begin_variable
var4
-1
2
Atom on(cup0, table0)
NegatedAtom on(cup0, table0)
end_variable
begin_variable
var5
-1
2
Atom on(cup0, table1)
NegatedAtom on(cup0, table1)
end_variable
begin_variable
var6
-1
2
Atom on(cup1, table0)
NegatedAtom on(cup1, table0)
end_variable
begin_variable
var7
-1
2
Atom on(cup1, table1)
NegatedAtom on(cup1, table1)
end_variable
begin_variable
var8
-1
2
Atom on(cup2, table0)
NegatedAtom on(cup2, table0)
end_variable
begin_variable
var9
-1
2
Atom on(cup2, table1)
NegatedAtom on(cup2, table1)
end_variable
begin_variable
var10
-1
3
Atom robot-in-room(room0)
Atom robot-in-room(room1)
Atom robot-in-room(room2)
end_variable
begin_variable
var11
-1
2
Atom wipe-point-on(wipe0, table0)
NegatedAtom wipe-point-on(wipe0, table0)
end_variable
begin_variable
var12
-1
2
Atom wipe-point-on(wipe0, table1)
NegatedAtom wipe-point-on(wipe0, table1)
end_variable
begin_variable
var13
-1
2
Atom wipe-point-on(wipe1, table0)
NegatedAtom wipe-point-on(wipe1, table0)
end_variable
begin_variable
var14
-1
2
Atom wipe-point-on(wipe1, table1)
NegatedAtom wipe-point-on(wipe1, table1)
end_variable
begin_variable
var15
-1
2
Atom wiped(wipe0)
NegatedAtom wiped(wipe0)
end_variable
begin_variable
var16
-1
2
Atom wiped(wipe1)
NegatedAtom wiped(wipe1)
end_variable
3
begin_mutex_group
4
2 0
2 1
2 2
2 3
end_mutex_group
begin_mutex_group
5
3 0
3 1
3 2
3 3
3 4
end_mutex_group
begin_mutex_group
3
10 0
10 1
10 2
end_mutex_group
begin_state
7
2 3
3 4
10 1
0 1
1 1
15 1
16 1
5
8 0 9 0
4 0 5 0
6 0 7 0
13 0 14 0
11 0 12 0
0
end_state
begin_goal
5
4 0
6 0
8 0
15 0
16 0
end_goal
53
begin_operator
detect-arm left_arm
0
1
0
0
4
2 3
2 2
2 0
2 1
end_operator
begin_operator
detect-arm right_arm
0
1
0
0
5
3 3
3 4
3 2
3 0
3 1
end_operator
begin_operator
detect-door-state room0 door1
1
10 0
1
0
0
1
1 0
end_operator
begin_operator
detect-door-state room1 door0
1
10 1
1
0
0
1
0 0
end_operator
begin_operator
detect-door-state room1 door1
1
10 1
1
0
0
1
1 0
end_operator
begin_operator
detect-door-state room2 door0
1
10 2
1
0
0
1
0 0
end_operator
begin_operator
detect-objects room0 table0
1
10 0
1
0
0
5
8 0
4 0
6 0
13 0
11 0
end_operator
begin_operator
detect-objects room1 table1
1
10 1
1
0
0
5
9 0
5 0
7 0
14 0
12 0
end_operator
begin_operator
detect-room room0
0
1
0
0
1
10 0
end_operator
begin_operator
detect-room room1
0
1
0
0
1
10 1
end_operator
begin_operator
detect-room room2
0
1
0
0
1
10 2
end_operator
begin_operator
detect-wiped room0 table0 wipe0
2
10 0
11 0
1
0
0
1
15 0
end_operator
begin_operator
detect-wiped room0 table0 wipe1
2
10 0
13 0
1
0
0
1
16 0
end_operator
begin_operator
detect-wiped room1 table1 wipe0
2
10 1
12 0
1
0
0
1
15 0
end_operator
begin_operator
detect-wiped room1 table1 wipe1
2
10 1
14 0
1
0
0
1
16 0
end_operator
begin_operator
drive-through-door door0 room1 room2
2
0 0
10 1
2
0
1
0 10 1 2
0
0
end_operator
begin_operator
drive-through-door door0 room2 room1
2
0 0
10 2
2
0
1
0 10 2 1
0
0
end_operator
begin_operator
drive-through-door door1 room0 room1
2
1 0
10 0
2
0
1
0 10 0 1
0
0
end_operator
begin_operator
drive-through-door door1 room1 room0
2
1 0
10 1
2
0
1
0 10 1 0
0
0
end_operator
begin_operator
open-door room0 door1 left_arm
3
1 1
2 3
10 0
2
0
1
0 1 1 0
0
0
end_operator
begin_operator
open-door room1 door0 left_arm
3
0 1
2 3
10 1
2
0
1
0 0 1 0
0
0
end_operator
begin_operator
open-door room1 door1 left_arm
3
1 1
2 3
10 1
2
0
1
0 1 1 0
0
0
end_operator
begin_operator
open-door room2 door0 left_arm
3
0 1
2 3
10 2
2
0
1
0 0 1 0
0
0
end_operator
begin_operator
pickup-object room0 cup0 table0 left_arm
3
2 3
4 0
10 0
2
0
2
0 2 3 0
0 4 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table0 right_arm
3
3 4
4 0
10 0
2
0
2
0 3 4 0
0 4 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table0 left_arm
3
2 3
6 0
10 0
2
0
2
0 2 3 1
0 6 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table0 right_arm
3
3 4
6 0
10 0
2
0
2
0 3 4 1
0 6 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table0 left_arm
3
2 3
8 0
10 0
2
0
2
0 2 3 2
0 8 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table0 right_arm
3
3 4
8 0
10 0
2
0
2
0 3 4 2
0 8 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup0 table1 left_arm
3
2 3
5 0
10 1
2
0
2
0 2 3 0
0 5 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup0 table1 right_arm
3
3 4
5 0
10 1
2
0
2
0 3 4 0
0 5 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup1 table1 left_arm
3
2 3
7 0
10 1
2
0
2
0 2 3 1
0 7 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup1 table1 right_arm
3
3 4
7 0
10 1
2
0
2
0 3 4 1
0 7 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup2 table1 left_arm
3
2 3
9 0
10 1
2
0
2
0 2 3 2
0 9 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup2 table1 right_arm
3
3 4
9 0
10 1
2
0
2
0 3 4 2
0 9 0 1
0
0
end_operator
begin_operator
pickup-sponge right_arm
1
3 4
2
0
1
0 3 4 3
0
0
end_operator
begin_operator
putdown-object room0 cup0 table0 left_arm
2
2 0
10 0
2
0
2
0 2 0 3
0 4 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup0 table0 right_arm
2
3 0
10 0
2
0
2
0 3 0 4
0 4 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table0 left_arm
2
2 1
10 0
2
0
2
0 2 1 3
0 6 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table0 right_arm
2
3 1
10 0
2
0
2
0 3 1 4
0 6 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table0 left_arm
2
2 2
10 0
2
0
2
0 2 2 3
0 8 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table0 right_arm
2
3 2
10 0
2
0
2
0 3 2 4
0 8 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup0 table1 left_arm
2
2 0
10 1
2
0
2
0 2 0 3
0 5 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup0 table1 right_arm
2
3 0
10 1
2
0
2
0 3 0 4
0 5 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup1 table1 left_arm
2
2 1
10 1
2
0
2
0 2 1 3
0 7 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup1 table1 right_arm
2
3 1
10 1
2
0
2
0 3 1 4
0 7 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup2 table1 left_arm
2
2 2
10 1
2
0
2
0 2 2 3
0 9 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup2 table1 right_arm
2
3 2
10 1
2
0
2
0 3 2 4
0 9 -1 0
0
0
end_operator
begin_operator
putdown-sponge right_arm
1
3 3
2
0
1
0 3 3 4
0
0
end_operator
begin_operator
wipe room0 wipe0 table0 right_arm
4
3 3
10 0
11 0
15 1
2
0
1
0 15 1 0
0
0
end_operator
begin_operator
wipe room0 wipe1 table0 right_arm
4
3 3
10 0
13 0
16 1
2
0
1
0 16 1 0
0
0
end_operator
begin_operator
wipe room1 wipe0 table1 right_arm
4
3 3
10 1
12 0
15 1
2
0
1
0 15 1 0
0
0
end_operator
begin_operator
wipe room1 wipe1 table1 right_arm
4
3 3
10 1
14 0
16 1
2
0
1
0 16 1 0
0
0
end_operator
0
