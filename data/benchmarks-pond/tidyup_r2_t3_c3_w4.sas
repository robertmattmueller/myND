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
4
Atom grasped(cup0, left_arm)
Atom grasped(cup1, left_arm)
Atom grasped(cup2, left_arm)
Atom hand-free(left_arm)
end_variable
begin_variable
var2
-1
5
Atom grasped(cup0, right_arm)
Atom grasped(cup1, right_arm)
Atom grasped(cup2, right_arm)
Atom grasped-sponge(right_arm)
Atom hand-free(right_arm)
end_variable
begin_variable
var3
-1
2
Atom on(cup0, table0)
NegatedAtom on(cup0, table0)
end_variable
begin_variable
var4
-1
2
Atom on(cup0, table1)
NegatedAtom on(cup0, table1)
end_variable
begin_variable
var5
-1
2
Atom on(cup0, table2)
NegatedAtom on(cup0, table2)
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
Atom on(cup1, table2)
NegatedAtom on(cup1, table2)
end_variable
begin_variable
var9
-1
2
Atom on(cup2, table0)
NegatedAtom on(cup2, table0)
end_variable
begin_variable
var10
-1
2
Atom on(cup2, table1)
NegatedAtom on(cup2, table1)
end_variable
begin_variable
var11
-1
2
Atom on(cup2, table2)
NegatedAtom on(cup2, table2)
end_variable
begin_variable
var12
-1
2
Atom robot-in-room(room0)
Atom robot-in-room(room1)
end_variable
begin_variable
var13
-1
2
Atom wipe-point-on(wipe0, table0)
NegatedAtom wipe-point-on(wipe0, table0)
end_variable
begin_variable
var14
-1
2
Atom wipe-point-on(wipe0, table1)
NegatedAtom wipe-point-on(wipe0, table1)
end_variable
begin_variable
var15
-1
2
Atom wipe-point-on(wipe0, table2)
NegatedAtom wipe-point-on(wipe0, table2)
end_variable
begin_variable
var16
-1
2
Atom wipe-point-on(wipe1, table0)
NegatedAtom wipe-point-on(wipe1, table0)
end_variable
begin_variable
var17
-1
2
Atom wipe-point-on(wipe1, table1)
NegatedAtom wipe-point-on(wipe1, table1)
end_variable
begin_variable
var18
-1
2
Atom wipe-point-on(wipe1, table2)
NegatedAtom wipe-point-on(wipe1, table2)
end_variable
begin_variable
var19
-1
2
Atom wipe-point-on(wipe2, table0)
NegatedAtom wipe-point-on(wipe2, table0)
end_variable
begin_variable
var20
-1
2
Atom wipe-point-on(wipe2, table1)
NegatedAtom wipe-point-on(wipe2, table1)
end_variable
begin_variable
var21
-1
2
Atom wipe-point-on(wipe2, table2)
NegatedAtom wipe-point-on(wipe2, table2)
end_variable
begin_variable
var22
-1
2
Atom wipe-point-on(wipe3, table0)
NegatedAtom wipe-point-on(wipe3, table0)
end_variable
begin_variable
var23
-1
2
Atom wipe-point-on(wipe3, table1)
NegatedAtom wipe-point-on(wipe3, table1)
end_variable
begin_variable
var24
-1
2
Atom wipe-point-on(wipe3, table2)
NegatedAtom wipe-point-on(wipe3, table2)
end_variable
begin_variable
var25
-1
2
Atom wiped(wipe0)
NegatedAtom wiped(wipe0)
end_variable
begin_variable
var26
-1
2
Atom wiped(wipe1)
NegatedAtom wiped(wipe1)
end_variable
begin_variable
var27
-1
2
Atom wiped(wipe2)
NegatedAtom wiped(wipe2)
end_variable
begin_variable
var28
-1
2
Atom wiped(wipe3)
NegatedAtom wiped(wipe3)
end_variable
3
begin_mutex_group
4
1 0
1 1
1 2
1 3
end_mutex_group
begin_mutex_group
5
2 0
2 1
2 2
2 3
2 4
end_mutex_group
begin_mutex_group
2
12 0
12 1
end_mutex_group
begin_state
8
1 3
2 4
12 1
0 1
25 1
26 1
27 1
28 1
7
3 0 4 0 5 0
6 0 7 0 8 0
9 0 10 0 11 0
19 0 20 0 21 0
13 0 14 0 15 0
16 0 17 0 18 0
22 0 23 0 24 0
0
end_state
begin_goal
7
3 0
6 0
9 0
25 0
26 0
27 0
28 0
end_goal
75
begin_operator
detect-arm left_arm
0
1
0
0
4
1 3
1 0
1 1
1 2
end_operator
begin_operator
detect-arm right_arm
0
1
0
0
5
2 3
2 4
2 0
2 1
2 2
end_operator
begin_operator
detect-door-state room0 door0
1
12 0
1
0
0
1
0 0
end_operator
begin_operator
detect-door-state room1 door0
1
12 1
1
0
0
1
0 0
end_operator
begin_operator
detect-objects room0 table1
1
12 0
1
0
0
7
4 0
7 0
10 0
20 0
14 0
17 0
23 0
end_operator
begin_operator
detect-objects room0 table2
1
12 0
1
0
0
7
5 0
8 0
11 0
21 0
15 0
18 0
24 0
end_operator
begin_operator
detect-objects room1 table0
1
12 1
1
0
0
7
3 0
6 0
9 0
19 0
13 0
16 0
22 0
end_operator
begin_operator
detect-room room0
0
1
0
0
1
12 0
end_operator
begin_operator
detect-room room1
0
1
0
0
1
12 1
end_operator
begin_operator
detect-wiped room0 table1 wipe0
2
12 0
14 0
1
0
0
1
25 0
end_operator
begin_operator
detect-wiped room0 table1 wipe1
2
12 0
17 0
1
0
0
1
26 0
end_operator
begin_operator
detect-wiped room0 table1 wipe2
2
12 0
20 0
1
0
0
1
27 0
end_operator
begin_operator
detect-wiped room0 table1 wipe3
2
12 0
23 0
1
0
0
1
28 0
end_operator
begin_operator
detect-wiped room0 table2 wipe0
2
12 0
15 0
1
0
0
1
25 0
end_operator
begin_operator
detect-wiped room0 table2 wipe1
2
12 0
18 0
1
0
0
1
26 0
end_operator
begin_operator
detect-wiped room0 table2 wipe2
2
12 0
21 0
1
0
0
1
27 0
end_operator
begin_operator
detect-wiped room0 table2 wipe3
2
12 0
24 0
1
0
0
1
28 0
end_operator
begin_operator
detect-wiped room1 table0 wipe0
2
12 1
13 0
1
0
0
1
25 0
end_operator
begin_operator
detect-wiped room1 table0 wipe1
2
12 1
16 0
1
0
0
1
26 0
end_operator
begin_operator
detect-wiped room1 table0 wipe2
2
12 1
19 0
1
0
0
1
27 0
end_operator
begin_operator
detect-wiped room1 table0 wipe3
2
12 1
22 0
1
0
0
1
28 0
end_operator
begin_operator
drive-through-door door0 room0 room1
2
0 0
12 0
2
0
1
0 12 0 1
0
0
end_operator
begin_operator
drive-through-door door0 room1 room0
2
0 0
12 1
2
0
1
0 12 1 0
0
0
end_operator
begin_operator
open-door room0 door0 left_arm
3
0 1
1 3
12 0
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
1 3
12 1
2
0
1
0 0 1 0
0
0
end_operator
begin_operator
pickup-object room0 cup0 table1 left_arm
3
1 3
4 0
12 0
2
0
2
0 1 3 0
0 4 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table1 right_arm
3
2 4
4 0
12 0
2
0
2
0 2 4 0
0 4 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table2 left_arm
3
1 3
5 0
12 0
2
0
2
0 1 3 0
0 5 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table2 right_arm
3
2 4
5 0
12 0
2
0
2
0 2 4 0
0 5 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table1 left_arm
3
1 3
7 0
12 0
2
0
2
0 1 3 1
0 7 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table1 right_arm
3
2 4
7 0
12 0
2
0
2
0 2 4 1
0 7 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table2 left_arm
3
1 3
8 0
12 0
2
0
2
0 1 3 1
0 8 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table2 right_arm
3
2 4
8 0
12 0
2
0
2
0 2 4 1
0 8 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table1 left_arm
3
1 3
10 0
12 0
2
0
2
0 1 3 2
0 10 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table1 right_arm
3
2 4
10 0
12 0
2
0
2
0 2 4 2
0 10 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table2 left_arm
3
1 3
11 0
12 0
2
0
2
0 1 3 2
0 11 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table2 right_arm
3
2 4
11 0
12 0
2
0
2
0 2 4 2
0 11 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup0 table0 left_arm
3
1 3
3 0
12 1
2
0
2
0 1 3 0
0 3 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup0 table0 right_arm
3
2 4
3 0
12 1
2
0
2
0 2 4 0
0 3 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup1 table0 left_arm
3
1 3
6 0
12 1
2
0
2
0 1 3 1
0 6 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup1 table0 right_arm
3
2 4
6 0
12 1
2
0
2
0 2 4 1
0 6 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup2 table0 left_arm
3
1 3
9 0
12 1
2
0
2
0 1 3 2
0 9 0 1
0
0
end_operator
begin_operator
pickup-object room1 cup2 table0 right_arm
3
2 4
9 0
12 1
2
0
2
0 2 4 2
0 9 0 1
0
0
end_operator
begin_operator
pickup-sponge right_arm
1
2 4
2
0
1
0 2 4 3
0
0
end_operator
begin_operator
putdown-object room0 cup0 table1 left_arm
2
1 0
12 0
2
0
2
0 1 0 3
0 4 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup0 table1 right_arm
2
2 0
12 0
2
0
2
0 2 0 4
0 4 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup0 table2 left_arm
2
1 0
12 0
2
0
2
0 1 0 3
0 5 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup0 table2 right_arm
2
2 0
12 0
2
0
2
0 2 0 4
0 5 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table1 left_arm
2
1 1
12 0
2
0
2
0 1 1 3
0 7 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table1 right_arm
2
2 1
12 0
2
0
2
0 2 1 4
0 7 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table2 left_arm
2
1 1
12 0
2
0
2
0 1 1 3
0 8 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table2 right_arm
2
2 1
12 0
2
0
2
0 2 1 4
0 8 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table1 left_arm
2
1 2
12 0
2
0
2
0 1 2 3
0 10 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table1 right_arm
2
2 2
12 0
2
0
2
0 2 2 4
0 10 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table2 left_arm
2
1 2
12 0
2
0
2
0 1 2 3
0 11 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table2 right_arm
2
2 2
12 0
2
0
2
0 2 2 4
0 11 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup0 table0 left_arm
2
1 0
12 1
2
0
2
0 1 0 3
0 3 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup0 table0 right_arm
2
2 0
12 1
2
0
2
0 2 0 4
0 3 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup1 table0 left_arm
2
1 1
12 1
2
0
2
0 1 1 3
0 6 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup1 table0 right_arm
2
2 1
12 1
2
0
2
0 2 1 4
0 6 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup2 table0 left_arm
2
1 2
12 1
2
0
2
0 1 2 3
0 9 -1 0
0
0
end_operator
begin_operator
putdown-object room1 cup2 table0 right_arm
2
2 2
12 1
2
0
2
0 2 2 4
0 9 -1 0
0
0
end_operator
begin_operator
putdown-sponge right_arm
1
2 3
2
0
1
0 2 3 4
0
0
end_operator
begin_operator
wipe room0 wipe0 table1 right_arm
4
2 3
12 0
14 0
25 1
2
0
1
0 25 1 0
0
0
end_operator
begin_operator
wipe room0 wipe0 table2 right_arm
4
2 3
12 0
15 0
25 1
2
0
1
0 25 1 0
0
0
end_operator
begin_operator
wipe room0 wipe1 table1 right_arm
4
2 3
12 0
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
wipe room0 wipe1 table2 right_arm
4
2 3
12 0
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
wipe room0 wipe2 table1 right_arm
4
2 3
12 0
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
wipe room0 wipe2 table2 right_arm
4
2 3
12 0
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
wipe room0 wipe3 table1 right_arm
4
2 3
12 0
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
wipe room0 wipe3 table2 right_arm
4
2 3
12 0
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
wipe room1 wipe0 table0 right_arm
4
2 3
12 1
13 0
25 1
2
0
1
0 25 1 0
0
0
end_operator
begin_operator
wipe room1 wipe1 table0 right_arm
4
2 3
12 1
16 0
26 1
2
0
1
0 26 1 0
0
0
end_operator
begin_operator
wipe room1 wipe2 table0 right_arm
4
2 3
12 1
19 0
27 1
2
0
1
0 27 1 0
0
0
end_operator
begin_operator
wipe room1 wipe3 table0 right_arm
4
2 3
12 1
22 0
28 1
2
0
1
0 28 1 0
0
0
end_operator
0
