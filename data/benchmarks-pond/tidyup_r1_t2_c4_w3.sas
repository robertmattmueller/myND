begin_version
3.POND
end_version
begin_metric
0
end_metric
19
begin_variable
var0
-1
5
Atom grasped(cup0, left_arm)
Atom grasped(cup1, left_arm)
Atom grasped(cup2, left_arm)
Atom grasped(cup3, left_arm)
Atom hand-free(left_arm)
end_variable
begin_variable
var1
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
var2
-1
2
Atom on(cup0, table0)
NegatedAtom on(cup0, table0)
end_variable
begin_variable
var3
-1
2
Atom on(cup0, table1)
NegatedAtom on(cup0, table1)
end_variable
begin_variable
var4
-1
2
Atom on(cup1, table0)
NegatedAtom on(cup1, table0)
end_variable
begin_variable
var5
-1
2
Atom on(cup1, table1)
NegatedAtom on(cup1, table1)
end_variable
begin_variable
var6
-1
2
Atom on(cup2, table0)
NegatedAtom on(cup2, table0)
end_variable
begin_variable
var7
-1
2
Atom on(cup2, table1)
NegatedAtom on(cup2, table1)
end_variable
begin_variable
var8
-1
2
Atom on(cup3, table0)
NegatedAtom on(cup3, table0)
end_variable
begin_variable
var9
-1
2
Atom on(cup3, table1)
NegatedAtom on(cup3, table1)
end_variable
begin_variable
var10
-1
2
Atom wipe-point-on(wipe0, table0)
NegatedAtom wipe-point-on(wipe0, table0)
end_variable
begin_variable
var11
-1
2
Atom wipe-point-on(wipe0, table1)
NegatedAtom wipe-point-on(wipe0, table1)
end_variable
begin_variable
var12
-1
2
Atom wipe-point-on(wipe1, table0)
NegatedAtom wipe-point-on(wipe1, table0)
end_variable
begin_variable
var13
-1
2
Atom wipe-point-on(wipe1, table1)
NegatedAtom wipe-point-on(wipe1, table1)
end_variable
begin_variable
var14
-1
2
Atom wipe-point-on(wipe2, table0)
NegatedAtom wipe-point-on(wipe2, table0)
end_variable
begin_variable
var15
-1
2
Atom wipe-point-on(wipe2, table1)
NegatedAtom wipe-point-on(wipe2, table1)
end_variable
begin_variable
var16
-1
2
Atom wiped(wipe0)
NegatedAtom wiped(wipe0)
end_variable
begin_variable
var17
-1
2
Atom wiped(wipe1)
NegatedAtom wiped(wipe1)
end_variable
begin_variable
var18
-1
2
Atom wiped(wipe2)
NegatedAtom wiped(wipe2)
end_variable
2
begin_mutex_group
5
0 0
0 1
0 2
0 3
0 4
end_mutex_group
begin_mutex_group
6
1 0
1 1
1 2
1 3
1 4
1 5
end_mutex_group
begin_state
5
0 4
1 5
16 1
17 1
18 1
7
2 0 3 0
4 0 5 0
6 0 7 0
8 0 9 0
10 0 11 0
12 0 13 0
14 0 15 0
0
end_state
begin_goal
7
2 0
4 0
6 0
8 0
16 0
17 0
18 0
end_goal
50
begin_operator
detect-arm left_arm
0
1
0
0
5
0 4
0 0
0 1
0 2
0 3
end_operator
begin_operator
detect-arm right_arm
0
1
0
0
6
1 4
1 5
1 0
1 1
1 2
1 3
end_operator
begin_operator
detect-objects room0 table0
0
1
0
0
7
2 0
4 0
6 0
8 0
10 0
12 0
14 0
end_operator
begin_operator
detect-objects room0 table1
0
1
0
0
7
3 0
5 0
7 0
9 0
11 0
13 0
15 0
end_operator
begin_operator
detect-wiped room0 table0 wipe0
1
10 0
1
0
0
1
16 0
end_operator
begin_operator
detect-wiped room0 table0 wipe1
1
12 0
1
0
0
1
17 0
end_operator
begin_operator
detect-wiped room0 table0 wipe2
1
14 0
1
0
0
1
18 0
end_operator
begin_operator
detect-wiped room0 table1 wipe0
1
11 0
1
0
0
1
16 0
end_operator
begin_operator
detect-wiped room0 table1 wipe1
1
13 0
1
0
0
1
17 0
end_operator
begin_operator
detect-wiped room0 table1 wipe2
1
15 0
1
0
0
1
18 0
end_operator
begin_operator
pickup-object room0 cup0 table0 left_arm
2
0 4
2 0
2
0
2
0 0 4 0
0 2 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table0 right_arm
2
1 5
2 0
2
0
2
0 1 5 0
0 2 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table1 left_arm
2
0 4
3 0
2
0
2
0 0 4 0
0 3 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table1 right_arm
2
1 5
3 0
2
0
2
0 1 5 0
0 3 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table0 left_arm
2
0 4
4 0
2
0
2
0 0 4 1
0 4 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table0 right_arm
2
1 5
4 0
2
0
2
0 1 5 1
0 4 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table1 left_arm
2
0 4
5 0
2
0
2
0 0 4 1
0 5 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table1 right_arm
2
1 5
5 0
2
0
2
0 1 5 1
0 5 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table0 left_arm
2
0 4
6 0
2
0
2
0 0 4 2
0 6 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table0 right_arm
2
1 5
6 0
2
0
2
0 1 5 2
0 6 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table1 left_arm
2
0 4
7 0
2
0
2
0 0 4 2
0 7 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup2 table1 right_arm
2
1 5
7 0
2
0
2
0 1 5 2
0 7 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup3 table0 left_arm
2
0 4
8 0
2
0
2
0 0 4 3
0 8 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup3 table0 right_arm
2
1 5
8 0
2
0
2
0 1 5 3
0 8 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup3 table1 left_arm
2
0 4
9 0
2
0
2
0 0 4 3
0 9 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup3 table1 right_arm
2
1 5
9 0
2
0
2
0 1 5 3
0 9 0 1
0
0
end_operator
begin_operator
pickup-sponge right_arm
1
1 5
2
0
1
0 1 5 4
0
0
end_operator
begin_operator
putdown-object room0 cup0 table0 left_arm
1
0 0
2
0
2
0 0 0 4
0 2 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup0 table0 right_arm
1
1 0
2
0
2
0 1 0 5
0 2 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup0 table1 left_arm
1
0 0
2
0
2
0 0 0 4
0 3 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup0 table1 right_arm
1
1 0
2
0
2
0 1 0 5
0 3 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table0 left_arm
1
0 1
2
0
2
0 0 1 4
0 4 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table0 right_arm
1
1 1
2
0
2
0 1 1 5
0 4 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table1 left_arm
1
0 1
2
0
2
0 0 1 4
0 5 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup1 table1 right_arm
1
1 1
2
0
2
0 1 1 5
0 5 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table0 left_arm
1
0 2
2
0
2
0 0 2 4
0 6 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table0 right_arm
1
1 2
2
0
2
0 1 2 5
0 6 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table1 left_arm
1
0 2
2
0
2
0 0 2 4
0 7 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup2 table1 right_arm
1
1 2
2
0
2
0 1 2 5
0 7 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup3 table0 left_arm
1
0 3
2
0
2
0 0 3 4
0 8 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup3 table0 right_arm
1
1 3
2
0
2
0 1 3 5
0 8 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup3 table1 left_arm
1
0 3
2
0
2
0 0 3 4
0 9 -1 0
0
0
end_operator
begin_operator
putdown-object room0 cup3 table1 right_arm
1
1 3
2
0
2
0 1 3 5
0 9 -1 0
0
0
end_operator
begin_operator
putdown-sponge right_arm
1
1 4
2
0
1
0 1 4 5
0
0
end_operator
begin_operator
wipe room0 wipe0 table0 right_arm
3
1 4
10 0
16 1
2
0
1
0 16 1 0
0
0
end_operator
begin_operator
wipe room0 wipe0 table1 right_arm
3
1 4
11 0
16 1
2
0
1
0 16 1 0
0
0
end_operator
begin_operator
wipe room0 wipe1 table0 right_arm
3
1 4
12 0
17 1
2
0
1
0 17 1 0
0
0
end_operator
begin_operator
wipe room0 wipe1 table1 right_arm
3
1 4
13 0
17 1
2
0
1
0 17 1 0
0
0
end_operator
begin_operator
wipe room0 wipe2 table0 right_arm
3
1 4
14 0
18 1
2
0
1
0 18 1 0
0
0
end_operator
begin_operator
wipe room0 wipe2 table1 right_arm
3
1 4
15 0
18 1
2
0
1
0 18 1 0
0
0
end_operator
0
