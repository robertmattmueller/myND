begin_version
3.FOND
end_version
begin_metric
0
end_metric
14
begin_variable
var0
-1
2
Atom fire(l2)
Atom nfire(l2)
end_variable
begin_variable
var1
-1
2
Atom fire(l5)
Atom nfire(l5)
end_variable
begin_variable
var2
-1
5
Atom fire-unit-at(f1, l1)
Atom fire-unit-at(f1, l2)
Atom fire-unit-at(f1, l3)
Atom fire-unit-at(f1, l4)
Atom fire-unit-at(f1, l5)
end_variable
begin_variable
var3
-1
9
Atom have-victim-in-unit(v1, m1)
Atom have-victim-in-unit(v1, m2)
Atom have-victim-in-unit(v1, m3)
Atom have-victim-in-unit(v1, m4)
Atom victim-at(v1, l1)
Atom victim-at(v1, l2)
Atom victim-at(v1, l3)
Atom victim-at(v1, l4)
Atom victim-at(v1, l5)
end_variable
begin_variable
var4
-1
9
Atom have-victim-in-unit(v2, m1)
Atom have-victim-in-unit(v2, m2)
Atom have-victim-in-unit(v2, m3)
Atom have-victim-in-unit(v2, m4)
Atom victim-at(v2, l1)
Atom victim-at(v2, l2)
Atom victim-at(v2, l3)
Atom victim-at(v2, l4)
Atom victim-at(v2, l5)
end_variable
begin_variable
var5
-1
2
Atom have-water(f1)
NegatedAtom have-water(f1)
end_variable
begin_variable
var6
-1
5
Atom medical-unit-at(m1, l1)
Atom medical-unit-at(m1, l2)
Atom medical-unit-at(m1, l3)
Atom medical-unit-at(m1, l4)
Atom medical-unit-at(m1, l5)
end_variable
begin_variable
var7
-1
5
Atom medical-unit-at(m2, l1)
Atom medical-unit-at(m2, l2)
Atom medical-unit-at(m2, l3)
Atom medical-unit-at(m2, l4)
Atom medical-unit-at(m2, l5)
end_variable
begin_variable
var8
-1
5
Atom medical-unit-at(m3, l1)
Atom medical-unit-at(m3, l2)
Atom medical-unit-at(m3, l3)
Atom medical-unit-at(m3, l4)
Atom medical-unit-at(m3, l5)
end_variable
begin_variable
var9
-1
5
Atom medical-unit-at(m4, l1)
Atom medical-unit-at(m4, l2)
Atom medical-unit-at(m4, l3)
Atom medical-unit-at(m4, l4)
Atom medical-unit-at(m4, l5)
end_variable
begin_variable
var10
-1
2
Atom victim-status(v1, dying)
NegatedAtom victim-status(v1, dying)
end_variable
begin_variable
var11
-1
2
Atom victim-status(v1, healthy)
NegatedAtom victim-status(v1, healthy)
end_variable
begin_variable
var12
-1
2
Atom victim-status(v2, dying)
NegatedAtom victim-status(v2, dying)
end_variable
begin_variable
var13
-1
2
Atom victim-status(v2, healthy)
NegatedAtom victim-status(v2, healthy)
end_variable
9
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
5
2 0
2 1
2 2
2 3
2 4
end_mutex_group
begin_mutex_group
9
3 0
3 1
3 2
3 3
3 4
3 5
3 6
3 7
3 8
end_mutex_group
begin_mutex_group
9
4 0
4 1
4 2
4 3
4 4
4 5
4 6
4 7
4 8
end_mutex_group
begin_mutex_group
5
6 0
6 1
6 2
6 3
6 4
end_mutex_group
begin_mutex_group
5
7 0
7 1
7 2
7 3
7 4
end_mutex_group
begin_mutex_group
5
8 0
8 1
8 2
8 3
8 4
end_mutex_group
begin_mutex_group
5
9 0
9 1
9 2
9 3
9 4
end_mutex_group
begin_state
0
0
4
6
4
1
3
2
0
4
0
1
0
1
end_state
begin_goal
4
0 1
1 1
11 0
13 0
end_goal
184
begin_operator
drive-fire-unit f1 l1 l1
1
2 0
1
0
0
end_operator
begin_operator
drive-fire-unit f1 l1 l2
2
0 1
2 0
1
1
0 2 0 1
0
end_operator
begin_operator
drive-fire-unit f1 l1 l4
1
2 0
1
1
0 2 0 3
0
end_operator
begin_operator
drive-fire-unit f1 l1 l5
2
1 1
2 0
1
1
0 2 0 4
0
end_operator
begin_operator
drive-fire-unit f1 l2 l1
1
2 1
1
1
0 2 1 0
0
end_operator
begin_operator
drive-fire-unit f1 l2 l2
2
0 1
2 1
1
0
0
end_operator
begin_operator
drive-fire-unit f1 l2 l5
2
1 1
2 1
1
1
0 2 1 4
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
drive-fire-unit f1 l3 l5
2
1 1
2 2
1
1
0 2 2 4
0
end_operator
begin_operator
drive-fire-unit f1 l4 l1
1
2 3
1
1
0 2 3 0
0
end_operator
begin_operator
drive-fire-unit f1 l4 l4
1
2 3
1
0
0
end_operator
begin_operator
drive-fire-unit f1 l4 l5
2
1 1
2 3
1
1
0 2 3 4
0
end_operator
begin_operator
drive-fire-unit f1 l5 l1
1
2 4
1
1
0 2 4 0
0
end_operator
begin_operator
drive-fire-unit f1 l5 l2
2
0 1
2 4
1
1
0 2 4 1
0
end_operator
begin_operator
drive-fire-unit f1 l5 l3
1
2 4
1
1
0 2 4 2
0
end_operator
begin_operator
drive-fire-unit f1 l5 l4
1
2 4
1
1
0 2 4 3
0
end_operator
begin_operator
drive-fire-unit f1 l5 l5
2
1 1
2 4
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l1
1
6 0
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l2
2
0 1
6 0
1
1
0 6 0 1
0
end_operator
begin_operator
drive-medical-unit m1 l1 l4
1
6 0
1
1
0 6 0 3
0
end_operator
begin_operator
drive-medical-unit m1 l1 l5
2
1 1
6 0
1
1
0 6 0 4
0
end_operator
begin_operator
drive-medical-unit m1 l2 l1
1
6 1
1
1
0 6 1 0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l2
2
0 1
6 1
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l5
2
1 1
6 1
1
1
0 6 1 4
0
end_operator
begin_operator
drive-medical-unit m1 l3 l3
1
6 2
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l3 l5
2
1 1
6 2
1
1
0 6 2 4
0
end_operator
begin_operator
drive-medical-unit m1 l4 l1
1
6 3
1
1
0 6 3 0
0
end_operator
begin_operator
drive-medical-unit m1 l4 l4
1
6 3
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l4 l5
2
1 1
6 3
1
1
0 6 3 4
0
end_operator
begin_operator
drive-medical-unit m1 l5 l1
1
6 4
1
1
0 6 4 0
0
end_operator
begin_operator
drive-medical-unit m1 l5 l2
2
0 1
6 4
1
1
0 6 4 1
0
end_operator
begin_operator
drive-medical-unit m1 l5 l3
1
6 4
1
1
0 6 4 2
0
end_operator
begin_operator
drive-medical-unit m1 l5 l4
1
6 4
1
1
0 6 4 3
0
end_operator
begin_operator
drive-medical-unit m1 l5 l5
2
1 1
6 4
1
0
0
end_operator
begin_operator
drive-medical-unit m2 l1 l1
1
7 0
1
0
0
end_operator
begin_operator
drive-medical-unit m2 l1 l2
2
0 1
7 0
1
1
0 7 0 1
0
end_operator
begin_operator
drive-medical-unit m2 l1 l4
1
7 0
1
1
0 7 0 3
0
end_operator
begin_operator
drive-medical-unit m2 l1 l5
2
1 1
7 0
1
1
0 7 0 4
0
end_operator
begin_operator
drive-medical-unit m2 l2 l1
1
7 1
1
1
0 7 1 0
0
end_operator
begin_operator
drive-medical-unit m2 l2 l2
2
0 1
7 1
1
0
0
end_operator
begin_operator
drive-medical-unit m2 l2 l5
2
1 1
7 1
1
1
0 7 1 4
0
end_operator
begin_operator
drive-medical-unit m2 l3 l3
1
7 2
1
0
0
end_operator
begin_operator
drive-medical-unit m2 l3 l5
2
1 1
7 2
1
1
0 7 2 4
0
end_operator
begin_operator
drive-medical-unit m2 l4 l1
1
7 3
1
1
0 7 3 0
0
end_operator
begin_operator
drive-medical-unit m2 l4 l4
1
7 3
1
0
0
end_operator
begin_operator
drive-medical-unit m2 l4 l5
2
1 1
7 3
1
1
0 7 3 4
0
end_operator
begin_operator
drive-medical-unit m2 l5 l1
1
7 4
1
1
0 7 4 0
0
end_operator
begin_operator
drive-medical-unit m2 l5 l2
2
0 1
7 4
1
1
0 7 4 1
0
end_operator
begin_operator
drive-medical-unit m2 l5 l3
1
7 4
1
1
0 7 4 2
0
end_operator
begin_operator
drive-medical-unit m2 l5 l4
1
7 4
1
1
0 7 4 3
0
end_operator
begin_operator
drive-medical-unit m2 l5 l5
2
1 1
7 4
1
0
0
end_operator
begin_operator
drive-medical-unit m3 l1 l1
1
8 0
1
0
0
end_operator
begin_operator
drive-medical-unit m3 l1 l2
2
0 1
8 0
1
1
0 8 0 1
0
end_operator
begin_operator
drive-medical-unit m3 l1 l4
1
8 0
1
1
0 8 0 3
0
end_operator
begin_operator
drive-medical-unit m3 l1 l5
2
1 1
8 0
1
1
0 8 0 4
0
end_operator
begin_operator
drive-medical-unit m3 l2 l1
1
8 1
1
1
0 8 1 0
0
end_operator
begin_operator
drive-medical-unit m3 l2 l2
2
0 1
8 1
1
0
0
end_operator
begin_operator
drive-medical-unit m3 l2 l5
2
1 1
8 1
1
1
0 8 1 4
0
end_operator
begin_operator
drive-medical-unit m3 l3 l3
1
8 2
1
0
0
end_operator
begin_operator
drive-medical-unit m3 l3 l5
2
1 1
8 2
1
1
0 8 2 4
0
end_operator
begin_operator
drive-medical-unit m3 l4 l1
1
8 3
1
1
0 8 3 0
0
end_operator
begin_operator
drive-medical-unit m3 l4 l4
1
8 3
1
0
0
end_operator
begin_operator
drive-medical-unit m3 l4 l5
2
1 1
8 3
1
1
0 8 3 4
0
end_operator
begin_operator
drive-medical-unit m3 l5 l1
1
8 4
1
1
0 8 4 0
0
end_operator
begin_operator
drive-medical-unit m3 l5 l2
2
0 1
8 4
1
1
0 8 4 1
0
end_operator
begin_operator
drive-medical-unit m3 l5 l3
1
8 4
1
1
0 8 4 2
0
end_operator
begin_operator
drive-medical-unit m3 l5 l4
1
8 4
1
1
0 8 4 3
0
end_operator
begin_operator
drive-medical-unit m3 l5 l5
2
1 1
8 4
1
0
0
end_operator
begin_operator
drive-medical-unit m4 l1 l1
1
9 0
1
0
0
end_operator
begin_operator
drive-medical-unit m4 l1 l2
2
0 1
9 0
1
1
0 9 0 1
0
end_operator
begin_operator
drive-medical-unit m4 l1 l4
1
9 0
1
1
0 9 0 3
0
end_operator
begin_operator
drive-medical-unit m4 l1 l5
2
1 1
9 0
1
1
0 9 0 4
0
end_operator
begin_operator
drive-medical-unit m4 l2 l1
1
9 1
1
1
0 9 1 0
0
end_operator
begin_operator
drive-medical-unit m4 l2 l2
2
0 1
9 1
1
0
0
end_operator
begin_operator
drive-medical-unit m4 l2 l5
2
1 1
9 1
1
1
0 9 1 4
0
end_operator
begin_operator
drive-medical-unit m4 l3 l3
1
9 2
1
0
0
end_operator
begin_operator
drive-medical-unit m4 l3 l5
2
1 1
9 2
1
1
0 9 2 4
0
end_operator
begin_operator
drive-medical-unit m4 l4 l1
1
9 3
1
1
0 9 3 0
0
end_operator
begin_operator
drive-medical-unit m4 l4 l4
1
9 3
1
0
0
end_operator
begin_operator
drive-medical-unit m4 l4 l5
2
1 1
9 3
1
1
0 9 3 4
0
end_operator
begin_operator
drive-medical-unit m4 l5 l1
1
9 4
1
1
0 9 4 0
0
end_operator
begin_operator
drive-medical-unit m4 l5 l2
2
0 1
9 4
1
1
0 9 4 1
0
end_operator
begin_operator
drive-medical-unit m4 l5 l3
1
9 4
1
1
0 9 4 2
0
end_operator
begin_operator
drive-medical-unit m4 l5 l4
1
9 4
1
1
0 9 4 3
0
end_operator
begin_operator
drive-medical-unit m4 l5 l5
2
1 1
9 4
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
0 5 -1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v1
2
3 4
6 0
1
1
0 3 4 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v2
2
4 4
6 0
1
1
0 4 4 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v1
2
3 5
6 1
1
1
0 3 5 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v2
2
4 5
6 1
1
1
0 4 5 0
0
end_operator
begin_operator
load-medical-unit m1 l3 v1
2
3 6
6 2
1
1
0 3 6 0
0
end_operator
begin_operator
load-medical-unit m1 l3 v2
2
4 6
6 2
1
1
0 4 6 0
0
end_operator
begin_operator
load-medical-unit m1 l4 v1
2
3 7
6 3
1
1
0 3 7 0
0
end_operator
begin_operator
load-medical-unit m1 l4 v2
2
4 7
6 3
1
1
0 4 7 0
0
end_operator
begin_operator
load-medical-unit m1 l5 v1
2
3 8
6 4
1
1
0 3 8 0
0
end_operator
begin_operator
load-medical-unit m1 l5 v2
2
4 8
6 4
1
1
0 4 8 0
0
end_operator
begin_operator
load-medical-unit m2 l1 v1
2
3 4
7 0
1
1
0 3 4 1
0
end_operator
begin_operator
load-medical-unit m2 l1 v2
2
4 4
7 0
1
1
0 4 4 1
0
end_operator
begin_operator
load-medical-unit m2 l2 v1
2
3 5
7 1
1
1
0 3 5 1
0
end_operator
begin_operator
load-medical-unit m2 l2 v2
2
4 5
7 1
1
1
0 4 5 1
0
end_operator
begin_operator
load-medical-unit m2 l3 v1
2
3 6
7 2
1
1
0 3 6 1
0
end_operator
begin_operator
load-medical-unit m2 l3 v2
2
4 6
7 2
1
1
0 4 6 1
0
end_operator
begin_operator
load-medical-unit m2 l4 v1
2
3 7
7 3
1
1
0 3 7 1
0
end_operator
begin_operator
load-medical-unit m2 l4 v2
2
4 7
7 3
1
1
0 4 7 1
0
end_operator
begin_operator
load-medical-unit m2 l5 v1
2
3 8
7 4
1
1
0 3 8 1
0
end_operator
begin_operator
load-medical-unit m2 l5 v2
2
4 8
7 4
1
1
0 4 8 1
0
end_operator
begin_operator
load-medical-unit m3 l1 v1
2
3 4
8 0
1
1
0 3 4 2
0
end_operator
begin_operator
load-medical-unit m3 l1 v2
2
4 4
8 0
1
1
0 4 4 2
0
end_operator
begin_operator
load-medical-unit m3 l2 v1
2
3 5
8 1
1
1
0 3 5 2
0
end_operator
begin_operator
load-medical-unit m3 l2 v2
2
4 5
8 1
1
1
0 4 5 2
0
end_operator
begin_operator
load-medical-unit m3 l3 v1
2
3 6
8 2
1
1
0 3 6 2
0
end_operator
begin_operator
load-medical-unit m3 l3 v2
2
4 6
8 2
1
1
0 4 6 2
0
end_operator
begin_operator
load-medical-unit m3 l4 v1
2
3 7
8 3
1
1
0 3 7 2
0
end_operator
begin_operator
load-medical-unit m3 l4 v2
2
4 7
8 3
1
1
0 4 7 2
0
end_operator
begin_operator
load-medical-unit m3 l5 v1
2
3 8
8 4
1
1
0 3 8 2
0
end_operator
begin_operator
load-medical-unit m3 l5 v2
2
4 8
8 4
1
1
0 4 8 2
0
end_operator
begin_operator
load-medical-unit m4 l1 v1
2
3 4
9 0
1
1
0 3 4 3
0
end_operator
begin_operator
load-medical-unit m4 l1 v2
2
4 4
9 0
1
1
0 4 4 3
0
end_operator
begin_operator
load-medical-unit m4 l2 v1
2
3 5
9 1
1
1
0 3 5 3
0
end_operator
begin_operator
load-medical-unit m4 l2 v2
2
4 5
9 1
1
1
0 4 5 3
0
end_operator
begin_operator
load-medical-unit m4 l3 v1
2
3 6
9 2
1
1
0 3 6 3
0
end_operator
begin_operator
load-medical-unit m4 l3 v2
2
4 6
9 2
1
1
0 4 6 3
0
end_operator
begin_operator
load-medical-unit m4 l4 v1
2
3 7
9 3
1
1
0 3 7 3
0
end_operator
begin_operator
load-medical-unit m4 l4 v2
2
4 7
9 3
1
1
0 4 7 3
0
end_operator
begin_operator
load-medical-unit m4 l5 v1
2
3 8
9 4
1
1
0 3 8 3
0
end_operator
begin_operator
load-medical-unit m4 l5 v2
2
4 8
9 4
1
1
0 4 8 3
0
end_operator
begin_operator
treat-victim-at-hospital v1 l1
1
3 4
1
2
0 10 -1 1
0 11 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v1 l2
1
3 5
1
2
0 10 -1 1
0 11 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v1 l3
1
3 6
1
2
0 10 -1 1
0 11 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v1 l4
1
3 7
1
2
0 10 -1 1
0 11 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v1 l5
1
3 8
1
2
0 10 -1 1
0 11 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v2 l1
1
4 4
1
2
0 12 -1 1
0 13 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v2 l2
1
4 5
1
2
0 12 -1 1
0 13 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v2 l3
1
4 6
1
2
0 12 -1 1
0 13 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v2 l4
1
4 7
1
2
0 12 -1 1
0 13 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v2 l5
1
4 8
1
2
0 12 -1 1
0 13 -1 0
0
end_operator
begin_operator
unload-fire-unit f1 l1 l2
3
0 0
2 0
5 0
2
2
0 0 0 1
0 5 0 1
1
0 5 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l1 l5
3
1 0
2 0
5 0
2
2
0 1 0 1
0 5 0 1
1
0 5 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l2 l2
3
0 0
2 1
5 0
2
2
0 0 0 1
0 5 0 1
1
0 5 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l2 l5
3
1 0
2 1
5 0
2
2
0 1 0 1
0 5 0 1
1
0 5 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l3 l5
3
1 0
2 2
5 0
2
2
0 1 0 1
0 5 0 1
1
0 5 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l4 l5
3
1 0
2 3
5 0
2
2
0 1 0 1
0 5 0 1
1
0 5 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l5 l2
3
0 0
2 4
5 0
2
2
0 0 0 1
0 5 0 1
1
0 5 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l5 l5
3
1 0
2 4
5 0
2
2
0 1 0 1
0 5 0 1
1
0 5 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l1 v1
2
3 0
6 0
1
1
0 3 0 4
0
end_operator
begin_operator
unload-medical-unit m1 l1 v2
2
4 0
6 0
1
1
0 4 0 4
0
end_operator
begin_operator
unload-medical-unit m1 l2 v1
2
3 0
6 1
1
1
0 3 0 5
0
end_operator
begin_operator
unload-medical-unit m1 l2 v2
2
4 0
6 1
1
1
0 4 0 5
0
end_operator
begin_operator
unload-medical-unit m1 l3 v1
2
3 0
6 2
1
1
0 3 0 6
0
end_operator
begin_operator
unload-medical-unit m1 l3 v2
2
4 0
6 2
1
1
0 4 0 6
0
end_operator
begin_operator
unload-medical-unit m1 l4 v1
2
3 0
6 3
1
1
0 3 0 7
0
end_operator
begin_operator
unload-medical-unit m1 l4 v2
2
4 0
6 3
1
1
0 4 0 7
0
end_operator
begin_operator
unload-medical-unit m1 l5 v1
2
3 0
6 4
1
1
0 3 0 8
0
end_operator
begin_operator
unload-medical-unit m1 l5 v2
2
4 0
6 4
1
1
0 4 0 8
0
end_operator
begin_operator
unload-medical-unit m2 l1 v1
2
3 1
7 0
1
1
0 3 1 4
0
end_operator
begin_operator
unload-medical-unit m2 l1 v2
2
4 1
7 0
1
1
0 4 1 4
0
end_operator
begin_operator
unload-medical-unit m2 l2 v1
2
3 1
7 1
1
1
0 3 1 5
0
end_operator
begin_operator
unload-medical-unit m2 l2 v2
2
4 1
7 1
1
1
0 4 1 5
0
end_operator
begin_operator
unload-medical-unit m2 l3 v1
2
3 1
7 2
1
1
0 3 1 6
0
end_operator
begin_operator
unload-medical-unit m2 l3 v2
2
4 1
7 2
1
1
0 4 1 6
0
end_operator
begin_operator
unload-medical-unit m2 l4 v1
2
3 1
7 3
1
1
0 3 1 7
0
end_operator
begin_operator
unload-medical-unit m2 l4 v2
2
4 1
7 3
1
1
0 4 1 7
0
end_operator
begin_operator
unload-medical-unit m2 l5 v1
2
3 1
7 4
1
1
0 3 1 8
0
end_operator
begin_operator
unload-medical-unit m2 l5 v2
2
4 1
7 4
1
1
0 4 1 8
0
end_operator
begin_operator
unload-medical-unit m3 l1 v1
2
3 2
8 0
1
1
0 3 2 4
0
end_operator
begin_operator
unload-medical-unit m3 l1 v2
2
4 2
8 0
1
1
0 4 2 4
0
end_operator
begin_operator
unload-medical-unit m3 l2 v1
2
3 2
8 1
1
1
0 3 2 5
0
end_operator
begin_operator
unload-medical-unit m3 l2 v2
2
4 2
8 1
1
1
0 4 2 5
0
end_operator
begin_operator
unload-medical-unit m3 l3 v1
2
3 2
8 2
1
1
0 3 2 6
0
end_operator
begin_operator
unload-medical-unit m3 l3 v2
2
4 2
8 2
1
1
0 4 2 6
0
end_operator
begin_operator
unload-medical-unit m3 l4 v1
2
3 2
8 3
1
1
0 3 2 7
0
end_operator
begin_operator
unload-medical-unit m3 l4 v2
2
4 2
8 3
1
1
0 4 2 7
0
end_operator
begin_operator
unload-medical-unit m3 l5 v1
2
3 2
8 4
1
1
0 3 2 8
0
end_operator
begin_operator
unload-medical-unit m3 l5 v2
2
4 2
8 4
1
1
0 4 2 8
0
end_operator
begin_operator
unload-medical-unit m4 l1 v1
2
3 3
9 0
1
1
0 3 3 4
0
end_operator
begin_operator
unload-medical-unit m4 l1 v2
2
4 3
9 0
1
1
0 4 3 4
0
end_operator
begin_operator
unload-medical-unit m4 l2 v1
2
3 3
9 1
1
1
0 3 3 5
0
end_operator
begin_operator
unload-medical-unit m4 l2 v2
2
4 3
9 1
1
1
0 4 3 5
0
end_operator
begin_operator
unload-medical-unit m4 l3 v1
2
3 3
9 2
1
1
0 3 3 6
0
end_operator
begin_operator
unload-medical-unit m4 l3 v2
2
4 3
9 2
1
1
0 4 3 6
0
end_operator
begin_operator
unload-medical-unit m4 l4 v1
2
3 3
9 3
1
1
0 3 3 7
0
end_operator
begin_operator
unload-medical-unit m4 l4 v2
2
4 3
9 3
1
1
0 4 3 7
0
end_operator
begin_operator
unload-medical-unit m4 l5 v1
2
3 3
9 4
1
1
0 3 3 8
0
end_operator
begin_operator
unload-medical-unit m4 l5 v2
2
4 3
9 4
1
1
0 4 3 8
0
end_operator
0
