begin_version
3.FOND
end_version
begin_metric
0
end_metric
5
begin_variable
var0
-1
2
Atom not-flattire()
NegatedAtom not-flattire()
end_variable
begin_variable
var1
-1
2
Atom spare-in(l_2_1)
NegatedAtom spare-in(l_2_1)
end_variable
begin_variable
var2
-1
2
Atom spare-in(l_2_2)
NegatedAtom spare-in(l_2_2)
end_variable
begin_variable
var3
-1
2
Atom spare-in(l_3_1)
NegatedAtom spare-in(l_3_1)
end_variable
begin_variable
var4
-1
6
Atom vehicle-at(l_1_1)
Atom vehicle-at(l_1_2)
Atom vehicle-at(l_1_3)
Atom vehicle-at(l_2_1)
Atom vehicle-at(l_2_2)
Atom vehicle-at(l_3_1)
end_variable
1
begin_mutex_group
6
4 0
4 1
4 2
4 3
4 4
4 5
end_mutex_group
begin_state
0
0
0
0
0
end_state
begin_goal
1
4 2
end_goal
11
begin_operator
change-tire l_2_1
2
1 0
4 3
1
2
0 0 -1 0
0 1 0 1
0
end_operator
begin_operator
change-tire l_2_2
2
2 0
4 4
1
2
0 0 -1 0
0 2 0 1
0
end_operator
begin_operator
change-tire l_3_1
2
3 0
4 5
1
2
0 0 -1 0
0 3 0 1
0
end_operator
begin_operator
move-car l_1_1 l_1_2
2
0 0
4 0
2
2
0 0 0 1
0 4 0 1
1
0 4 0 1
0
end_operator
begin_operator
move-car l_1_1 l_2_1
2
0 0
4 0
2
2
0 0 0 1
0 4 0 3
1
0 4 0 3
0
end_operator
begin_operator
move-car l_1_2 l_1_3
2
0 0
4 1
2
2
0 0 0 1
0 4 1 2
1
0 4 1 2
0
end_operator
begin_operator
move-car l_1_2 l_2_2
2
0 0
4 1
2
2
0 0 0 1
0 4 1 4
1
0 4 1 4
0
end_operator
begin_operator
move-car l_2_1 l_1_2
2
0 0
4 3
2
2
0 0 0 1
0 4 3 1
1
0 4 3 1
0
end_operator
begin_operator
move-car l_2_1 l_3_1
2
0 0
4 3
2
2
0 0 0 1
0 4 3 5
1
0 4 3 5
0
end_operator
begin_operator
move-car l_2_2 l_1_3
2
0 0
4 4
2
2
0 0 0 1
0 4 4 2
1
0 4 4 2
0
end_operator
begin_operator
move-car l_3_1 l_2_2
2
0 0
4 5
2
2
0 0 0 1
0 4 5 4
1
0 4 5 4
0
end_operator
0
