begin_version
3.POND
end_version
begin_metric
0
end_metric
35
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
6
Atom grasped(cup0, left_arm)
Atom grasped(cup1, left_arm)
Atom grasped(cup2, left_arm)
Atom grasped(cup3, left_arm)
Atom grasped(cup4, left_arm)
Atom hand-free(left_arm)
end_variable
begin_variable
var2
-1
7
Atom grasped(cup0, right_arm)
Atom grasped(cup1, right_arm)
Atom grasped(cup2, right_arm)
Atom grasped(cup3, right_arm)
Atom grasped(cup4, right_arm)
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
Atom on(cup3, table0)
NegatedAtom on(cup3, table0)
end_variable
begin_variable
var13
-1
2
Atom on(cup3, table1)
NegatedAtom on(cup3, table1)
end_variable
begin_variable
var14
-1
2
Atom on(cup3, table2)
NegatedAtom on(cup3, table2)
end_variable
begin_variable
var15
-1
2
Atom on(cup4, table0)
NegatedAtom on(cup4, table0)
end_variable
begin_variable
var16
-1
2
Atom on(cup4, table1)
NegatedAtom on(cup4, table1)
end_variable
begin_variable
var17
-1
2
Atom on(cup4, table2)
NegatedAtom on(cup4, table2)
end_variable
begin_variable
var18
-1
2
Atom robot-in-room(room0)
Atom robot-in-room(room1)
end_variable
begin_variable
var19
-1
2
Atom wipe-point-on(wipe0, table0)
NegatedAtom wipe-point-on(wipe0, table0)
end_variable
begin_variable
var20
-1
2
Atom wipe-point-on(wipe0, table1)
NegatedAtom wipe-point-on(wipe0, table1)
end_variable
begin_variable
var21
-1
2
Atom wipe-point-on(wipe0, table2)
NegatedAtom wipe-point-on(wipe0, table2)
end_variable
begin_variable
var22
-1
2
Atom wipe-point-on(wipe1, table0)
NegatedAtom wipe-point-on(wipe1, table0)
end_variable
begin_variable
var23
-1
2
Atom wipe-point-on(wipe1, table1)
NegatedAtom wipe-point-on(wipe1, table1)
end_variable
begin_variable
var24
-1
2
Atom wipe-point-on(wipe1, table2)
NegatedAtom wipe-point-on(wipe1, table2)
end_variable
begin_variable
var25
-1
2
Atom wipe-point-on(wipe2, table0)
NegatedAtom wipe-point-on(wipe2, table0)
end_variable
begin_variable
var26
-1
2
Atom wipe-point-on(wipe2, table1)
NegatedAtom wipe-point-on(wipe2, table1)
end_variable
begin_variable
var27
-1
2
Atom wipe-point-on(wipe2, table2)
NegatedAtom wipe-point-on(wipe2, table2)
end_variable
begin_variable
var28
-1
2
Atom wipe-point-on(wipe3, table0)
NegatedAtom wipe-point-on(wipe3, table0)
end_variable
begin_variable
var29
-1
2
Atom wipe-point-on(wipe3, table1)
NegatedAtom wipe-point-on(wipe3, table1)
end_variable
begin_variable
var30
-1
2
Atom wipe-point-on(wipe3, table2)
NegatedAtom wipe-point-on(wipe3, table2)
end_variable
begin_variable
var31
-1
2
Atom wiped(wipe0)
NegatedAtom wiped(wipe0)
end_variable
begin_variable
var32
-1
2
Atom wiped(wipe1)
NegatedAtom wiped(wipe1)
end_variable
begin_variable
var33
-1
2
Atom wiped(wipe2)
NegatedAtom wiped(wipe2)
end_variable
begin_variable
var34
-1
2
Atom wiped(wipe3)
NegatedAtom wiped(wipe3)
end_variable
3
begin_mutex_group
6
1 0
1 1
1 2
1 3
1 4
1 5
end_mutex_group
begin_mutex_group
7
2 0
2 1
2 2
2 3
2 4
2 5
2 6
end_mutex_group
begin_mutex_group
2
18 0
18 1
end_mutex_group
begin_state
8
1 5
2 6
18 0
0 1
31 1
32 1
33 1
34 1
9
12 0 13 0 14 0
3 0 4 0 5 0
9 0 10 0 11 0
15 0 16 0 17 0
6 0 7 0 8 0
22 0 23 0 24 0
25 0 26 0 27 0
19 0 20 0 21 0
28 0 29 0 30 0
0
end_state
begin_goal
9
3 0
6 0
9 0
12 0
15 0
31 0
32 0
33 0
34 0
end_goal
99
begin_operator
detect-arm left_arm
0
1
0
0
6
1 5
1 3
1 0
1 2
1 4
1 1
end_operator
begin_operator
detect-arm right_arm
0
1
0
0
7
2 5
2 6
2 3
2 0
2 2
2 4
2 1
end_operator
begin_operator
detect-door-state room0 door0
1
18 0
1
0
0
1
0 0
end_operator
begin_operator
detect-door-state room1 door0
1
18 1
1
0
0
1
0 0
end_operator
begin_operator
detect-objects room0 table0
1
18 0
1
0
0
9
12 0
3 0
9 0
15 0
6 0
22 0
25 0
19 0
28 0
end_operator
begin_operator
detect-objects room0 table1
1
18 0
1
0
0
9
13 0
4 0
10 0
16 0
7 0
23 0
26 0
20 0
29 0
end_operator
begin_operator
detect-objects room0 table2
1
18 0
1
0
0
9
14 0
5 0
11 0
17 0
8 0
24 0
27 0
21 0
30 0
end_operator
begin_operator
detect-room room0
0
1
0
0
1
18 0
end_operator
begin_operator
detect-room room1
0
1
0
0
1
18 1
end_operator
begin_operator
detect-wiped room0 table0 wipe0
2
18 0
19 0
1
0
0
1
31 0
end_operator
begin_operator
detect-wiped room0 table0 wipe1
2
18 0
22 0
1
0
0
1
32 0
end_operator
begin_operator
detect-wiped room0 table0 wipe2
2
18 0
25 0
1
0
0
1
33 0
end_operator
begin_operator
detect-wiped room0 table0 wipe3
2
18 0
28 0
1
0
0
1
34 0
end_operator
begin_operator
detect-wiped room0 table1 wipe0
2
18 0
20 0
1
0
0
1
31 0
end_operator
begin_operator
detect-wiped room0 table1 wipe1
2
18 0
23 0
1
0
0
1
32 0
end_operator
begin_operator
detect-wiped room0 table1 wipe2
2
18 0
26 0
1
0
0
1
33 0
end_operator
begin_operator
detect-wiped room0 table1 wipe3
2
18 0
29 0
1
0
0
1
34 0
end_operator
begin_operator
detect-wiped room0 table2 wipe0
2
18 0
21 0
1
0
0
1
31 0
end_operator
begin_operator
detect-wiped room0 table2 wipe1
2
18 0
24 0
1
0
0
1
32 0
end_operator
begin_operator
detect-wiped room0 table2 wipe2
2
18 0
27 0
1
0
0
1
33 0
end_operator
begin_operator
detect-wiped room0 table2 wipe3
2
18 0
30 0
1
0
0
1
34 0
end_operator
begin_operator
drive-through-door door0 room0 room1
2
0 0
18 0
2
0
1
0 18 0 1
0
0
end_operator
begin_operator
drive-through-door door0 room1 room0
2
0 0
18 1
2
0
1
0 18 1 0
0
0
end_operator
begin_operator
open-door room0 door0 left_arm
3
0 1
1 5
18 0
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
1 5
18 1
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
1 5
3 0
18 0
2
0
2
0 1 5 0
0 3 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table0 right_arm
3
2 6
3 0
18 0
2
0
2
0 2 6 0
0 3 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table1 left_arm
3
1 5
4 0
18 0
2
0
2
0 1 5 0
0 4 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table1 right_arm
3
2 6
4 0
18 0
2
0
2
0 2 6 0
0 4 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table2 left_arm
3
1 5
5 0
18 0
2
0
2
0 1 5 0
0 5 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table2 right_arm
3
2 6
5 0
18 0
2
0
2
0 2 6 0
0 5 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table0 left_arm
3
1 5
6 0
18 0
2
0
2
0 1 5 1
0 6 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table0 right_arm
3
2 6
6 0
18 0
2
0
2
0 2 6 1
0 6 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table1 left_arm
3
1 5
7 0
18 0
2
0
2
0 1 5 1
0 7 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table1 right_arm
3
2 6
7 0
18 0
2
0
2
0 2 6 1
0 7 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table2 left_arm
3
1 5
8 0
18 0
2
0
2
0 1 5 1
0 8 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table2 right_arm
3
2 6
8 0
18 0
2
0
2
0 2 6 1
0 8 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table0 left_arm
3
1 5
9 0
18 0
2
0
2
0 1 5 2
0 9 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table0 right_arm
3
2 6
9 0
18 0
2
0
2
0 2 6 2
0 9 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table1 left_arm
3
1 5
10 0
18 0
2
0
2
0 1 5 2
0 10 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table1 right_arm
3
2 6
10 0
18 0
2
0
2
0 2 6 2
0 10 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table2 left_arm
3
1 5
11 0
18 0
2
0
2
0 1 5 2
0 11 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table2 right_arm
3
2 6
11 0
18 0
2
0
2
0 2 6 2
0 11 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup3 table0 left_arm
3
1 5
12 0
18 0
2
0
2
0 1 5 3
0 12 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup3 table0 right_arm
3
2 6
12 0
18 0
2
0
2
0 2 6 3
0 12 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup3 table1 left_arm
3
1 5
13 0
18 0
2
0
2
0 1 5 3
0 13 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup3 table1 right_arm
3
2 6
13 0
18 0
2
0
2
0 2 6 3
0 13 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup3 table2 left_arm
3
1 5
14 0
18 0
2
0
2
0 1 5 3
0 14 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup3 table2 right_arm
3
2 6
14 0
18 0
2
0
2
0 2 6 3
0 14 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup4 table0 left_arm
3
1 5
15 0
18 0
2
0
2
0 1 5 4
0 15 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup4 table0 right_arm
3
2 6
15 0
18 0
2
0
2
0 2 6 4
0 15 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup4 table1 left_arm
3
1 5
16 0
18 0
2
0
2
0 1 5 4
0 16 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup4 table1 right_arm
3
2 6
16 0
18 0
2
0
2
0 2 6 4
0 16 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup4 table2 left_arm
3
1 5
17 0
18 0
2
0
2
0 1 5 4
0 17 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup4 table2 right_arm
3
2 6
17 0
18 0
2
0
2
0 2 6 4
0 17 0 1
0
0
end_operator
begin_operator
pickup-sponge right_arm
1
2 6
2
0
1
0 2 6 5
0
0
end_operator
begin_operator
putdown-object room0 cup0 table0 left_arm
2
1 0
18 0
2
0
2
0 1 0 5
0 3 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup0 table0 right_arm
2
2 0
18 0
2
0
2
0 2 0 6
0 3 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup0 table1 left_arm
2
1 0
18 0
2
0
2
0 1 0 5
0 4 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup0 table1 right_arm
2
2 0
18 0
2
0
2
0 2 0 6
0 4 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup0 table2 left_arm
2
1 0
18 0
2
0
2
0 1 0 5
0 5 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup0 table2 right_arm
2
2 0
18 0
2
0
2
0 2 0 6
0 5 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table0 left_arm
2
1 1
18 0
2
0
2
0 1 1 5
0 6 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table0 right_arm
2
2 1
18 0
2
0
2
0 2 1 6
0 6 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table1 left_arm
2
1 1
18 0
2
0
2
0 1 1 5
0 7 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table1 right_arm
2
2 1
18 0
2
0
2
0 2 1 6
0 7 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table2 left_arm
2
1 1
18 0
2
0
2
0 1 1 5
0 8 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table2 right_arm
2
2 1
18 0
2
0
2
0 2 1 6
0 8 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table0 left_arm
2
1 2
18 0
2
0
2
0 1 2 5
0 9 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table0 right_arm
2
2 2
18 0
2
0
2
0 2 2 6
0 9 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table1 left_arm
2
1 2
18 0
2
0
2
0 1 2 5
0 10 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table1 right_arm
2
2 2
18 0
2
0
2
0 2 2 6
0 10 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table2 left_arm
2
1 2
18 0
2
0
2
0 1 2 5
0 11 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table2 right_arm
2
2 2
18 0
2
0
2
0 2 2 6
0 11 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup3 table0 left_arm
2
1 3
18 0
2
0
2
0 1 3 5
0 12 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup3 table0 right_arm
2
2 3
18 0
2
0
2
0 2 3 6
0 12 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup3 table1 left_arm
2
1 3
18 0
2
0
2
0 1 3 5
0 13 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup3 table1 right_arm
2
2 3
18 0
2
0
2
0 2 3 6
0 13 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup3 table2 left_arm
2
1 3
18 0
2
0
2
0 1 3 5
0 14 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup3 table2 right_arm
2
2 3
18 0
2
0
2
0 2 3 6
0 14 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup4 table0 left_arm
2
1 4
18 0
2
0
2
0 1 4 5
0 15 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup4 table0 right_arm
2
2 4
18 0
2
0
2
0 2 4 6
0 15 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup4 table1 left_arm
2
1 4
18 0
2
0
2
0 1 4 5
0 16 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup4 table1 right_arm
2
2 4
18 0
2
0
2
0 2 4 6
0 16 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup4 table2 left_arm
2
1 4
18 0
2
0
2
0 1 4 5
0 17 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup4 table2 right_arm
2
2 4
18 0
2
0
2
0 2 4 6
0 17 -1 0
0
0
end_operator
begin_operator
putdown-sponge right_arm
1
2 5
2
0
1
0 2 5 6
0
0
end_operator
begin_operator
wipe room0 wipe0 table0 right_arm
4
2 5
18 0
19 0
31 1
2
0
1
0 31 1 0
0
0
end_operator
begin_operator
wipe room0 wipe0 table1 right_arm
4
2 5
18 0
20 0
31 1
2
0
1
0 31 1 0
0
0
end_operator
begin_operator
wipe room0 wipe0 table2 right_arm
4
2 5
18 0
21 0
31 1
2
0
1
0 31 1 0
0
0
end_operator
begin_operator
wipe room0 wipe1 table0 right_arm
4
2 5
18 0
22 0
32 1
2
0
1
0 32 1 0
0
0
end_operator
begin_operator
wipe room0 wipe1 table1 right_arm
4
2 5
18 0
23 0
32 1
2
0
1
0 32 1 0
0
0
end_operator
begin_operator
wipe room0 wipe1 table2 right_arm
4
2 5
18 0
24 0
32 1
2
0
1
0 32 1 0
0
0
end_operator
begin_operator
wipe room0 wipe2 table0 right_arm
4
2 5
18 0
25 0
33 1
2
0
1
0 33 1 0
0
0
end_operator
begin_operator
wipe room0 wipe2 table1 right_arm
4
2 5
18 0
26 0
33 1
2
0
1
0 33 1 0
0
0
end_operator
begin_operator
wipe room0 wipe2 table2 right_arm
4
2 5
18 0
27 0
33 1
2
0
1
0 33 1 0
0
0
end_operator
begin_operator
wipe room0 wipe3 table0 right_arm
4
2 5
18 0
28 0
34 1
2
0
1
0 34 1 0
0
0
end_operator
begin_operator
wipe room0 wipe3 table1 right_arm
4
2 5
18 0
29 0
34 1
2
0
1
0 34 1 0
0
0
end_operator
begin_operator
wipe room0 wipe3 table2 right_arm
4
2 5
18 0
30 0
34 1
2
0
1
0 34 1 0
0
0
end_operator
0
