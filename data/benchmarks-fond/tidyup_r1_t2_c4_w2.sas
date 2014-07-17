begin_version
3
end_version
begin_metric
0
end_metric
8
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
3
Atom on(cup0, table0)
Atom on(cup0, table1)
<none of those>
end_variable
begin_variable
var3
-1
3
Atom on(cup1, table0)
Atom on(cup1, table1)
<none of those>
end_variable
begin_variable
var4
-1
3
Atom on(cup2, table0)
Atom on(cup2, table1)
<none of those>
end_variable
begin_variable
var5
-1
3
Atom on(cup3, table0)
Atom on(cup3, table1)
<none of those>
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
6
begin_mutex_group
4
0 0
1 0
2 0
2 1
end_mutex_group
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
begin_mutex_group
4
0 1
1 1
3 0
3 1
end_mutex_group
begin_mutex_group
4
0 2
1 2
4 0
4 1
end_mutex_group
begin_mutex_group
4
0 3
1 3
5 0
5 1
end_mutex_group
begin_state
4
5
1
1
1
1
1
1
end_state
begin_goal
6
2 0
3 0
4 0
5 0
6 0
7 0
end_goal
36
begin_operator
pickup-object room0 cup0 table0 left_arm
2
0 4
2 0
2
0
2
0 0 4 0
0 2 0 2
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
0 2 0 2
0
end_operator
begin_operator
pickup-object room0 cup0 table1 left_arm
2
0 4
2 1
2
0
2
0 0 4 0
0 2 1 2
0
end_operator
begin_operator
pickup-object room0 cup0 table1 right_arm
2
1 5
2 1
2
0
2
0 1 5 0
0 2 1 2
0
end_operator
begin_operator
pickup-object room0 cup1 table0 left_arm
2
0 4
3 0
2
0
2
0 0 4 1
0 3 0 2
0
end_operator
begin_operator
pickup-object room0 cup1 table0 right_arm
2
1 5
3 0
2
0
2
0 1 5 1
0 3 0 2
0
end_operator
begin_operator
pickup-object room0 cup1 table1 left_arm
2
0 4
3 1
2
0
2
0 0 4 1
0 3 1 2
0
end_operator
begin_operator
pickup-object room0 cup1 table1 right_arm
2
1 5
3 1
2
0
2
0 1 5 1
0 3 1 2
0
end_operator
begin_operator
pickup-object room0 cup2 table0 left_arm
2
0 4
4 0
2
0
2
0 0 4 2
0 4 0 2
0
end_operator
begin_operator
pickup-object room0 cup2 table0 right_arm
2
1 5
4 0
2
0
2
0 1 5 2
0 4 0 2
0
end_operator
begin_operator
pickup-object room0 cup2 table1 left_arm
2
0 4
4 1
2
0
2
0 0 4 2
0 4 1 2
0
end_operator
begin_operator
pickup-object room0 cup2 table1 right_arm
2
1 5
4 1
2
0
2
0 1 5 2
0 4 1 2
0
end_operator
begin_operator
pickup-object room0 cup3 table0 left_arm
2
0 4
5 0
2
0
2
0 0 4 3
0 5 0 2
0
end_operator
begin_operator
pickup-object room0 cup3 table0 right_arm
2
1 5
5 0
2
0
2
0 1 5 3
0 5 0 2
0
end_operator
begin_operator
pickup-object room0 cup3 table1 left_arm
2
0 4
5 1
2
0
2
0 0 4 3
0 5 1 2
0
end_operator
begin_operator
pickup-object room0 cup3 table1 right_arm
2
1 5
5 1
2
0
2
0 1 5 3
0 5 1 2
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
end_operator
begin_operator
putdown-object room0 cup0 table1 left_arm
1
0 0
2
0
2
0 0 0 4
0 2 -1 1
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
0 2 -1 1
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
0 3 -1 0
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
0 3 -1 0
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
0 3 -1 1
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
0 3 -1 1
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
0 4 -1 0
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
0 4 -1 0
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
0 4 -1 1
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
0 4 -1 1
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
0 5 -1 0
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
0 5 -1 0
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
0 5 -1 1
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
0 5 -1 1
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
end_operator
begin_operator
wipe room0 wipe0 table0 right_arm
2
1 4
6 1
2
0
1
0 6 1 0
0
end_operator
begin_operator
wipe room0 wipe1 table0 right_arm
2
1 4
7 1
2
0
1
0 7 1 0
0
end_operator
0
