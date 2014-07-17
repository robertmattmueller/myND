begin_version
3.POND
end_version
begin_metric
0
end_metric
8
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
2
Atom grasped(cup0, left_arm)
Atom hand-free(left_arm)
end_variable
begin_variable
var3
-1
3
Atom grasped(cup0, right_arm)
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
3
Atom robot-in-room(room0)
Atom robot-in-room(room1)
Atom robot-in-room(room2)
end_variable
begin_variable
var6
-1
2
Atom wiped(wipe0)
NegatedAtom wiped(wipe0)
end_variable
begin_variable
var7
-1
2
Atom wiped(wipe1)
NegatedAtom wiped(wipe1)
end_variable
4
begin_mutex_group
3
2 0
3 0
4 0
end_mutex_group
begin_mutex_group
2
2 0
2 1
end_mutex_group
begin_mutex_group
3
3 0
3 1
3 2
end_mutex_group
begin_mutex_group
3
5 0
5 1
5 2
end_mutex_group
begin_state
8
2 1
3 2
5 1
4 0
0 1
1 1
6 1
7 1
0
0
end_state
begin_goal
3
4 0
6 0
7 0
end_goal
28
begin_operator
detect-arm left_arm
0
1
0
0
2
2 1
2 0
end_operator
begin_operator
detect-arm right_arm
0
1
0
0
3
3 1
3 2
3 0
end_operator
begin_operator
detect-door-state room0 door0
1
5 0
1
0
0
1
0 0
end_operator
begin_operator
detect-door-state room1 door0
1
5 1
1
0
0
1
0 0
end_operator
begin_operator
detect-door-state room1 door1
1
5 1
1
0
0
1
1 0
end_operator
begin_operator
detect-door-state room2 door1
1
5 2
1
0
0
1
1 0
end_operator
begin_operator
detect-objects room1 table0
1
5 1
1
0
0
1
4 0
end_operator
begin_operator
detect-room room0
0
1
0
0
1
5 0
end_operator
begin_operator
detect-room room1
0
1
0
0
1
5 1
end_operator
begin_operator
detect-room room2
0
1
0
0
1
5 2
end_operator
begin_operator
detect-wiped room1 table0 wipe0
1
5 1
1
0
0
1
6 0
end_operator
begin_operator
detect-wiped room1 table0 wipe1
1
5 1
1
0
0
1
7 0
end_operator
begin_operator
drive-through-door door0 room0 room1
2
0 0
5 0
2
0
1
0 5 0 1
0
0
end_operator
begin_operator
drive-through-door door0 room1 room0
2
0 0
5 1
2
0
1
0 5 1 0
0
0
end_operator
begin_operator
drive-through-door door1 room1 room2
2
1 0
5 1
2
0
1
0 5 1 2
0
0
end_operator
begin_operator
drive-through-door door1 room2 room1
2
1 0
5 2
2
0
1
0 5 2 1
0
0
end_operator
begin_operator
open-door room0 door0 left_arm
3
0 1
2 1
5 0
2
0
1
0 0 1 0
0
0
end_operator
begin_operator
open-door room1 door0 left_arm
3
0 1
2 1
5 1
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
2 1
5 1
2
0
1
0 1 1 0
0
0
end_operator
begin_operator
open-door room2 door1 left_arm
3
1 1
2 1
5 2
2
0
1
0 1 1 0
0
0
end_operator
begin_operator
pickup-object room1 cup0 table0 left_arm
3
2 1
4 0
5 1
2
0
2
0 2 1 0
0 4 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup0 table0 right_arm
3
3 2
4 0
5 1
2
0
2
0 3 2 0
0 4 0 1
0
0
end_operator
begin_operator
pickup-sponge right_arm
1
3 2
2
0
1
0 3 2 1
0
0
end_operator
begin_operator
putdown-object room1 cup0 table0 left_arm
2
2 0
5 1
2
0
2
0 2 0 1
0 4 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup0 table0 right_arm
2
3 0
5 1
2
0
2
0 3 0 2
0 4 -1 0
0
0
end_operator
begin_operator
putdown-sponge right_arm
1
3 1
2
0
1
0 3 1 2
0
0
end_operator
begin_operator
wipe room1 wipe0 table0 right_arm
3
3 1
5 1
6 1
2
0
1
0 6 1 0
0
0
end_operator
begin_operator
wipe room1 wipe1 table0 right_arm
3
3 1
5 1
7 1
2
0
1
0 7 1 0
0
0
end_operator
0
