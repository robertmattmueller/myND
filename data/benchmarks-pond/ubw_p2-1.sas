begin_version
3.POND
end_version
begin_metric
0
end_metric
6
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
Atom on(b1, b2)
NegatedAtom on(b1, b2)
end_variable
begin_variable
var3
-1
2
Atom on(b2, b1)
NegatedAtom on(b2, b1)
end_variable
begin_variable
var4
-1
2
Atom on-table(b1)
NegatedAtom on-table(b1)
end_variable
begin_variable
var5
-1
2
Atom on-table(b2)
NegatedAtom on-table(b2)
end_variable
0
begin_state
0
4
4 0 2 0
5 0 3 0
0 0 3 0
1 0 2 0
2
or((4 0)(5 0))
or((0 0)(1 0))
end_state
begin_goal
2
3 0
4 0
end_goal
10
begin_operator
move-t-to-b b1 b2
3
0 0
1 0
4 0
1
3
0 1 0 1
0 2 -1 0
0 4 0 1
0
0
end_operator
begin_operator
move-t-to-b b2 b1
3
0 0
1 0
5 0
1
3
0 0 0 1
0 3 -1 0
0 5 0 1
0
0
end_operator
begin_operator
move-to-t b1 b2
2
0 0
2 0
1
3
0 1 -1 0
0 2 0 1
0 4 -1 0
0
0
end_operator
begin_operator
move-to-t b2 b1
2
1 0
3 0
1
3
0 0 -1 0
0 3 0 1
0 5 -1 0
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
senseon b1 b2
0
1
0
0
1
2 0
end_operator
begin_operator
senseon b2 b1
0
1
0
0
1
3 0
end_operator
begin_operator
senseontable b1
0
1
0
0
1
4 0
end_operator
begin_operator
senseontable b2
0
1
0
0
1
5 0
end_operator
0
