begin_version
3.POND
end_version
begin_metric
0
end_metric
12
begin_variable
var0
-1
2
Atom clear(b1)
NegatedAtom clear(b1)
end_variable
begin_variable
var1
-1
2
Atom clear(b2)
NegatedAtom clear(b2)
end_variable
begin_variable
var2
-1
2
Atom clear(b3)
NegatedAtom clear(b3)
end_variable
begin_variable
var3
-1
2
Atom on(b1, b2)
NegatedAtom on(b1, b2)
end_variable
begin_variable
var4
-1
2
Atom on(b1, b3)
NegatedAtom on(b1, b3)
end_variable
begin_variable
var5
-1
2
Atom on(b2, b1)
NegatedAtom on(b2, b1)
end_variable
begin_variable
var6
-1
2
Atom on(b2, b3)
NegatedAtom on(b2, b3)
end_variable
begin_variable
var7
-1
2
Atom on(b3, b1)
NegatedAtom on(b3, b1)
end_variable
begin_variable
var8
-1
2
Atom on(b3, b2)
NegatedAtom on(b3, b2)
end_variable
begin_variable
var9
-1
2
Atom on-table(b1)
NegatedAtom on-table(b1)
end_variable
begin_variable
var10
-1
2
Atom on-table(b2)
NegatedAtom on-table(b2)
end_variable
begin_variable
var11
-1
2
Atom on-table(b3)
NegatedAtom on-table(b3)
end_variable
0
begin_state
0
6
9 0 3 0 4 0
10 0 5 0 6 0
11 0 7 0 8 0
0 0 5 0 7 0
1 0 3 0 8 0
2 0 4 0 6 0
20
or((9 0)(10 0)(11 0))
or((0 0)(1 0)(2 0))
or((3 1)(8 1))
or((4 1)(6 1))
or((5 1)(7 1))
or((6 1)(4 1))
or((7 1)(5 1))
or((8 1)(3 1))
or((5 1)(3 1))
or((3 1)(5 1))
or(or((6 1)(7 1))(3 1))
or(or((8 1)(5 1))(4 1))
or(or((7 1)(3 1))(6 1))
or(or((4 1)(8 1))(5 1))
or(or((5 1)(4 1))(8 1))
or(or((3 1)(6 1))(7 1))
or((7 1)(4 1))
or((4 1)(7 1))
or((8 1)(6 1))
or((6 1)(8 1))
end_state
begin_goal
3
9 0
10 0
11 0
end_goal
30
begin_operator
move-b-to-b b1 b2 b3
3
0 0
2 0
3 0
1
4
0 1 -1 0
0 2 0 1
0 3 0 1
0 4 -1 0
0
0
end_operator
begin_operator
move-b-to-b b1 b3 b2
3
0 0
1 0
4 0
1
4
0 1 0 1
0 2 -1 0
0 3 -1 0
0 4 0 1
0
0
end_operator
begin_operator
move-b-to-b b2 b1 b3
3
1 0
2 0
5 0
1
4
0 0 -1 0
0 2 0 1
0 5 0 1
0 6 -1 0
0
0
end_operator
begin_operator
move-b-to-b b2 b3 b1
3
0 0
1 0
6 0
1
4
0 0 0 1
0 2 -1 0
0 5 -1 0
0 6 0 1
0
0
end_operator
begin_operator
move-b-to-b b3 b1 b2
3
1 0
2 0
7 0
1
4
0 0 -1 0
0 1 0 1
0 7 0 1
0 8 -1 0
0
0
end_operator
begin_operator
move-b-to-b b3 b2 b1
3
0 0
2 0
8 0
1
4
0 0 0 1
0 1 -1 0
0 7 -1 0
0 8 0 1
0
0
end_operator
begin_operator
move-t-to-b b1 b2
3
0 0
1 0
9 0
1
3
0 1 0 1
0 3 -1 0
0 9 0 1
0
0
end_operator
begin_operator
move-t-to-b b1 b3
3
0 0
2 0
9 0
1
3
0 2 0 1
0 4 -1 0
0 9 0 1
0
0
end_operator
begin_operator
move-t-to-b b2 b1
3
0 0
1 0
10 0
1
3
0 0 0 1
0 5 -1 0
0 10 0 1
0
0
end_operator
begin_operator
move-t-to-b b2 b3
3
1 0
2 0
10 0
1
3
0 2 0 1
0 6 -1 0
0 10 0 1
0
0
end_operator
begin_operator
move-t-to-b b3 b1
3
0 0
2 0
11 0
1
3
0 0 0 1
0 7 -1 0
0 11 0 1
0
0
end_operator
begin_operator
move-t-to-b b3 b2
3
1 0
2 0
11 0
1
3
0 1 0 1
0 8 -1 0
0 11 0 1
0
0
end_operator
begin_operator
move-to-t b1 b2
2
0 0
3 0
1
3
0 1 -1 0
0 3 0 1
0 9 -1 0
0
0
end_operator
begin_operator
move-to-t b1 b3
2
0 0
4 0
1
3
0 2 -1 0
0 4 0 1
0 9 -1 0
0
0
end_operator
begin_operator
move-to-t b2 b1
2
1 0
5 0
1
3
0 0 -1 0
0 5 0 1
0 10 -1 0
0
0
end_operator
begin_operator
move-to-t b2 b3
2
1 0
6 0
1
3
0 2 -1 0
0 6 0 1
0 10 -1 0
0
0
end_operator
begin_operator
move-to-t b3 b1
2
2 0
7 0
1
3
0 0 -1 0
0 7 0 1
0 11 -1 0
0
0
end_operator
begin_operator
move-to-t b3 b2
2
2 0
8 0
1
3
0 1 -1 0
0 8 0 1
0 11 -1 0
0
0
end_operator
begin_operator
senseclear b1
0
1
0
0
1
0 0
end_operator
begin_operator
senseclear b2
0
1
0
0
1
1 0
end_operator
begin_operator
senseclear b3
0
1
0
0
1
2 0
end_operator
begin_operator
senseon b1 b2
0
1
0
0
1
3 0
end_operator
begin_operator
senseon b1 b3
0
1
0
0
1
4 0
end_operator
begin_operator
senseon b2 b1
0
1
0
0
1
5 0
end_operator
begin_operator
senseon b2 b3
0
1
0
0
1
6 0
end_operator
begin_operator
senseon b3 b1
0
1
0
0
1
7 0
end_operator
begin_operator
senseon b3 b2
0
1
0
0
1
8 0
end_operator
begin_operator
senseontable b1
0
1
0
0
1
9 0
end_operator
begin_operator
senseontable b2
0
1
0
0
1
10 0
end_operator
begin_operator
senseontable b3
0
1
0
0
1
11 0
end_operator
0
