begin_version
3.POND
end_version
begin_metric
0
end_metric
14
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
Atom fire(l2)
Atom nfire(l2)
end_variable
begin_variable
var2
-1
2
Atom fire-unit-at(f1, l1)
Atom fire-unit-at(f1, l2)
end_variable
begin_variable
var3
-1
3
Atom have-victim-in-unit(v1, m1)
Atom victim-at(v1, l1)
Atom victim-at(v1, l2)
end_variable
begin_variable
var4
-1
3
Atom have-victim-in-unit(v2, m1)
Atom victim-at(v2, l1)
Atom victim-at(v2, l2)
end_variable
begin_variable
var5
-1
3
Atom have-victim-in-unit(v3, m1)
Atom victim-at(v3, l1)
Atom victim-at(v3, l2)
end_variable
begin_variable
var6
-1
2
Atom have-water(f1)
NegatedAtom have-water(f1)
end_variable
begin_variable
var7
-1
2
Atom medical-unit-at(m1, l1)
Atom medical-unit-at(m1, l2)
end_variable
begin_variable
var8
-1
2
Atom victim-status(v1, dying)
NegatedAtom victim-status(v1, dying)
end_variable
begin_variable
var9
-1
2
Atom victim-status(v1, healthy)
NegatedAtom victim-status(v1, healthy)
end_variable
begin_variable
var10
-1
2
Atom victim-status(v2, healthy)
NegatedAtom victim-status(v2, healthy)
end_variable
begin_variable
var11
-1
2
Atom victim-status(v2, hurt)
NegatedAtom victim-status(v2, hurt)
end_variable
begin_variable
var12
-1
2
Atom victim-status(v3, healthy)
NegatedAtom victim-status(v3, healthy)
end_variable
begin_variable
var13
-1
2
Atom victim-status(v3, hurt)
NegatedAtom victim-status(v3, hurt)
end_variable
7
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
3
3 0
3 1
3 2
end_mutex_group
begin_mutex_group
3
4 0
4 1
4 2
end_mutex_group
begin_mutex_group
3
5 0
5 1
5 2
end_mutex_group
begin_mutex_group
2
7 0
7 1
end_mutex_group
begin_state
14
0 0
1 0
2 0
7 0
3 2
4 2
5 1
8 0
11 0
13 0
6 1
9 1
10 1
12 1
0
0
end_state
begin_goal
5
0 1
1 1
9 0
10 0
12 0
end_goal
61
begin_operator
drive-fire-unit f1 l1 l2
1
1 1
1
1
0 2 0 1
0
0
end_operator
begin_operator
drive-fire-unit f1 l2 l1
1
0 1
1
1
0 2 1 0
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l2
1
1 1
1
1
0 7 0 1
0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l1
1
0 1
1
1
0 7 1 0
0
0
end_operator
begin_operator
load-fire-unit f1 l1
1
2 0
1
1
0 6 -1 0
0
0
end_operator
begin_operator
load-fire-unit f1 l2
1
2 1
1
1
0 6 -1 0
0
0
end_operator
begin_operator
load-medical-unit m1 l1 v1
1
7 0
1
1
0 3 1 0
0
0
end_operator
begin_operator
load-medical-unit m1 l1 v2
1
7 0
1
1
0 4 1 0
0
0
end_operator
begin_operator
load-medical-unit m1 l1 v3
1
7 0
1
1
0 5 1 0
0
0
end_operator
begin_operator
load-medical-unit m1 l2 v1
1
7 1
1
1
0 3 2 0
0
0
end_operator
begin_operator
load-medical-unit m1 l2 v2
1
7 1
1
1
0 4 2 0
0
0
end_operator
begin_operator
load-medical-unit m1 l2 v3
1
7 1
1
1
0 5 2 0
0
0
end_operator
begin_operator
sensefirefire f1 l1 l1
1
2 0
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f1 l1 l2
1
2 0
1
0
0
1
1 0
end_operator
begin_operator
sensefirefire f1 l2 l1
1
2 1
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f1 l2 l2
1
2 1
1
0
0
1
1 0
end_operator
begin_operator
sensefiremedical m1 l1 l1
1
7 0
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m1 l1 l2
1
7 0
1
0
0
1
1 0
end_operator
begin_operator
sensefiremedical m1 l2 l1
1
7 1
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m1 l2 l2
1
7 1
1
0
0
1
1 0
end_operator
begin_operator
sensehealthyfire f1 l1 v1
2
2 0
3 1
1
0
0
1
9 0
end_operator
begin_operator
sensehealthyfire f1 l1 v2
2
2 0
4 1
1
0
0
1
10 0
end_operator
begin_operator
sensehealthyfire f1 l1 v3
2
2 0
5 1
1
0
0
1
12 0
end_operator
begin_operator
sensehealthyfire f1 l2 v1
2
2 1
3 2
1
0
0
1
9 0
end_operator
begin_operator
sensehealthyfire f1 l2 v2
2
2 1
4 2
1
0
0
1
10 0
end_operator
begin_operator
sensehealthyfire f1 l2 v3
2
2 1
5 2
1
0
0
1
12 0
end_operator
begin_operator
sensehealthymedical m1 l1 v1
2
3 1
7 0
1
0
0
1
9 0
end_operator
begin_operator
sensehealthymedical m1 l1 v2
2
4 1
7 0
1
0
0
1
10 0
end_operator
begin_operator
sensehealthymedical m1 l1 v3
2
5 1
7 0
1
0
0
1
12 0
end_operator
begin_operator
sensehealthymedical m1 l2 v1
2
3 2
7 1
1
0
0
1
9 0
end_operator
begin_operator
sensehealthymedical m1 l2 v2
2
4 2
7 1
1
0
0
1
10 0
end_operator
begin_operator
sensehealthymedical m1 l2 v3
2
5 2
7 1
1
0
0
1
12 0
end_operator
begin_operator
sensehurtfire f1 l1 v2
2
2 0
4 1
1
0
0
1
11 0
end_operator
begin_operator
sensehurtfire f1 l1 v3
2
2 0
5 1
1
0
0
1
13 0
end_operator
begin_operator
sensehurtfire f1 l2 v2
2
2 1
4 2
1
0
0
1
11 0
end_operator
begin_operator
sensehurtfire f1 l2 v3
2
2 1
5 2
1
0
0
1
13 0
end_operator
begin_operator
sensehurtmedical m1 l1 v2
2
4 1
7 0
1
0
0
1
11 0
end_operator
begin_operator
sensehurtmedical m1 l1 v3
2
5 1
7 0
1
0
0
1
13 0
end_operator
begin_operator
sensehurtmedical m1 l2 v2
2
4 2
7 1
1
0
0
1
11 0
end_operator
begin_operator
sensehurtmedical m1 l2 v3
2
5 2
7 1
1
0
0
1
13 0
end_operator
begin_operator
treat-victim-at-hospital v1 l1
1
3 1
1
2
0 8 -1 1
0 9 -1 0
0
0
end_operator
begin_operator
treat-victim-at-hospital v2 l1
1
4 1
1
2
0 10 -1 0
0 11 -1 1
0
0
end_operator
begin_operator
treat-victim-at-hospital v3 l1
1
5 1
1
2
0 12 -1 0
0 13 -1 1
0
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v2
3
2 0
4 1
11 0
2
0
2
0 10 -1 0
0 11 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v3
3
2 0
5 1
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l2 v2
3
2 1
4 2
11 0
2
0
2
0 10 -1 0
0 11 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l2 v3
3
2 1
5 2
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v2
3
4 1
7 0
11 0
2
0
2
0 10 -1 0
0 11 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v3
3
5 1
7 0
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v2
3
4 2
7 1
11 0
2
0
2
0 10 -1 0
0 11 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v3
3
5 2
7 1
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
0
end_operator
begin_operator
unload-fire-unit f1 l1 l1
2
0 0
2 0
2
2
0 0 0 1
0 6 0 1
1
0 6 0 1
0
0
end_operator
begin_operator
unload-fire-unit f1 l1 l2
2
1 0
2 0
2
2
0 1 0 1
0 6 0 1
1
0 6 0 1
0
0
end_operator
begin_operator
unload-fire-unit f1 l2 l1
2
0 0
2 1
2
2
0 0 0 1
0 6 0 1
1
0 6 0 1
0
0
end_operator
begin_operator
unload-fire-unit f1 l2 l2
2
1 0
2 1
2
2
0 1 0 1
0 6 0 1
1
0 6 0 1
0
0
end_operator
begin_operator
unload-medical-unit m1 l1 v1
1
7 0
1
1
0 3 0 1
0
0
end_operator
begin_operator
unload-medical-unit m1 l1 v2
1
7 0
1
1
0 4 0 1
0
0
end_operator
begin_operator
unload-medical-unit m1 l1 v3
1
7 0
1
1
0 5 0 1
0
0
end_operator
begin_operator
unload-medical-unit m1 l2 v1
1
7 1
1
1
0 3 0 2
0
0
end_operator
begin_operator
unload-medical-unit m1 l2 v2
1
7 1
1
1
0 4 0 2
0
0
end_operator
begin_operator
unload-medical-unit m1 l2 v3
1
7 1
1
1
0 5 0 2
0
0
end_operator
0
