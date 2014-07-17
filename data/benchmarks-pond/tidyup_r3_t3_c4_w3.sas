begin_version
3.POND
end_version
begin_metric
0
end_metric
29
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
5
Atom grasped(cup0, left_arm)
Atom grasped(cup1, left_arm)
Atom grasped(cup2, left_arm)
Atom grasped(cup3, left_arm)
Atom hand-free(left_arm)
end_variable
begin_variable
var3
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
Atom on(cup0, table2)
NegatedAtom on(cup0, table2)
end_variable
begin_variable
var7
-1
2
Atom on(cup1, table0)
NegatedAtom on(cup1, table0)
end_variable
begin_variable
var8
-1
2
Atom on(cup1, table1)
NegatedAtom on(cup1, table1)
end_variable
begin_variable
var9
-1
2
Atom on(cup1, table2)
NegatedAtom on(cup1, table2)
end_variable
begin_variable
var10
-1
2
Atom on(cup2, table0)
NegatedAtom on(cup2, table0)
end_variable
begin_variable
var11
-1
2
Atom on(cup2, table1)
NegatedAtom on(cup2, table1)
end_variable
begin_variable
var12
-1
2
Atom on(cup2, table2)
NegatedAtom on(cup2, table2)
end_variable
begin_variable
var13
-1
2
Atom on(cup3, table0)
NegatedAtom on(cup3, table0)
end_variable
begin_variable
var14
-1
2
Atom on(cup3, table1)
NegatedAtom on(cup3, table1)
end_variable
begin_variable
var15
-1
2
Atom on(cup3, table2)
NegatedAtom on(cup3, table2)
end_variable
begin_variable
var16
-1
3
Atom robot-in-room(room0)
Atom robot-in-room(room1)
Atom robot-in-room(room2)
end_variable
begin_variable
var17
-1
2
Atom wipe-point-on(wipe0, table0)
NegatedAtom wipe-point-on(wipe0, table0)
end_variable
begin_variable
var18
-1
2
Atom wipe-point-on(wipe0, table1)
NegatedAtom wipe-point-on(wipe0, table1)
end_variable
begin_variable
var19
-1
2
Atom wipe-point-on(wipe0, table2)
NegatedAtom wipe-point-on(wipe0, table2)
end_variable
begin_variable
var20
-1
2
Atom wipe-point-on(wipe1, table0)
NegatedAtom wipe-point-on(wipe1, table0)
end_variable
begin_variable
var21
-1
2
Atom wipe-point-on(wipe1, table1)
NegatedAtom wipe-point-on(wipe1, table1)
end_variable
begin_variable
var22
-1
2
Atom wipe-point-on(wipe1, table2)
NegatedAtom wipe-point-on(wipe1, table2)
end_variable
begin_variable
var23
-1
2
Atom wipe-point-on(wipe2, table0)
NegatedAtom wipe-point-on(wipe2, table0)
end_variable
begin_variable
var24
-1
2
Atom wipe-point-on(wipe2, table1)
NegatedAtom wipe-point-on(wipe2, table1)
end_variable
begin_variable
var25
-1
2
Atom wipe-point-on(wipe2, table2)
NegatedAtom wipe-point-on(wipe2, table2)
end_variable
begin_variable
var26
-1
2
Atom wiped(wipe0)
NegatedAtom wiped(wipe0)
end_variable
begin_variable
var27
-1
2
Atom wiped(wipe1)
NegatedAtom wiped(wipe1)
end_variable
begin_variable
var28
-1
2
Atom wiped(wipe2)
NegatedAtom wiped(wipe2)
end_variable
3
begin_mutex_group
5
2 0
2 1
2 2
2 3
2 4
end_mutex_group
begin_mutex_group
6
3 0
3 1
3 2
3 3
3 4
3 5
end_mutex_group
begin_mutex_group
3
16 0
16 1
16 2
end_mutex_group
begin_state
8
2 4
3 5
16 1
0 1
1 1
26 1
27 1
28 1
7
7 0 8 0 9 0
10 0 11 0 12 0
4 0 5 0 6 0
13 0 14 0 15 0
20 0 21 0 22 0
17 0 18 0 19 0
23 0 24 0 25 0
0
end_state
begin_goal
7
4 0
7 0
10 0
13 0
26 0
27 0
28 0
end_goal
88
begin_operator
detect-arm left_arm
0
1
0
0
5
2 4
2 1
2 2
2 0
2 3
end_operator
begin_operator
detect-arm right_arm
0
1
0
0
6
3 4
3 5
3 1
3 2
3 0
3 3
end_operator
begin_operator
detect-door-state room0 door0
1
16 0
1
0
0
1
0 0
end_operator
begin_operator
detect-door-state room1 door1
1
16 1
1
0
0
1
1 0
end_operator
begin_operator
detect-door-state room2 door0
1
16 2
1
0
0
1
0 0
end_operator
begin_operator
detect-door-state room2 door1
1
16 2
1
0
0
1
1 0
end_operator
begin_operator
detect-objects room0 table0
1
16 0
1
0
0
7
7 0
10 0
4 0
13 0
20 0
17 0
23 0
end_operator
begin_operator
detect-objects room0 table1
1
16 0
1
0
0
7
8 0
11 0
5 0
14 0
21 0
18 0
24 0
end_operator
begin_operator
detect-objects room1 table2
1
16 1
1
0
0
7
9 0
12 0
6 0
15 0
22 0
19 0
25 0
end_operator
begin_operator
detect-room room0
0
1
0
0
1
16 0
end_operator
begin_operator
detect-room room1
0
1
0
0
1
16 1
end_operator
begin_operator
detect-room room2
0
1
0
0
1
16 2
end_operator
begin_operator
detect-wiped room0 table0 wipe0
2
16 0
17 0
1
0
0
1
26 0
end_operator
begin_operator
detect-wiped room0 table0 wipe1
2
16 0
20 0
1
0
0
1
27 0
end_operator
begin_operator
detect-wiped room0 table0 wipe2
2
16 0
23 0
1
0
0
1
28 0
end_operator
begin_operator
detect-wiped room0 table1 wipe0
2
16 0
18 0
1
0
0
1
26 0
end_operator
begin_operator
detect-wiped room0 table1 wipe1
2
16 0
21 0
1
0
0
1
27 0
end_operator
begin_operator
detect-wiped room0 table1 wipe2
2
16 0
24 0
1
0
0
1
28 0
end_operator
begin_operator
detect-wiped room1 table2 wipe0
2
16 1
19 0
1
0
0
1
26 0
end_operator
begin_operator
detect-wiped room1 table2 wipe1
2
16 1
22 0
1
0
0
1
27 0
end_operator
begin_operator
detect-wiped room1 table2 wipe2
2
16 1
25 0
1
0
0
1
28 0
end_operator
begin_operator
drive-through-door door0 room0 room2
2
0 0
16 0
2
0
1
0 16 0 2
0
0
end_operator
begin_operator
drive-through-door door0 room2 room0
2
0 0
16 2
2
0
1
0 16 2 0
0
0
end_operator
begin_operator
drive-through-door door1 room1 room2
2
1 0
16 1
2
0
1
0 16 1 2
0
0
end_operator
begin_operator
drive-through-door door1 room2 room1
2
1 0
16 2
2
0
1
0 16 2 1
0
0
end_operator
begin_operator
open-door room0 door0 left_arm
3
0 1
2 4
16 0
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
2 4
16 1
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
2 4
16 2
2
0
1
0 0 1 0
0
0
end_operator
begin_operator
open-door room2 door1 left_arm
3
1 1
2 4
16 2
2
0
1
0 1 1 0
0
0
end_operator
begin_operator
pickup-object room0 cup0 table0 left_arm
3
2 4
4 0
16 0
2
0
2
0 2 4 0
0 4 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table0 right_arm
3
3 5
4 0
16 0
2
0
2
0 3 5 0
0 4 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table1 left_arm
3
2 4
5 0
16 0
2
0
2
0 2 4 0
0 5 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table1 right_arm
3
3 5
5 0
16 0
2
0
2
0 3 5 0
0 5 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table0 left_arm
3
2 4
7 0
16 0
2
0
2
0 2 4 1
0 7 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table0 right_arm
3
3 5
7 0
16 0
2
0
2
0 3 5 1
0 7 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table1 left_arm
3
2 4
8 0
16 0
2
0
2
0 2 4 1
0 8 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table1 right_arm
3
3 5
8 0
16 0
2
0
2
0 3 5 1
0 8 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table0 left_arm
3
2 4
10 0
16 0
2
0
2
0 2 4 2
0 10 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table0 right_arm
3
3 5
10 0
16 0
2
0
2
0 3 5 2
0 10 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table1 left_arm
3
2 4
11 0
16 0
2
0
2
0 2 4 2
0 11 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table1 right_arm
3
3 5
11 0
16 0
2
0
2
0 3 5 2
0 11 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup3 table0 left_arm
3
2 4
13 0
16 0
2
0
2
0 2 4 3
0 13 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup3 table0 right_arm
3
3 5
13 0
16 0
2
0
2
0 3 5 3
0 13 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup3 table1 left_arm
3
2 4
14 0
16 0
2
0
2
0 2 4 3
0 14 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup3 table1 right_arm
3
3 5
14 0
16 0
2
0
2
0 3 5 3
0 14 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup0 table2 left_arm
3
2 4
6 0
16 1
2
0
2
0 2 4 0
0 6 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup0 table2 right_arm
3
3 5
6 0
16 1
2
0
2
0 3 5 0
0 6 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup1 table2 left_arm
3
2 4
9 0
16 1
2
0
2
0 2 4 1
0 9 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup1 table2 right_arm
3
3 5
9 0
16 1
2
0
2
0 3 5 1
0 9 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup2 table2 left_arm
3
2 4
12 0
16 1
2
0
2
0 2 4 2
0 12 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup2 table2 right_arm
3
3 5
12 0
16 1
2
0
2
0 3 5 2
0 12 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup3 table2 left_arm
3
2 4
15 0
16 1
2
0
2
0 2 4 3
0 15 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup3 table2 right_arm
3
3 5
15 0
16 1
2
0
2
0 3 5 3
0 15 0 1
0
0
end_operator
begin_operator
pickup-sponge right_arm
1
3 5
2
0
1
0 3 5 4
0
0
end_operator
begin_operator
putdown-object room0 cup0 table0 left_arm
2
2 0
16 0
2
0
2
0 2 0 4
0 4 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup0 table0 right_arm
2
3 0
16 0
2
0
2
0 3 0 5
0 4 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup0 table1 left_arm
2
2 0
16 0
2
0
2
0 2 0 4
0 5 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup0 table1 right_arm
2
3 0
16 0
2
0
2
0 3 0 5
0 5 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table0 left_arm
2
2 1
16 0
2
0
2
0 2 1 4
0 7 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table0 right_arm
2
3 1
16 0
2
0
2
0 3 1 5
0 7 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table1 left_arm
2
2 1
16 0
2
0
2
0 2 1 4
0 8 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table1 right_arm
2
3 1
16 0
2
0
2
0 3 1 5
0 8 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table0 left_arm
2
2 2
16 0
2
0
2
0 2 2 4
0 10 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table0 right_arm
2
3 2
16 0
2
0
2
0 3 2 5
0 10 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table1 left_arm
2
2 2
16 0
2
0
2
0 2 2 4
0 11 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table1 right_arm
2
3 2
16 0
2
0
2
0 3 2 5
0 11 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup3 table0 left_arm
2
2 3
16 0
2
0
2
0 2 3 4
0 13 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup3 table0 right_arm
2
3 3
16 0
2
0
2
0 3 3 5
0 13 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup3 table1 left_arm
2
2 3
16 0
2
0
2
0 2 3 4
0 14 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup3 table1 right_arm
2
3 3
16 0
2
0
2
0 3 3 5
0 14 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup0 table2 left_arm
2
2 0
16 1
2
0
2
0 2 0 4
0 6 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup0 table2 right_arm
2
3 0
16 1
2
0
2
0 3 0 5
0 6 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup1 table2 left_arm
2
2 1
16 1
2
0
2
0 2 1 4
0 9 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup1 table2 right_arm
2
3 1
16 1
2
0
2
0 3 1 5
0 9 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup2 table2 left_arm
2
2 2
16 1
2
0
2
0 2 2 4
0 12 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup2 table2 right_arm
2
3 2
16 1
2
0
2
0 3 2 5
0 12 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup3 table2 left_arm
2
2 3
16 1
2
0
2
0 2 3 4
0 15 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup3 table2 right_arm
2
3 3
16 1
2
0
2
0 3 3 5
0 15 -1 0
0
0
end_operator
begin_operator
putdown-sponge right_arm
1
3 4
2
0
1
0 3 4 5
0
0
end_operator
begin_operator
wipe room0 wipe0 table0 right_arm
4
3 4
16 0
17 0
26 1
2
0
1
0 26 1 0
0
0
end_operator
begin_operator
wipe room0 wipe0 table1 right_arm
4
3 4
16 0
18 0
26 1
2
0
1
0 26 1 0
0
0
end_operator
begin_operator
wipe room0 wipe1 table0 right_arm
4
3 4
16 0
20 0
27 1
2
0
1
0 27 1 0
0
0
end_operator
begin_operator
wipe room0 wipe1 table1 right_arm
4
3 4
16 0
21 0
27 1
2
0
1
0 27 1 0
0
0
end_operator
begin_operator
wipe room0 wipe2 table0 right_arm
4
3 4
16 0
23 0
28 1
2
0
1
0 28 1 0
0
0
end_operator
begin_operator
wipe room0 wipe2 table1 right_arm
4
3 4
16 0
24 0
28 1
2
0
1
0 28 1 0
0
0
end_operator
begin_operator
wipe room1 wipe0 table2 right_arm
4
3 4
16 1
19 0
26 1
2
0
1
0 26 1 0
0
0
end_operator
begin_operator
wipe room1 wipe1 table2 right_arm
4
3 4
16 1
22 0
27 1
2
0
1
0 27 1 0
0
0
end_operator
begin_operator
wipe room1 wipe2 table2 right_arm
4
3 4
16 1
25 0
28 1
2
0
1
0 28 1 0
0
0
end_operator
0
