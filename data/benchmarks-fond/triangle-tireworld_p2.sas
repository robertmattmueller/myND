begin_version
3.FOND
end_version
begin_metric
0
end_metric
11
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
Atom spare-in(l_2_3)
NegatedAtom spare-in(l_2_3)
end_variable
begin_variable
var4
-1
2
Atom spare-in(l_2_4)
NegatedAtom spare-in(l_2_4)
end_variable
begin_variable
var5
-1
2
Atom spare-in(l_3_1)
NegatedAtom spare-in(l_3_1)
end_variable
begin_variable
var6
-1
2
Atom spare-in(l_3_3)
NegatedAtom spare-in(l_3_3)
end_variable
begin_variable
var7
-1
2
Atom spare-in(l_4_1)
NegatedAtom spare-in(l_4_1)
end_variable
begin_variable
var8
-1
2
Atom spare-in(l_4_2)
NegatedAtom spare-in(l_4_2)
end_variable
begin_variable
var9
-1
2
Atom spare-in(l_5_1)
NegatedAtom spare-in(l_5_1)
end_variable
begin_variable
var10
-1
15
Atom vehicle-at(l_1_1)
Atom vehicle-at(l_1_2)
Atom vehicle-at(l_1_3)
Atom vehicle-at(l_1_4)
Atom vehicle-at(l_1_5)
Atom vehicle-at(l_2_1)
Atom vehicle-at(l_2_2)
Atom vehicle-at(l_2_3)
Atom vehicle-at(l_2_4)
Atom vehicle-at(l_3_1)
Atom vehicle-at(l_3_2)
Atom vehicle-at(l_3_3)
Atom vehicle-at(l_4_1)
Atom vehicle-at(l_4_2)
Atom vehicle-at(l_5_1)
end_variable
1
begin_mutex_group
15
10 0
10 1
10 2
10 3
10 4
10 5
10 6
10 7
10 8
10 9
10 10
10 11
10 12
10 13
10 14
end_mutex_group
begin_state
0
0
0
0
0
0
0
0
0
0
0
end_state
begin_goal
1
10 4
end_goal
33
begin_operator
change-tire l_2_1
2
1 0
10 5
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
10 6
1
2
0 0 -1 0
0 2 0 1
0
end_operator
begin_operator
change-tire l_2_3
2
3 0
10 7
1
2
0 0 -1 0
0 3 0 1
0
end_operator
begin_operator
change-tire l_2_4
2
4 0
10 8
1
2
0 0 -1 0
0 4 0 1
0
end_operator
begin_operator
change-tire l_3_1
2
5 0
10 9
1
2
0 0 -1 0
0 5 0 1
0
end_operator
begin_operator
change-tire l_3_3
2
6 0
10 11
1
2
0 0 -1 0
0 6 0 1
0
end_operator
begin_operator
change-tire l_4_1
2
7 0
10 12
1
2
0 0 -1 0
0 7 0 1
0
end_operator
begin_operator
change-tire l_4_2
2
8 0
10 13
1
2
0 0 -1 0
0 8 0 1
0
end_operator
begin_operator
change-tire l_5_1
2
9 0
10 14
1
2
0 0 -1 0
0 9 0 1
0
end_operator
begin_operator
move-car l_1_1 l_1_2
2
0 0
10 0
2
2
0 0 0 1
0 10 0 1
1
0 10 0 1
0
end_operator
begin_operator
move-car l_1_1 l_2_1
2
0 0
10 0
2
2
0 0 0 1
0 10 0 5
1
0 10 0 5
0
end_operator
begin_operator
move-car l_1_2 l_1_3
2
0 0
10 1
2
2
0 0 0 1
0 10 1 2
1
0 10 1 2
0
end_operator
begin_operator
move-car l_1_2 l_2_2
2
0 0
10 1
2
2
0 0 0 1
0 10 1 6
1
0 10 1 6
0
end_operator
begin_operator
move-car l_1_3 l_1_4
2
0 0
10 2
2
2
0 0 0 1
0 10 2 3
1
0 10 2 3
0
end_operator
begin_operator
move-car l_1_3 l_2_3
2
0 0
10 2
2
2
0 0 0 1
0 10 2 7
1
0 10 2 7
0
end_operator
begin_operator
move-car l_1_4 l_1_5
2
0 0
10 3
2
2
0 0 0 1
0 10 3 4
1
0 10 3 4
0
end_operator
begin_operator
move-car l_1_4 l_2_4
2
0 0
10 3
2
2
0 0 0 1
0 10 3 8
1
0 10 3 8
0
end_operator
begin_operator
move-car l_2_1 l_1_2
2
0 0
10 5
2
2
0 0 0 1
0 10 5 1
1
0 10 5 1
0
end_operator
begin_operator
move-car l_2_1 l_3_1
2
0 0
10 5
2
2
0 0 0 1
0 10 5 9
1
0 10 5 9
0
end_operator
begin_operator
move-car l_2_2 l_1_3
2
0 0
10 6
2
2
0 0 0 1
0 10 6 2
1
0 10 6 2
0
end_operator
begin_operator
move-car l_2_3 l_1_4
2
0 0
10 7
2
2
0 0 0 1
0 10 7 3
1
0 10 7 3
0
end_operator
begin_operator
move-car l_2_3 l_3_3
2
0 0
10 7
2
2
0 0 0 1
0 10 7 11
1
0 10 7 11
0
end_operator
begin_operator
move-car l_2_4 l_1_5
2
0 0
10 8
2
2
0 0 0 1
0 10 8 4
1
0 10 8 4
0
end_operator
begin_operator
move-car l_3_1 l_2_2
2
0 0
10 9
2
2
0 0 0 1
0 10 9 6
1
0 10 9 6
0
end_operator
begin_operator
move-car l_3_1 l_3_2
2
0 0
10 9
2
2
0 0 0 1
0 10 9 10
1
0 10 9 10
0
end_operator
begin_operator
move-car l_3_1 l_4_1
2
0 0
10 9
2
2
0 0 0 1
0 10 9 12
1
0 10 9 12
0
end_operator
begin_operator
move-car l_3_2 l_3_3
2
0 0
10 10
2
2
0 0 0 1
0 10 10 11
1
0 10 10 11
0
end_operator
begin_operator
move-car l_3_2 l_4_2
2
0 0
10 10
2
2
0 0 0 1
0 10 10 13
1
0 10 10 13
0
end_operator
begin_operator
move-car l_3_3 l_2_4
2
0 0
10 11
2
2
0 0 0 1
0 10 11 8
1
0 10 11 8
0
end_operator
begin_operator
move-car l_4_1 l_3_2
2
0 0
10 12
2
2
0 0 0 1
0 10 12 10
1
0 10 12 10
0
end_operator
begin_operator
move-car l_4_1 l_5_1
2
0 0
10 12
2
2
0 0 0 1
0 10 12 14
1
0 10 12 14
0
end_operator
begin_operator
move-car l_4_2 l_3_3
2
0 0
10 13
2
2
0 0 0 1
0 10 13 11
1
0 10 13 11
0
end_operator
begin_operator
move-car l_5_1 l_4_2
2
0 0
10 14
2
2
0 0 0 1
0 10 14 13
1
0 10 14 13
0
end_operator
0
