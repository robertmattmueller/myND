begin_version
3
end_version
begin_metric
0
end_metric
6
begin_variable
var0
-1
4
Atom grasped(cup0, left_arm)
Atom grasped(cup0, right_arm)
Atom on(cup0, table0)
Atom on(cup0, table1)
end_variable
begin_variable
var1
-1
4
Atom grasped(cup1, left_arm)
Atom grasped(cup1, right_arm)
Atom on(cup1, table0)
Atom on(cup1, table1)
end_variable
begin_variable
var2
-1
2
Atom hand-free(left_arm)
<none of those>
end_variable
begin_variable
var3
-1
3
Atom grasped-sponge(right_arm)
Atom hand-free(right_arm)
<none of those>
end_variable
begin_variable
var4
-1
2
Atom wiped(wipe0)
NegatedAtom wiped(wipe0)
end_variable
begin_variable
var5
-1
2
Atom wiped(wipe1)
NegatedAtom wiped(wipe1)
end_variable
4
begin_mutex_group
4
0 0
0 1
0 2
0 3
end_mutex_group
begin_mutex_group
3
0 0
1 0
2 0
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
1 0
1 1
1 2
1 3
end_mutex_group
begin_state
3
3
0
1
1
1
end_state
begin_goal
4
0 2
1 2
4 0
5 0
end_goal
20
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
end_operator
begin_operator
pickup-object room0 cup0 table0 right_arm
2
0 2
3 1
2
0
2
0 0 2 1
0 3 1 2
0
end_operator
begin_operator
pickup-object room0 cup0 table1 left_arm
2
0 3
2 0
2
0
2
0 0 3 0
0 2 0 1
0
end_operator
begin_operator
pickup-object room0 cup0 table1 right_arm
2
0 3
3 1
2
0
2
0 0 3 1
0 3 1 2
0
end_operator
begin_operator
pickup-object room0 cup1 table0 left_arm
2
1 2
2 0
2
0
2
0 1 2 0
0 2 0 1
0
end_operator
begin_operator
pickup-object room0 cup1 table0 right_arm
2
1 2
3 1
2
0
2
0 1 2 1
0 3 1 2
0
end_operator
begin_operator
pickup-object room0 cup1 table1 left_arm
2
1 3
2 0
2
0
2
0 1 3 0
0 2 0 1
0
end_operator
begin_operator
pickup-object room0 cup1 table1 right_arm
2
1 3
3 1
2
0
2
0 1 3 1
0 3 1 2
0
end_operator
begin_operator
pickup-sponge right_arm
1
3 1
2
0
1
0 3 1 0
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
end_operator
begin_operator
putdown-object room0 cup0 table0 right_arm
1
0 1
2
0
2
0 0 1 2
0 3 -1 1
0
end_operator
begin_operator
putdown-object room0 cup0 table1 left_arm
1
0 0
2
0
2
0 0 0 3
0 2 -1 0
0
end_operator
begin_operator
putdown-object room0 cup0 table1 right_arm
1
0 1
2
0
2
0 0 1 3
0 3 -1 1
0
end_operator
begin_operator
putdown-object room0 cup1 table0 left_arm
1
1 0
2
0
2
0 1 0 2
0 2 -1 0
0
end_operator
begin_operator
putdown-object room0 cup1 table0 right_arm
1
1 1
2
0
2
0 1 1 2
0 3 -1 1
0
end_operator
begin_operator
putdown-object room0 cup1 table1 left_arm
1
1 0
2
0
2
0 1 0 3
0 2 -1 0
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
0 3 -1 1
0
end_operator
begin_operator
putdown-sponge right_arm
1
3 0
2
0
1
0 3 0 1
0
end_operator
begin_operator
wipe room0 wipe0 table0 right_arm
2
3 0
4 1
2
0
1
0 4 1 0
0
end_operator
begin_operator
wipe room0 wipe1 table0 right_arm
2
3 0
5 1
2
0
1
0 5 1 0
0
end_operator
0
