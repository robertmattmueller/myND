begin_version
3.FOND
end_version
begin_metric
0
end_metric
13
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
3
Atom fire-unit-at(f1, l1)
Atom fire-unit-at(f1, l2)
Atom fire-unit-at(f1, l3)
end_variable
begin_variable
var3
-1
3
Atom fire-unit-at(f2, l1)
Atom fire-unit-at(f2, l2)
Atom fire-unit-at(f2, l3)
end_variable
begin_variable
var4
-1
4
Atom have-victim-in-unit(v1, m1)
Atom victim-at(v1, l1)
Atom victim-at(v1, l2)
Atom victim-at(v1, l3)
end_variable
begin_variable
var5
-1
4
Atom have-victim-in-unit(v2, m1)
Atom victim-at(v2, l1)
Atom victim-at(v2, l2)
Atom victim-at(v2, l3)
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
Atom have-water(f2)
NegatedAtom have-water(f2)
end_variable
begin_variable
var8
-1
3
Atom medical-unit-at(m1, l1)
Atom medical-unit-at(m1, l2)
Atom medical-unit-at(m1, l3)
end_variable
begin_variable
var9
-1
2
Atom victim-status(v1, dying)
NegatedAtom victim-status(v1, dying)
end_variable
begin_variable
var10
-1
2
Atom victim-status(v1, healthy)
NegatedAtom victim-status(v1, healthy)
end_variable
begin_variable
var11
-1
2
Atom victim-status(v2, healthy)
NegatedAtom victim-status(v2, healthy)
end_variable
begin_variable
var12
-1
2
Atom victim-status(v2, hurt)
NegatedAtom victim-status(v2, hurt)
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
3
2 0
2 1
2 2
end_mutex_group
begin_mutex_group
3
3 0
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
begin_mutex_group
4
5 0
5 1
5 2
5 3
end_mutex_group
begin_mutex_group
3
8 0
8 1
8 2
end_mutex_group
begin_state
0
0
2
2
2
1
1
1
2
0
1
1
0
end_state
begin_goal
4
0 1
1 1
10 0
11 0
end_goal
66
begin_operator
drive-fire-unit f1 l1 l1
2
0 1
2 0
1
0
0
end_operator
begin_operator
drive-fire-unit f1 l1 l2
2
1 1
2 0
1
1
0 2 0 1
0
end_operator
begin_operator
drive-fire-unit f1 l1 l3
1
2 0
1
1
0 2 0 2
0
end_operator
begin_operator
drive-fire-unit f1 l2 l1
2
0 1
2 1
1
1
0 2 1 0
0
end_operator
begin_operator
drive-fire-unit f1 l2 l2
2
1 1
2 1
1
0
0
end_operator
begin_operator
drive-fire-unit f1 l2 l3
1
2 1
1
1
0 2 1 2
0
end_operator
begin_operator
drive-fire-unit f1 l3 l1
2
0 1
2 2
1
1
0 2 2 0
0
end_operator
begin_operator
drive-fire-unit f1 l3 l2
2
1 1
2 2
1
1
0 2 2 1
0
end_operator
begin_operator
drive-fire-unit f1 l3 l3
1
2 2
1
0
0
end_operator
begin_operator
drive-fire-unit f2 l1 l1
2
0 1
3 0
1
0
0
end_operator
begin_operator
drive-fire-unit f2 l1 l2
2
1 1
3 0
1
1
0 3 0 1
0
end_operator
begin_operator
drive-fire-unit f2 l1 l3
1
3 0
1
1
0 3 0 2
0
end_operator
begin_operator
drive-fire-unit f2 l2 l1
2
0 1
3 1
1
1
0 3 1 0
0
end_operator
begin_operator
drive-fire-unit f2 l2 l2
2
1 1
3 1
1
0
0
end_operator
begin_operator
drive-fire-unit f2 l2 l3
1
3 1
1
1
0 3 1 2
0
end_operator
begin_operator
drive-fire-unit f2 l3 l1
2
0 1
3 2
1
1
0 3 2 0
0
end_operator
begin_operator
drive-fire-unit f2 l3 l2
2
1 1
3 2
1
1
0 3 2 1
0
end_operator
begin_operator
drive-fire-unit f2 l3 l3
1
3 2
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l1
2
0 1
8 0
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l2
2
1 1
8 0
1
1
0 8 0 1
0
end_operator
begin_operator
drive-medical-unit m1 l1 l3
1
8 0
1
1
0 8 0 2
0
end_operator
begin_operator
drive-medical-unit m1 l2 l1
2
0 1
8 1
1
1
0 8 1 0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l2
2
1 1
8 1
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l3
1
8 1
1
1
0 8 1 2
0
end_operator
begin_operator
drive-medical-unit m1 l3 l1
2
0 1
8 2
1
1
0 8 2 0
0
end_operator
begin_operator
drive-medical-unit m1 l3 l2
2
1 1
8 2
1
1
0 8 2 1
0
end_operator
begin_operator
drive-medical-unit m1 l3 l3
1
8 2
1
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
end_operator
begin_operator
load-fire-unit f1 l3
1
2 2
1
1
0 6 -1 0
0
end_operator
begin_operator
load-fire-unit f2 l1
1
3 0
1
1
0 7 -1 0
0
end_operator
begin_operator
load-fire-unit f2 l3
1
3 2
1
1
0 7 -1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v1
2
4 1
8 0
1
1
0 4 1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v2
2
5 1
8 0
1
1
0 5 1 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v1
2
4 2
8 1
1
1
0 4 2 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v2
2
5 2
8 1
1
1
0 5 2 0
0
end_operator
begin_operator
load-medical-unit m1 l3 v1
2
4 3
8 2
1
1
0 4 3 0
0
end_operator
begin_operator
load-medical-unit m1 l3 v2
2
5 3
8 2
1
1
0 5 3 0
0
end_operator
begin_operator
treat-victim-at-hospital v1 l1
1
4 1
1
2
0 9 -1 1
0 10 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v2 l1
1
5 1
1
2
0 11 -1 0
0 12 -1 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v2
3
2 0
5 1
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l2 v2
3
2 1
5 2
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l3 v2
3
2 2
5 3
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l1 v2
3
3 0
5 1
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l2 v2
3
3 1
5 2
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l3 v2
3
3 2
5 3
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v2
3
5 1
8 0
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v2
3
5 2
8 1
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l3 v2
3
5 3
8 2
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l1 l1
3
0 0
2 0
6 0
2
2
0 0 0 1
0 6 0 1
1
0 6 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l1 l2
3
1 0
2 0
6 0
2
2
0 1 0 1
0 6 0 1
1
0 6 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l2 l1
3
0 0
2 1
6 0
2
2
0 0 0 1
0 6 0 1
1
0 6 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l2 l2
3
1 0
2 1
6 0
2
2
0 1 0 1
0 6 0 1
1
0 6 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l3 l1
3
0 0
2 2
6 0
2
2
0 0 0 1
0 6 0 1
1
0 6 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l3 l2
3
1 0
2 2
6 0
2
2
0 1 0 1
0 6 0 1
1
0 6 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l1 l1
3
0 0
3 0
7 0
2
2
0 0 0 1
0 7 0 1
1
0 7 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l1 l2
3
1 0
3 0
7 0
2
2
0 1 0 1
0 7 0 1
1
0 7 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l2 l1
3
0 0
3 1
7 0
2
2
0 0 0 1
0 7 0 1
1
0 7 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l2 l2
3
1 0
3 1
7 0
2
2
0 1 0 1
0 7 0 1
1
0 7 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l3 l1
3
0 0
3 2
7 0
2
2
0 0 0 1
0 7 0 1
1
0 7 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l3 l2
3
1 0
3 2
7 0
2
2
0 1 0 1
0 7 0 1
1
0 7 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l1 v1
2
4 0
8 0
1
1
0 4 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l1 v2
2
5 0
8 0
1
1
0 5 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l2 v1
2
4 0
8 1
1
1
0 4 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l2 v2
2
5 0
8 1
1
1
0 5 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l3 v1
2
4 0
8 2
1
1
0 4 0 3
0
end_operator
begin_operator
unload-medical-unit m1 l3 v2
2
5 0
8 2
1
1
0 5 0 3
0
end_operator
0
