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
Atom fire(l1)
Atom nfire(l1)
end_variable
begin_variable
var1
-1
2
Atom have-victim-in-unit(v1, m1)
Atom victim-at(v1, l1)
end_variable
begin_variable
var2
-1
2
Atom have-victim-in-unit(v2, m1)
Atom victim-at(v2, l1)
end_variable
begin_variable
var3
-1
2
Atom have-victim-in-unit(v3, m1)
Atom victim-at(v3, l1)
end_variable
begin_variable
var4
-1
2
Atom have-water(f1)
NegatedAtom have-water(f1)
end_variable
begin_variable
var5
-1
2
Atom victim-status(v1, healthy)
NegatedAtom victim-status(v1, healthy)
end_variable
begin_variable
var6
-1
2
Atom victim-status(v1, hurt)
NegatedAtom victim-status(v1, hurt)
end_variable
begin_variable
var7
-1
2
Atom victim-status(v2, healthy)
NegatedAtom victim-status(v2, healthy)
end_variable
begin_variable
var8
-1
2
Atom victim-status(v2, hurt)
NegatedAtom victim-status(v2, hurt)
end_variable
begin_variable
var9
-1
2
Atom victim-status(v3, dying)
NegatedAtom victim-status(v3, dying)
end_variable
begin_variable
var10
-1
2
Atom victim-status(v3, healthy)
NegatedAtom victim-status(v3, healthy)
end_variable
5
begin_mutex_group
2
0 0
0 1
end_mutex_group
begin_mutex_group
2
0 0
0 1
end_mutex_group
begin_mutex_group
2
1 0
1 1
end_mutex_group
begin_mutex_group
2
2 0
2 1
end_mutex_group
begin_mutex_group
2
3 0
3 1
end_mutex_group
begin_state
11
0 0
1 1
2 1
3 1
6 0
8 0
9 0
4 1
5 1
7 1
10 1
0
0
end_state
begin_goal
4
0 1
5 0
7 0
10 0
end_goal
27
begin_operator
load-fire-unit f1 l1
0
1
1
0 4 -1 0
0
0
end_operator
begin_operator
load-medical-unit m1 l1 v1
0
1
1
0 1 1 0
0
0
end_operator
begin_operator
load-medical-unit m1 l1 v2
0
1
1
0 2 1 0
0
0
end_operator
begin_operator
load-medical-unit m1 l1 v3
0
1
1
0 3 1 0
0
0
end_operator
begin_operator
sensefirefire f1 l1 l1
0
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m1 l1 l1
0
1
0
0
1
0 0
end_operator
begin_operator
sensehealthyfire f1 l1 v1
1
1 1
1
0
0
1
5 0
end_operator
begin_operator
sensehealthyfire f1 l1 v2
1
2 1
1
0
0
1
7 0
end_operator
begin_operator
sensehealthyfire f1 l1 v3
1
3 1
1
0
0
1
10 0
end_operator
begin_operator
sensehealthymedical m1 l1 v1
1
1 1
1
0
0
1
5 0
end_operator
begin_operator
sensehealthymedical m1 l1 v2
1
2 1
1
0
0
1
7 0
end_operator
begin_operator
sensehealthymedical m1 l1 v3
1
3 1
1
0
0
1
10 0
end_operator
begin_operator
sensehurtfire f1 l1 v1
1
1 1
1
0
0
1
6 0
end_operator
begin_operator
sensehurtfire f1 l1 v2
1
2 1
1
0
0
1
8 0
end_operator
begin_operator
sensehurtmedical m1 l1 v1
1
1 1
1
0
0
1
6 0
end_operator
begin_operator
sensehurtmedical m1 l1 v2
1
2 1
1
0
0
1
8 0
end_operator
begin_operator
treat-victim-at-hospital v1 l1
1
1 1
1
2
0 5 -1 0
0 6 -1 1
0
0
end_operator
begin_operator
treat-victim-at-hospital v2 l1
1
2 1
1
2
0 7 -1 0
0 8 -1 1
0
0
end_operator
begin_operator
treat-victim-at-hospital v3 l1
1
3 1
1
2
0 9 -1 1
0 10 -1 0
0
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v1
2
1 1
6 0
2
0
2
0 5 -1 0
0 6 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v2
2
2 1
8 0
2
0
2
0 7 -1 0
0 8 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v1
2
1 1
6 0
2
0
2
0 5 -1 0
0 6 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v2
2
2 1
8 0
2
0
2
0 7 -1 0
0 8 0 1
0
0
end_operator
begin_operator
unload-fire-unit f1 l1 l1
1
0 0
2
2
0 0 0 1
0 4 0 1
1
0 4 0 1
0
0
end_operator
begin_operator
unload-medical-unit m1 l1 v1
0
1
1
0 1 0 1
0
0
end_operator
begin_operator
unload-medical-unit m1 l1 v2
0
1
1
0 2 0 1
0
0
end_operator
begin_operator
unload-medical-unit m1 l1 v3
0
1
1
0 3 0 1
0
0
end_operator
0
