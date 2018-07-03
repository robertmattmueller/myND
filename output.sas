begin_version
3.FOND
end_version
begin_metric
0
end_metric
4
begin_variable
var0
-1
2
Atom actionenabled()
Atom checkgoalenabled()
end_variable
begin_variable
var1
-1
2
Atom done()
NegatedAtom done()
end_variable
begin_variable
var2
-1
2
Atom goalnode()
NegatedAtom goalnode()
end_variable
begin_variable
var3
-1
2
Atom hasnext()
NegatedAtom hasnext()
end_variable
1
begin_mutex_group
2
0 0
0 1
end_mutex_group
begin_state
1
1
1
0
end_state
begin_goal
1
1 0
end_goal
4
begin_operator
checkgoal1 
2
0 1
2 0
1
2
0 0 1 0
0 1 -1 0
0
end_operator
begin_operator
checkgoal2 
2
0 1
3 1
1
2
0 0 1 0
0 1 -1 0
0
end_operator
begin_operator
checkgoal3 
3
0 1
2 1
3 0
1
2
0 0 1 0
0 1 -1 1
0
end_operator
begin_operator
next 
3
0 0
2 1
3 0
4
1
0 0 0 1
2
0 0 0 1
0 2 1 0
3
0 0 0 1
0 2 1 0
0 3 0 1
2
0 0 0 1
0 3 0 1
0
end_operator
0
