begin_version
3.POND
end_version
begin_metric
0
end_metric
8
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
3
Atom fire-unit-at(f1, l1)
Atom fire-unit-at(f1, l2)
Atom fire-unit-at(f1, l4)
end_variable
begin_variable
var2
-1
5
Atom have-victim-in-unit(v1, m1)
Atom have-victim-in-unit(v1, m3)
Atom victim-at(v1, l1)
Atom victim-at(v1, l2)
Atom victim-at(v1, l4)
end_variable
begin_variable
var3
-1
2
Atom have-water(f1)
NegatedAtom have-water(f1)
end_variable
begin_variable
var4
-1
3
Atom medical-unit-at(m1, l1)
Atom medical-unit-at(m1, l2)
Atom medical-unit-at(m1, l4)
end_variable
begin_variable
var5
-1
3
Atom medical-unit-at(m3, l1)
Atom medical-unit-at(m3, l2)
Atom medical-unit-at(m3, l4)
end_variable
begin_variable
var6
-1
2
Atom victim-status(v1, healthy)
NegatedAtom victim-status(v1, healthy)
end_variable
begin_variable
var7
-1
2
Atom victim-status(v1, hurt)
NegatedAtom victim-status(v1, hurt)
end_variable
5
begin_mutex_group
2
0 0
0 1
end_mutex_group
begin_mutex_group
3
1 0
1 1
1 2
end_mutex_group
begin_mutex_group
5
2 0
2 1
2 2
2 3
2 4
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
begin_state
8
0 0
1 1
4 1
5 2
2 3
7 0
3 1
6 1
0
0
end_state
begin_goal
2
0 1
6 0
end_goal
71
begin_operator
drive-fire-unit f1 l1 l2
0
1
1
0 1 0 1
0
0
end_operator
begin_operator
drive-fire-unit f1 l1 l4
0
1
1
0 1 0 2
0
0
end_operator
begin_operator
drive-fire-unit f1 l2 l1
1
0 1
1
1
0 1 1 0
0
0
end_operator
begin_operator
drive-fire-unit f1 l2 l4
0
1
1
0 1 1 2
0
0
end_operator
begin_operator
drive-fire-unit f1 l4 l1
1
0 1
1
1
0 1 2 0
0
0
end_operator
begin_operator
drive-fire-unit f1 l4 l2
0
1
1
0 1 2 1
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l2
0
1
1
0 4 0 1
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l4
0
1
1
0 4 0 2
0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l1
1
0 1
1
1
0 4 1 0
0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l4
0
1
1
0 4 1 2
0
0
end_operator
begin_operator
drive-medical-unit m1 l4 l1
1
0 1
1
1
0 4 2 0
0
0
end_operator
begin_operator
drive-medical-unit m1 l4 l2
0
1
1
0 4 2 1
0
0
end_operator
begin_operator
drive-medical-unit m3 l1 l2
0
1
1
0 5 0 1
0
0
end_operator
begin_operator
drive-medical-unit m3 l1 l4
0
1
1
0 5 0 2
0
0
end_operator
begin_operator
drive-medical-unit m3 l2 l1
1
0 1
1
1
0 5 1 0
0
0
end_operator
begin_operator
drive-medical-unit m3 l2 l4
0
1
1
0 5 1 2
0
0
end_operator
begin_operator
drive-medical-unit m3 l4 l1
1
0 1
1
1
0 5 2 0
0
0
end_operator
begin_operator
drive-medical-unit m3 l4 l2
0
1
1
0 5 2 1
0
0
end_operator
begin_operator
load-fire-unit f1 l4
1
1 2
1
1
0 3 -1 0
0
0
end_operator
begin_operator
load-medical-unit m1 l1 v1
1
4 0
1
1
0 2 2 0
0
0
end_operator
begin_operator
load-medical-unit m1 l2 v1
1
4 1
1
1
0 2 3 0
0
0
end_operator
begin_operator
load-medical-unit m1 l4 v1
1
4 2
1
1
0 2 4 0
0
0
end_operator
begin_operator
load-medical-unit m3 l1 v1
1
5 0
1
1
0 2 2 1
0
0
end_operator
begin_operator
load-medical-unit m3 l2 v1
1
5 1
1
1
0 2 3 1
0
0
end_operator
begin_operator
load-medical-unit m3 l4 v1
1
5 2
1
1
0 2 4 1
0
0
end_operator
begin_operator
sensefirefire f1 l1 l1
1
1 0
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f1 l2 l1
1
1 1
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f1 l4 l1
1
1 2
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m1 l1 l1
1
4 0
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m1 l2 l1
1
4 1
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m1 l4 l1
1
4 2
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m3 l1 l1
1
5 0
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m3 l2 l1
1
5 1
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m3 l4 l1
1
5 2
1
0
0
1
0 0
end_operator
begin_operator
sensehealthyfire f1 l1 v1
2
1 0
2 2
1
0
0
1
6 0
end_operator
begin_operator
sensehealthyfire f1 l2 v1
2
1 1
2 3
1
0
0
1
6 0
end_operator
begin_operator
sensehealthyfire f1 l4 v1
2
1 2
2 4
1
0
0
1
6 0
end_operator
begin_operator
sensehealthymedical m1 l1 v1
2
2 2
4 0
1
0
0
1
6 0
end_operator
begin_operator
sensehealthymedical m1 l2 v1
2
2 3
4 1
1
0
0
1
6 0
end_operator
begin_operator
sensehealthymedical m1 l4 v1
2
2 4
4 2
1
0
0
1
6 0
end_operator
begin_operator
sensehealthymedical m3 l1 v1
2
2 2
5 0
1
0
0
1
6 0
end_operator
begin_operator
sensehealthymedical m3 l2 v1
2
2 3
5 1
1
0
0
1
6 0
end_operator
begin_operator
sensehealthymedical m3 l4 v1
2
2 4
5 2
1
0
0
1
6 0
end_operator
begin_operator
sensehurtfire f1 l1 v1
2
1 0
2 2
1
0
0
1
7 0
end_operator
begin_operator
sensehurtfire f1 l2 v1
2
1 1
2 3
1
0
0
1
7 0
end_operator
begin_operator
sensehurtfire f1 l4 v1
2
1 2
2 4
1
0
0
1
7 0
end_operator
begin_operator
sensehurtmedical m1 l1 v1
2
2 2
4 0
1
0
0
1
7 0
end_operator
begin_operator
sensehurtmedical m1 l2 v1
2
2 3
4 1
1
0
0
1
7 0
end_operator
begin_operator
sensehurtmedical m1 l4 v1
2
2 4
4 2
1
0
0
1
7 0
end_operator
begin_operator
sensehurtmedical m3 l1 v1
2
2 2
5 0
1
0
0
1
7 0
end_operator
begin_operator
sensehurtmedical m3 l2 v1
2
2 3
5 1
1
0
0
1
7 0
end_operator
begin_operator
sensehurtmedical m3 l4 v1
2
2 4
5 2
1
0
0
1
7 0
end_operator
begin_operator
treat-victim-at-hospital v1 l4
1
2 4
1
2
0 6 -1 0
0 7 -1 1
0
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v1
3
1 0
2 2
7 0
2
0
2
0 6 -1 0
0 7 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l2 v1
3
1 1
2 3
7 0
2
0
2
0 6 -1 0
0 7 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l4 v1
3
1 2
2 4
7 0
2
0
2
0 6 -1 0
0 7 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v1
3
2 2
4 0
7 0
2
0
2
0 6 -1 0
0 7 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v1
3
2 3
4 1
7 0
2
0
2
0 6 -1 0
0 7 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l4 v1
3
2 4
4 2
7 0
2
0
2
0 6 -1 0
0 7 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l1 v1
3
2 2
5 0
7 0
2
0
2
0 6 -1 0
0 7 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l2 v1
3
2 3
5 1
7 0
2
0
2
0 6 -1 0
0 7 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l4 v1
3
2 4
5 2
7 0
2
0
2
0 6 -1 0
0 7 0 1
0
0
end_operator
begin_operator
unload-fire-unit f1 l1 l1
2
0 0
1 0
2
2
0 0 0 1
0 3 0 1
1
0 3 0 1
0
0
end_operator
begin_operator
unload-fire-unit f1 l2 l1
2
0 0
1 1
2
2
0 0 0 1
0 3 0 1
1
0 3 0 1
0
0
end_operator
begin_operator
unload-fire-unit f1 l4 l1
2
0 0
1 2
2
2
0 0 0 1
0 3 0 1
1
0 3 0 1
0
0
end_operator
begin_operator
unload-medical-unit m1 l1 v1
1
4 0
1
1
0 2 0 2
0
0
end_operator
begin_operator
unload-medical-unit m1 l2 v1
1
4 1
1
1
0 2 0 3
0
0
end_operator
begin_operator
unload-medical-unit m1 l4 v1
1
4 2
1
1
0 2 0 4
0
0
end_operator
begin_operator
unload-medical-unit m3 l1 v1
1
5 0
1
1
0 2 1 2
0
0
end_operator
begin_operator
unload-medical-unit m3 l2 v1
1
5 1
1
1
0 2 1 3
0
0
end_operator
begin_operator
unload-medical-unit m3 l4 v1
1
5 2
1
1
0 2 1 4
0
0
end_operator
0
