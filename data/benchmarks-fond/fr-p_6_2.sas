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
Atom fire(l2)
Atom nfire(l2)
end_variable
begin_variable
var1
-1
2
Atom fire(l3)
Atom nfire(l3)
end_variable
begin_variable
var2
-1
6
Atom fire-unit-at(f1, l1)
Atom fire-unit-at(f1, l2)
Atom fire-unit-at(f1, l3)
Atom fire-unit-at(f1, l4)
Atom fire-unit-at(f1, l5)
Atom fire-unit-at(f1, l6)
end_variable
begin_variable
var3
-1
9
Atom have-victim-in-unit(v1, m1)
Atom have-victim-in-unit(v1, m2)
Atom have-victim-in-unit(v1, m3)
Atom victim-at(v1, l1)
Atom victim-at(v1, l2)
Atom victim-at(v1, l3)
Atom victim-at(v1, l4)
Atom victim-at(v1, l5)
Atom victim-at(v1, l6)
end_variable
begin_variable
var4
-1
9
Atom have-victim-in-unit(v2, m1)
Atom have-victim-in-unit(v2, m2)
Atom have-victim-in-unit(v2, m3)
Atom victim-at(v2, l1)
Atom victim-at(v2, l2)
Atom victim-at(v2, l3)
Atom victim-at(v2, l4)
Atom victim-at(v2, l5)
Atom victim-at(v2, l6)
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
6
Atom medical-unit-at(m1, l1)
Atom medical-unit-at(m1, l2)
Atom medical-unit-at(m1, l3)
Atom medical-unit-at(m1, l4)
Atom medical-unit-at(m1, l5)
Atom medical-unit-at(m1, l6)
end_variable
begin_variable
var7
-1
6
Atom medical-unit-at(m2, l1)
Atom medical-unit-at(m2, l2)
Atom medical-unit-at(m2, l3)
Atom medical-unit-at(m2, l4)
Atom medical-unit-at(m2, l5)
Atom medical-unit-at(m2, l6)
end_variable
begin_variable
var8
-1
6
Atom medical-unit-at(m3, l1)
Atom medical-unit-at(m3, l2)
Atom medical-unit-at(m3, l3)
Atom medical-unit-at(m3, l4)
Atom medical-unit-at(m3, l5)
Atom medical-unit-at(m3, l6)
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
Atom victim-status(v1, hurt)
NegatedAtom victim-status(v1, hurt)
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
8
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
6
2 0
2 1
2 2
2 3
2 4
2 5
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
6
6 0
6 1
6 2
6 3
6 4
6 5
end_mutex_group
begin_mutex_group
6
7 0
7 1
7 2
7 3
7 4
7 5
end_mutex_group
begin_mutex_group
6
8 0
8 1
8 2
8 3
8 4
8 5
end_mutex_group
begin_state
0
0
5
7
7
1
5
2
4
1
0
1
0
end_state
begin_goal
4
0 1
1 1
9 0
11 0
end_goal
236
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
drive-fire-unit f1 l1 l3
2
1 1
2 0
1
1
0 2 0 2
0
end_operator
begin_operator
drive-fire-unit f1 l1 l5
1
2 0
1
1
0 2 0 4
0
end_operator
begin_operator
drive-fire-unit f1 l1 l6
1
2 0
1
1
0 2 0 5
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
drive-fire-unit f1 l2 l3
2
1 1
2 1
1
1
0 2 1 2
0
end_operator
begin_operator
drive-fire-unit f1 l2 l5
1
2 1
1
1
0 2 1 4
0
end_operator
begin_operator
drive-fire-unit f1 l2 l6
1
2 1
1
1
0 2 1 5
0
end_operator
begin_operator
drive-fire-unit f1 l3 l1
1
2 2
1
1
0 2 2 0
0
end_operator
begin_operator
drive-fire-unit f1 l3 l2
2
0 1
2 2
1
1
0 2 2 1
0
end_operator
begin_operator
drive-fire-unit f1 l3 l3
2
1 1
2 2
1
0
0
end_operator
begin_operator
drive-fire-unit f1 l3 l4
1
2 2
1
1
0 2 2 3
0
end_operator
begin_operator
drive-fire-unit f1 l3 l5
1
2 2
1
1
0 2 2 4
0
end_operator
begin_operator
drive-fire-unit f1 l4 l3
2
1 1
2 3
1
1
0 2 3 2
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
2
1 1
2 4
1
1
0 2 4 2
0
end_operator
begin_operator
drive-fire-unit f1 l5 l5
1
2 4
1
0
0
end_operator
begin_operator
drive-fire-unit f1 l6 l1
1
2 5
1
1
0 2 5 0
0
end_operator
begin_operator
drive-fire-unit f1 l6 l2
2
0 1
2 5
1
1
0 2 5 1
0
end_operator
begin_operator
drive-fire-unit f1 l6 l6
1
2 5
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
drive-medical-unit m1 l1 l3
2
1 1
6 0
1
1
0 6 0 2
0
end_operator
begin_operator
drive-medical-unit m1 l1 l5
1
6 0
1
1
0 6 0 4
0
end_operator
begin_operator
drive-medical-unit m1 l1 l6
1
6 0
1
1
0 6 0 5
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
drive-medical-unit m1 l2 l3
2
1 1
6 1
1
1
0 6 1 2
0
end_operator
begin_operator
drive-medical-unit m1 l2 l5
1
6 1
1
1
0 6 1 4
0
end_operator
begin_operator
drive-medical-unit m1 l2 l6
1
6 1
1
1
0 6 1 5
0
end_operator
begin_operator
drive-medical-unit m1 l3 l1
1
6 2
1
1
0 6 2 0
0
end_operator
begin_operator
drive-medical-unit m1 l3 l2
2
0 1
6 2
1
1
0 6 2 1
0
end_operator
begin_operator
drive-medical-unit m1 l3 l3
2
1 1
6 2
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l3 l4
1
6 2
1
1
0 6 2 3
0
end_operator
begin_operator
drive-medical-unit m1 l3 l5
1
6 2
1
1
0 6 2 4
0
end_operator
begin_operator
drive-medical-unit m1 l4 l3
2
1 1
6 3
1
1
0 6 3 2
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
2
1 1
6 4
1
1
0 6 4 2
0
end_operator
begin_operator
drive-medical-unit m1 l5 l5
1
6 4
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l6 l1
1
6 5
1
1
0 6 5 0
0
end_operator
begin_operator
drive-medical-unit m1 l6 l2
2
0 1
6 5
1
1
0 6 5 1
0
end_operator
begin_operator
drive-medical-unit m1 l6 l6
1
6 5
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
drive-medical-unit m2 l1 l3
2
1 1
7 0
1
1
0 7 0 2
0
end_operator
begin_operator
drive-medical-unit m2 l1 l5
1
7 0
1
1
0 7 0 4
0
end_operator
begin_operator
drive-medical-unit m2 l1 l6
1
7 0
1
1
0 7 0 5
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
drive-medical-unit m2 l2 l3
2
1 1
7 1
1
1
0 7 1 2
0
end_operator
begin_operator
drive-medical-unit m2 l2 l5
1
7 1
1
1
0 7 1 4
0
end_operator
begin_operator
drive-medical-unit m2 l2 l6
1
7 1
1
1
0 7 1 5
0
end_operator
begin_operator
drive-medical-unit m2 l3 l1
1
7 2
1
1
0 7 2 0
0
end_operator
begin_operator
drive-medical-unit m2 l3 l2
2
0 1
7 2
1
1
0 7 2 1
0
end_operator
begin_operator
drive-medical-unit m2 l3 l3
2
1 1
7 2
1
0
0
end_operator
begin_operator
drive-medical-unit m2 l3 l4
1
7 2
1
1
0 7 2 3
0
end_operator
begin_operator
drive-medical-unit m2 l3 l5
1
7 2
1
1
0 7 2 4
0
end_operator
begin_operator
drive-medical-unit m2 l4 l3
2
1 1
7 3
1
1
0 7 3 2
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
2
1 1
7 4
1
1
0 7 4 2
0
end_operator
begin_operator
drive-medical-unit m2 l5 l5
1
7 4
1
0
0
end_operator
begin_operator
drive-medical-unit m2 l6 l1
1
7 5
1
1
0 7 5 0
0
end_operator
begin_operator
drive-medical-unit m2 l6 l2
2
0 1
7 5
1
1
0 7 5 1
0
end_operator
begin_operator
drive-medical-unit m2 l6 l6
1
7 5
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
drive-medical-unit m3 l1 l3
2
1 1
8 0
1
1
0 8 0 2
0
end_operator
begin_operator
drive-medical-unit m3 l1 l5
1
8 0
1
1
0 8 0 4
0
end_operator
begin_operator
drive-medical-unit m3 l1 l6
1
8 0
1
1
0 8 0 5
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
drive-medical-unit m3 l2 l3
2
1 1
8 1
1
1
0 8 1 2
0
end_operator
begin_operator
drive-medical-unit m3 l2 l5
1
8 1
1
1
0 8 1 4
0
end_operator
begin_operator
drive-medical-unit m3 l2 l6
1
8 1
1
1
0 8 1 5
0
end_operator
begin_operator
drive-medical-unit m3 l3 l1
1
8 2
1
1
0 8 2 0
0
end_operator
begin_operator
drive-medical-unit m3 l3 l2
2
0 1
8 2
1
1
0 8 2 1
0
end_operator
begin_operator
drive-medical-unit m3 l3 l3
2
1 1
8 2
1
0
0
end_operator
begin_operator
drive-medical-unit m3 l3 l4
1
8 2
1
1
0 8 2 3
0
end_operator
begin_operator
drive-medical-unit m3 l3 l5
1
8 2
1
1
0 8 2 4
0
end_operator
begin_operator
drive-medical-unit m3 l4 l3
2
1 1
8 3
1
1
0 8 3 2
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
2
1 1
8 4
1
1
0 8 4 2
0
end_operator
begin_operator
drive-medical-unit m3 l5 l5
1
8 4
1
0
0
end_operator
begin_operator
drive-medical-unit m3 l6 l1
1
8 5
1
1
0 8 5 0
0
end_operator
begin_operator
drive-medical-unit m3 l6 l2
2
0 1
8 5
1
1
0 8 5 1
0
end_operator
begin_operator
drive-medical-unit m3 l6 l6
1
8 5
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
load-fire-unit f1 l2
1
2 1
1
1
0 5 -1 0
0
end_operator
begin_operator
load-fire-unit f1 l4
1
2 3
1
1
0 5 -1 0
0
end_operator
begin_operator
load-fire-unit f1 l6
1
2 5
1
1
0 5 -1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v1
2
3 3
6 0
1
1
0 3 3 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v2
2
4 3
6 0
1
1
0 4 3 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v1
2
3 4
6 1
1
1
0 3 4 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v2
2
4 4
6 1
1
1
0 4 4 0
0
end_operator
begin_operator
load-medical-unit m1 l3 v1
2
3 5
6 2
1
1
0 3 5 0
0
end_operator
begin_operator
load-medical-unit m1 l3 v2
2
4 5
6 2
1
1
0 4 5 0
0
end_operator
begin_operator
load-medical-unit m1 l4 v1
2
3 6
6 3
1
1
0 3 6 0
0
end_operator
begin_operator
load-medical-unit m1 l4 v2
2
4 6
6 3
1
1
0 4 6 0
0
end_operator
begin_operator
load-medical-unit m1 l5 v1
2
3 7
6 4
1
1
0 3 7 0
0
end_operator
begin_operator
load-medical-unit m1 l5 v2
2
4 7
6 4
1
1
0 4 7 0
0
end_operator
begin_operator
load-medical-unit m1 l6 v1
2
3 8
6 5
1
1
0 3 8 0
0
end_operator
begin_operator
load-medical-unit m1 l6 v2
2
4 8
6 5
1
1
0 4 8 0
0
end_operator
begin_operator
load-medical-unit m2 l1 v1
2
3 3
7 0
1
1
0 3 3 1
0
end_operator
begin_operator
load-medical-unit m2 l1 v2
2
4 3
7 0
1
1
0 4 3 1
0
end_operator
begin_operator
load-medical-unit m2 l2 v1
2
3 4
7 1
1
1
0 3 4 1
0
end_operator
begin_operator
load-medical-unit m2 l2 v2
2
4 4
7 1
1
1
0 4 4 1
0
end_operator
begin_operator
load-medical-unit m2 l3 v1
2
3 5
7 2
1
1
0 3 5 1
0
end_operator
begin_operator
load-medical-unit m2 l3 v2
2
4 5
7 2
1
1
0 4 5 1
0
end_operator
begin_operator
load-medical-unit m2 l4 v1
2
3 6
7 3
1
1
0 3 6 1
0
end_operator
begin_operator
load-medical-unit m2 l4 v2
2
4 6
7 3
1
1
0 4 6 1
0
end_operator
begin_operator
load-medical-unit m2 l5 v1
2
3 7
7 4
1
1
0 3 7 1
0
end_operator
begin_operator
load-medical-unit m2 l5 v2
2
4 7
7 4
1
1
0 4 7 1
0
end_operator
begin_operator
load-medical-unit m2 l6 v1
2
3 8
7 5
1
1
0 3 8 1
0
end_operator
begin_operator
load-medical-unit m2 l6 v2
2
4 8
7 5
1
1
0 4 8 1
0
end_operator
begin_operator
load-medical-unit m3 l1 v1
2
3 3
8 0
1
1
0 3 3 2
0
end_operator
begin_operator
load-medical-unit m3 l1 v2
2
4 3
8 0
1
1
0 4 3 2
0
end_operator
begin_operator
load-medical-unit m3 l2 v1
2
3 4
8 1
1
1
0 3 4 2
0
end_operator
begin_operator
load-medical-unit m3 l2 v2
2
4 4
8 1
1
1
0 4 4 2
0
end_operator
begin_operator
load-medical-unit m3 l3 v1
2
3 5
8 2
1
1
0 3 5 2
0
end_operator
begin_operator
load-medical-unit m3 l3 v2
2
4 5
8 2
1
1
0 4 5 2
0
end_operator
begin_operator
load-medical-unit m3 l4 v1
2
3 6
8 3
1
1
0 3 6 2
0
end_operator
begin_operator
load-medical-unit m3 l4 v2
2
4 6
8 3
1
1
0 4 6 2
0
end_operator
begin_operator
load-medical-unit m3 l5 v1
2
3 7
8 4
1
1
0 3 7 2
0
end_operator
begin_operator
load-medical-unit m3 l5 v2
2
4 7
8 4
1
1
0 4 7 2
0
end_operator
begin_operator
load-medical-unit m3 l6 v1
2
3 8
8 5
1
1
0 3 8 2
0
end_operator
begin_operator
load-medical-unit m3 l6 v2
2
4 8
8 5
1
1
0 4 8 2
0
end_operator
begin_operator
treat-victim-at-hospital v1 l3
1
3 5
1
2
0 9 -1 0
0 10 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v1 l4
1
3 6
1
2
0 9 -1 0
0 10 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v1 l6
1
3 8
1
2
0 9 -1 0
0 10 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v2 l3
1
4 5
1
2
0 11 -1 0
0 12 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v2 l4
1
4 6
1
2
0 11 -1 0
0 12 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v2 l6
1
4 8
1
2
0 11 -1 0
0 12 -1 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v1
3
2 0
3 3
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v2
3
2 0
4 3
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l2 v1
3
2 1
3 4
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l2 v2
3
2 1
4 4
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l3 v1
3
2 2
3 5
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l3 v2
3
2 2
4 5
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l4 v1
3
2 3
3 6
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l4 v2
3
2 3
4 6
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l5 v1
3
2 4
3 7
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l5 v2
3
2 4
4 7
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l6 v1
3
2 5
3 8
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l6 v2
3
2 5
4 8
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v1
3
3 3
6 0
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v2
3
4 3
6 0
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v1
3
3 4
6 1
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v2
3
4 4
6 1
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l3 v1
3
3 5
6 2
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l3 v2
3
4 5
6 2
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l4 v1
3
3 6
6 3
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l4 v2
3
4 6
6 3
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l5 v1
3
3 7
6 4
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l5 v2
3
4 7
6 4
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l6 v1
3
3 8
6 5
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l6 v2
3
4 8
6 5
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l1 v1
3
3 3
7 0
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l1 v2
3
4 3
7 0
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l2 v1
3
3 4
7 1
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l2 v2
3
4 4
7 1
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l3 v1
3
3 5
7 2
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l3 v2
3
4 5
7 2
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l4 v1
3
3 6
7 3
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l4 v2
3
4 6
7 3
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l5 v1
3
3 7
7 4
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l5 v2
3
4 7
7 4
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l6 v1
3
3 8
7 5
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l6 v2
3
4 8
7 5
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l1 v1
3
3 3
8 0
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l1 v2
3
4 3
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
treat-victim-on-scene-medical m3 l2 v1
3
3 4
8 1
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l2 v2
3
4 4
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
treat-victim-on-scene-medical m3 l3 v1
3
3 5
8 2
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l3 v2
3
4 5
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
treat-victim-on-scene-medical m3 l4 v1
3
3 6
8 3
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l4 v2
3
4 6
8 3
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l5 v1
3
3 7
8 4
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l5 v2
3
4 7
8 4
12 0
2
0
2
0 11 -1 0
0 12 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l6 v1
3
3 8
8 5
10 0
2
0
2
0 9 -1 0
0 10 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l6 v2
3
4 8
8 5
12 0
2
0
2
0 11 -1 0
0 12 0 1
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
unload-fire-unit f1 l1 l3
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
unload-fire-unit f1 l2 l3
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
unload-fire-unit f1 l3 l2
3
0 0
2 2
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
unload-fire-unit f1 l3 l3
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
unload-fire-unit f1 l4 l3
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
unload-fire-unit f1 l5 l3
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
unload-fire-unit f1 l6 l2
3
0 0
2 5
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
unload-medical-unit m1 l1 v1
2
3 0
6 0
1
1
0 3 0 3
0
end_operator
begin_operator
unload-medical-unit m1 l1 v2
2
4 0
6 0
1
1
0 4 0 3
0
end_operator
begin_operator
unload-medical-unit m1 l2 v1
2
3 0
6 1
1
1
0 3 0 4
0
end_operator
begin_operator
unload-medical-unit m1 l2 v2
2
4 0
6 1
1
1
0 4 0 4
0
end_operator
begin_operator
unload-medical-unit m1 l3 v1
2
3 0
6 2
1
1
0 3 0 5
0
end_operator
begin_operator
unload-medical-unit m1 l3 v2
2
4 0
6 2
1
1
0 4 0 5
0
end_operator
begin_operator
unload-medical-unit m1 l4 v1
2
3 0
6 3
1
1
0 3 0 6
0
end_operator
begin_operator
unload-medical-unit m1 l4 v2
2
4 0
6 3
1
1
0 4 0 6
0
end_operator
begin_operator
unload-medical-unit m1 l5 v1
2
3 0
6 4
1
1
0 3 0 7
0
end_operator
begin_operator
unload-medical-unit m1 l5 v2
2
4 0
6 4
1
1
0 4 0 7
0
end_operator
begin_operator
unload-medical-unit m1 l6 v1
2
3 0
6 5
1
1
0 3 0 8
0
end_operator
begin_operator
unload-medical-unit m1 l6 v2
2
4 0
6 5
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
0 3 1 3
0
end_operator
begin_operator
unload-medical-unit m2 l1 v2
2
4 1
7 0
1
1
0 4 1 3
0
end_operator
begin_operator
unload-medical-unit m2 l2 v1
2
3 1
7 1
1
1
0 3 1 4
0
end_operator
begin_operator
unload-medical-unit m2 l2 v2
2
4 1
7 1
1
1
0 4 1 4
0
end_operator
begin_operator
unload-medical-unit m2 l3 v1
2
3 1
7 2
1
1
0 3 1 5
0
end_operator
begin_operator
unload-medical-unit m2 l3 v2
2
4 1
7 2
1
1
0 4 1 5
0
end_operator
begin_operator
unload-medical-unit m2 l4 v1
2
3 1
7 3
1
1
0 3 1 6
0
end_operator
begin_operator
unload-medical-unit m2 l4 v2
2
4 1
7 3
1
1
0 4 1 6
0
end_operator
begin_operator
unload-medical-unit m2 l5 v1
2
3 1
7 4
1
1
0 3 1 7
0
end_operator
begin_operator
unload-medical-unit m2 l5 v2
2
4 1
7 4
1
1
0 4 1 7
0
end_operator
begin_operator
unload-medical-unit m2 l6 v1
2
3 1
7 5
1
1
0 3 1 8
0
end_operator
begin_operator
unload-medical-unit m2 l6 v2
2
4 1
7 5
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
0 3 2 3
0
end_operator
begin_operator
unload-medical-unit m3 l1 v2
2
4 2
8 0
1
1
0 4 2 3
0
end_operator
begin_operator
unload-medical-unit m3 l2 v1
2
3 2
8 1
1
1
0 3 2 4
0
end_operator
begin_operator
unload-medical-unit m3 l2 v2
2
4 2
8 1
1
1
0 4 2 4
0
end_operator
begin_operator
unload-medical-unit m3 l3 v1
2
3 2
8 2
1
1
0 3 2 5
0
end_operator
begin_operator
unload-medical-unit m3 l3 v2
2
4 2
8 2
1
1
0 4 2 5
0
end_operator
begin_operator
unload-medical-unit m3 l4 v1
2
3 2
8 3
1
1
0 3 2 6
0
end_operator
begin_operator
unload-medical-unit m3 l4 v2
2
4 2
8 3
1
1
0 4 2 6
0
end_operator
begin_operator
unload-medical-unit m3 l5 v1
2
3 2
8 4
1
1
0 3 2 7
0
end_operator
begin_operator
unload-medical-unit m3 l5 v2
2
4 2
8 4
1
1
0 4 2 7
0
end_operator
begin_operator
unload-medical-unit m3 l6 v1
2
3 2
8 5
1
1
0 3 2 8
0
end_operator
begin_operator
unload-medical-unit m3 l6 v2
2
4 2
8 5
1
1
0 4 2 8
0
end_operator
0
