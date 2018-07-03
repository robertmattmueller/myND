begin_version
3.POND
end_version
begin_metric
0
end_metric
11
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
4
Atom emptyhand()
Atom holding(b2)
Atom holding(b3)
<none of those>
end_variable
begin_variable
var4
-1
4
Atom holding(b1)
Atom on(b1, b2)
Atom on(b1, b3)
Atom on-table(b1)
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
Atom on-table(b2)
NegatedAtom on-table(b2)
end_variable
begin_variable
var10
-1
2
Atom on-table(b3)
NegatedAtom on-table(b3)
end_variable
2
begin_mutex_group
4
3 0
4 0
3 1
3 2
end_mutex_group
begin_mutex_group
4
4 0
4 1
4 2
4 3
end_mutex_group
begin_state
5
4 3
0 0
3 0
5 1
7 1
6
2 0 1 0
10 0 9 0
10 0 8 0
9 0 6 0
2 0 6 0
1 0 8 0
2
or((8 1)(6 1))
or((6 1)(8 1))
end_state
begin_goal
2
5 0
8 0
end_goal
48
begin_operator
pick-tower b1 b2 b3
3
3 0
4 1
6 0
2
0
4
0 0 -1 1
0 2 -1 0
0 3 0 1
0 6 0 1
0
0
end_operator
begin_operator
pick-tower b1 b3 b2
3
3 0
4 2
8 0
2
0
4
0 0 -1 1
0 1 -1 0
0 3 0 2
0 8 0 1
0
0
end_operator
begin_operator
pick-tower b2 b1 b3
3
3 0
4 2
5 0
2
0
4
0 1 -1 1
0 2 -1 0
0 3 0 3
0 4 2 0
0
0
end_operator
begin_operator
pick-tower b2 b3 b1
3
3 0
6 0
7 0
2
0
4
0 0 -1 0
0 1 -1 1
0 3 0 2
0 7 0 1
0
0
end_operator
begin_operator
pick-tower b3 b1 b2
3
3 0
4 1
7 0
2
0
4
0 1 -1 0
0 2 -1 1
0 3 0 3
0 4 1 0
0
0
end_operator
begin_operator
pick-tower b3 b2 b1
3
3 0
5 0
8 0
2
0
4
0 0 -1 0
0 2 -1 1
0 3 0 1
0 5 0 1
0
0
end_operator
begin_operator
pick-up b1 b2
3
0 0
3 0
4 1
2
4
0 0 0 1
0 1 -1 0
0 3 0 3
0 4 1 0
2
0 1 -1 0
0 4 1 3
0
0
end_operator
begin_operator
pick-up b1 b3
3
0 0
3 0
4 2
2
4
0 0 0 1
0 2 -1 0
0 3 0 3
0 4 2 0
2
0 2 -1 0
0 4 2 3
0
0
end_operator
begin_operator
pick-up b2 b1
3
1 0
3 0
5 0
2
4
0 0 -1 0
0 1 0 1
0 3 0 1
0 5 0 1
3
0 0 -1 0
0 5 0 1
0 9 -1 0
0
0
end_operator
begin_operator
pick-up b2 b3
3
1 0
3 0
6 0
2
4
0 1 0 1
0 2 -1 0
0 3 0 1
0 6 0 1
3
0 2 -1 0
0 6 0 1
0 9 -1 0
0
0
end_operator
begin_operator
pick-up b3 b1
3
2 0
3 0
7 0
2
4
0 0 -1 0
0 2 0 1
0 3 0 2
0 7 0 1
3
0 0 -1 0
0 7 0 1
0 10 -1 0
0
0
end_operator
begin_operator
pick-up b3 b2
3
2 0
3 0
8 0
2
4
0 1 -1 0
0 2 0 1
0 3 0 2
0 8 0 1
3
0 1 -1 0
0 8 0 1
0 10 -1 0
0
0
end_operator
begin_operator
pick-up-from-table b1
3
0 0
3 0
4 3
2
0
3
0 0 0 1
0 3 0 3
0 4 3 0
0
0
end_operator
begin_operator
pick-up-from-table b2
3
1 0
3 0
9 0
2
0
3
0 1 0 1
0 3 0 1
0 9 0 1
0
0
end_operator
begin_operator
pick-up-from-table b3
3
2 0
3 0
10 0
2
0
3
0 2 0 1
0 3 0 2
0 10 0 1
0
0
end_operator
begin_operator
put-down b1
1
4 0
1
3
0 0 -1 0
0 3 -1 0
0 4 0 3
0
0
end_operator
begin_operator
put-down b2
1
3 1
1
3
0 1 -1 0
0 3 1 0
0 9 -1 0
0
0
end_operator
begin_operator
put-down b3
1
3 2
1
3
0 2 -1 0
0 3 2 0
0 10 -1 0
0
0
end_operator
begin_operator
put-on-block b1 b2
2
1 0
4 0
2
4
0 0 -1 0
0 1 0 1
0 3 -1 0
0 4 0 1
3
0 0 -1 0
0 3 -1 0
0 4 0 3
0
0
end_operator
begin_operator
put-on-block b1 b3
2
2 0
4 0
2
4
0 0 -1 0
0 2 0 1
0 3 -1 0
0 4 0 2
3
0 0 -1 0
0 3 -1 0
0 4 0 3
0
0
end_operator
begin_operator
put-on-block b2 b1
2
0 0
3 1
2
4
0 0 0 1
0 1 -1 0
0 3 1 0
0 5 -1 0
3
0 1 -1 0
0 3 1 0
0 9 -1 0
0
0
end_operator
begin_operator
put-on-block b2 b3
2
2 0
3 1
2
4
0 1 -1 0
0 2 0 1
0 3 1 0
0 6 -1 0
3
0 1 -1 0
0 3 1 0
0 9 -1 0
0
0
end_operator
begin_operator
put-on-block b3 b1
2
0 0
3 2
2
4
0 0 0 1
0 2 -1 0
0 3 2 0
0 7 -1 0
3
0 2 -1 0
0 3 2 0
0 10 -1 0
0
0
end_operator
begin_operator
put-on-block b3 b2
2
1 0
3 2
2
4
0 1 0 1
0 2 -1 0
0 3 2 0
0 8 -1 0
3
0 2 -1 0
0 3 2 0
0 10 -1 0
0
0
end_operator
begin_operator
put-tower-down b1 b2
2
3 1
4 1
1
3
0 0 -1 0
0 3 1 0
0 9 -1 0
0
0
end_operator
begin_operator
put-tower-down b1 b3
2
3 2
4 2
1
3
0 0 -1 0
0 3 2 0
0 10 -1 0
0
0
end_operator
begin_operator
put-tower-down b2 b1
2
4 0
5 0
1
3
0 1 -1 0
0 3 -1 0
0 4 0 3
0
0
end_operator
begin_operator
put-tower-down b2 b3
2
3 2
6 0
1
3
0 1 -1 0
0 3 2 0
0 10 -1 0
0
0
end_operator
begin_operator
put-tower-down b3 b1
2
4 0
7 0
1
3
0 2 -1 0
0 3 -1 0
0 4 0 3
0
0
end_operator
begin_operator
put-tower-down b3 b2
2
3 1
8 0
1
3
0 2 -1 0
0 3 1 0
0 9 -1 0
0
0
end_operator
begin_operator
put-tower-on-block b1 b2 b3
3
2 0
3 1
4 1
2
4
0 0 -1 0
0 2 0 1
0 3 1 0
0 6 -1 0
3
0 0 -1 0
0 3 1 0
0 9 -1 0
0
0
end_operator
begin_operator
put-tower-on-block b1 b3 b2
3
1 0
3 2
4 2
2
4
0 0 -1 0
0 1 0 1
0 3 2 0
0 8 -1 0
3
0 0 -1 0
0 3 2 0
0 10 -1 0
0
0
end_operator
begin_operator
put-tower-on-block b2 b1 b3
3
2 0
4 0
5 0
2
4
0 1 -1 0
0 2 0 1
0 3 -1 0
0 4 0 2
3
0 1 -1 0
0 3 -1 0
0 4 0 3
0
0
end_operator
begin_operator
put-tower-on-block b2 b3 b1
3
0 0
3 2
6 0
2
4
0 0 0 1
0 1 -1 0
0 3 2 0
0 7 -1 0
3
0 1 -1 0
0 3 2 0
0 10 -1 0
0
0
end_operator
begin_operator
put-tower-on-block b3 b1 b2
3
1 0
4 0
7 0
2
4
0 1 0 1
0 2 -1 0
0 3 -1 0
0 4 0 1
3
0 2 -1 0
0 3 -1 0
0 4 0 3
0
0
end_operator
begin_operator
put-tower-on-block b3 b2 b1
3
0 0
3 1
8 0
2
4
0 0 0 1
0 2 -1 0
0 3 1 0
0 5 -1 0
3
0 2 -1 0
0 3 1 0
0 9 -1 0
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
4 1
end_operator
begin_operator
senseon b1 b3
0
1
0
0
1
4 2
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
4 3
end_operator
begin_operator
senseontable b2
0
1
0
0
1
9 0
end_operator
begin_operator
senseontable b3
0
1
0
0
1
10 0
end_operator
0
