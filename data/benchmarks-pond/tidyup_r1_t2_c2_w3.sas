begin_version
3.POND
end_version
begin_metric
0
end_metric
15
begin_variable
var0
-1
3
Atom grasped(cup0, left_arm)
Atom grasped(cup1, left_arm)
Atom hand-free(left_arm)
end_variable
begin_variable
var1
-1
4
Atom grasped(cup0, right_arm)
Atom grasped(cup1, right_arm)
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
Atom wipe-point-on(wipe0, table0)
NegatedAtom wipe-point-on(wipe0, table0)
end_variable
begin_variable
var7
-1
2
Atom wipe-point-on(wipe0, table1)
NegatedAtom wipe-point-on(wipe0, table1)
end_variable
begin_variable
var8
-1
2
Atom wipe-point-on(wipe1, table0)
NegatedAtom wipe-point-on(wipe1, table0)
end_variable
begin_variable
var9
-1
2
Atom wipe-point-on(wipe1, table1)
NegatedAtom wipe-point-on(wipe1, table1)
end_variable
begin_variable
var10
-1
2
Atom wipe-point-on(wipe2, table0)
NegatedAtom wipe-point-on(wipe2, table0)
end_variable
begin_variable
var11
-1
2
Atom wipe-point-on(wipe2, table1)
NegatedAtom wipe-point-on(wipe2, table1)
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
2
begin_mutex_group
3
0 0
0 1
0 2
end_mutex_group
begin_mutex_group
4
1 0
1 1
1 2
1 3
end_mutex_group
begin_state
5
0 2
1 3
12 1
13 1
14 1
5
2 0 3 0
4 0 5 0
6 0 7 0
8 0 9 0
10 0 11 0
0
end_state
begin_goal
5
2 0
4 0
12 0
13 0
14 0
end_goal
34
begin_operator
detect-arm left_arm
0
1
0
0
3
0 2
0 0
0 1
end_operator
begin_operator
detect-arm right_arm
0
1
0
0
4
1 2
1 3
1 0
1 1
end_operator
begin_operator
detect-objects room0 table0
0
1
0
0
5
2 0
4 0
6 0
8 0
10 0
end_operator
begin_operator
detect-objects room0 table1
0
1
0
0
5
3 0
5 0
7 0
9 0
11 0
end_operator
begin_operator
detect-wiped room0 table0 wipe0
1
6 0
1
0
0
1
12 0
end_operator
begin_operator
detect-wiped room0 table0 wipe1
1
8 0
1
0
0
1
13 0
end_operator
begin_operator
detect-wiped room0 table0 wipe2
1
10 0
1
0
0
1
14 0
end_operator
begin_operator
detect-wiped room0 table1 wipe0
1
7 0
1
0
0
1
12 0
end_operator
begin_operator
detect-wiped room0 table1 wipe1
1
9 0
1
0
0
1
13 0
end_operator
begin_operator
detect-wiped room0 table1 wipe2
1
11 0
1
0
0
1
14 0
end_operator
begin_operator
pickup-object room0 cup0 table0 left_arm
2
0 2
2 0
2
0
2
0 0 2 0
0 2 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table0 right_arm
2
1 3
2 0
2
0
2
0 1 3 0
0 2 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table1 left_arm
2
0 2
3 0
2
0
2
0 0 2 0
0 3 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup0 table1 right_arm
2
1 3
3 0
2
0
2
0 1 3 0
0 3 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table0 left_arm
2
0 2
4 0
2
0
2
0 0 2 1
0 4 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table0 right_arm
2
1 3
4 0
2
0
2
0 1 3 1
0 4 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table1 left_arm
2
0 2
5 0
2
0
2
0 0 2 1
0 5 0 1
0
0
end_operator
begin_operator
pickup-object room0 cup1 table1 right_arm
2
1 3
5 0
2
0
2
0 1 3 1
0 5 0 1
0
0
end_operator
begin_operator
pickup-sponge right_arm
1
1 3
2
0
1
0 1 3 2
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
0 0 0 2
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
0 1 0 3
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
0 0 0 2
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
0 1 0 3
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
0 0 1 2
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
0 1 1 3
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
0 0 1 2
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
0 1 1 3
0 5 -1 0
0
0
end_operator
begin_operator
putdown-sponge right_arm
1
1 2
2
0
1
0 1 2 3
0
0
end_operator
begin_operator
wipe room0 wipe0 table0 right_arm
3
1 2
6 0
12 1
2
0
1
0 12 1 0
0
0
end_operator
begin_operator
wipe room0 wipe0 table1 right_arm
3
1 2
7 0
12 1
2
0
1
0 12 1 0
0
0
end_operator
begin_operator
wipe room0 wipe1 table0 right_arm
3
1 2
8 0
13 1
2
0
1
0 13 1 0
0
0
end_operator
begin_operator
wipe room0 wipe1 table1 right_arm
3
1 2
9 0
13 1
2
0
1
0 13 1 0
0
0
end_operator
begin_operator
wipe room0 wipe2 table0 right_arm
3
1 2
10 0
14 1
2
0
1
0 14 1 0
0
0
end_operator
begin_operator
wipe room0 wipe2 table1 right_arm
3
1 2
11 0
14 1
2
0
1
0 14 1 0
0
0
end_operator
0
