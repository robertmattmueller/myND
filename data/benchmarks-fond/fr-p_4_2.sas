begin_version
3.FOND
end_version
begin_metric
0
end_metric
16
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
4
Atom fire-unit-at(f1, l1)
Atom fire-unit-at(f1, l2)
Atom fire-unit-at(f1, l3)
Atom fire-unit-at(f1, l4)
end_variable
begin_variable
var3
-1
4
Atom fire-unit-at(f2, l1)
Atom fire-unit-at(f2, l2)
Atom fire-unit-at(f2, l3)
Atom fire-unit-at(f2, l4)
end_variable
begin_variable
var4
-1
8
Atom have-victim-in-unit(v1, m1)
Atom have-victim-in-unit(v1, m2)
Atom have-victim-in-unit(v1, m3)
Atom have-victim-in-unit(v1, m4)
Atom victim-at(v1, l1)
Atom victim-at(v1, l2)
Atom victim-at(v1, l3)
Atom victim-at(v1, l4)
end_variable
begin_variable
var5
-1
8
Atom have-victim-in-unit(v2, m1)
Atom have-victim-in-unit(v2, m2)
Atom have-victim-in-unit(v2, m3)
Atom have-victim-in-unit(v2, m4)
Atom victim-at(v2, l1)
Atom victim-at(v2, l2)
Atom victim-at(v2, l3)
Atom victim-at(v2, l4)
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
4
Atom medical-unit-at(m1, l1)
Atom medical-unit-at(m1, l2)
Atom medical-unit-at(m1, l3)
Atom medical-unit-at(m1, l4)
end_variable
begin_variable
var9
-1
4
Atom medical-unit-at(m2, l1)
Atom medical-unit-at(m2, l2)
Atom medical-unit-at(m2, l3)
Atom medical-unit-at(m2, l4)
end_variable
begin_variable
var10
-1
4
Atom medical-unit-at(m3, l1)
Atom medical-unit-at(m3, l2)
Atom medical-unit-at(m3, l3)
Atom medical-unit-at(m3, l4)
end_variable
begin_variable
var11
-1
4
Atom medical-unit-at(m4, l1)
Atom medical-unit-at(m4, l2)
Atom medical-unit-at(m4, l3)
Atom medical-unit-at(m4, l4)
end_variable
begin_variable
var12
-1
2
Atom victim-status(v1, healthy)
NegatedAtom victim-status(v1, healthy)
end_variable
begin_variable
var13
-1
2
Atom victim-status(v1, hurt)
NegatedAtom victim-status(v1, hurt)
end_variable
begin_variable
var14
-1
2
Atom victim-status(v2, healthy)
NegatedAtom victim-status(v2, healthy)
end_variable
begin_variable
var15
-1
2
Atom victim-status(v2, hurt)
NegatedAtom victim-status(v2, hurt)
end_variable
10
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
4
2 0
2 1
2 2
2 3
end_mutex_group
begin_mutex_group
4
3 0
3 1
3 2
3 3
end_mutex_group
begin_mutex_group
8
4 0
4 1
4 2
4 3
4 4
4 5
4 6
4 7
end_mutex_group
begin_mutex_group
8
5 0
5 1
5 2
5 3
5 4
5 5
5 6
5 7
end_mutex_group
begin_mutex_group
4
8 0
8 1
8 2
8 3
end_mutex_group
begin_mutex_group
4
9 0
9 1
9 2
9 3
end_mutex_group
begin_mutex_group
4
10 0
10 1
10 2
10 3
end_mutex_group
begin_mutex_group
4
11 0
11 1
11 2
11 3
end_mutex_group
begin_state
0
0
0
1
6
6
1
1
2
2
3
3
1
0
1
0
end_state
begin_goal
4
0 1
1 1
12 0
14 0
end_goal
202
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
drive-fire-unit f1 l1 l4
1
2 0
1
1
0 2 0 3
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
drive-fire-unit f1 l2 l4
1
2 1
1
1
0 2 1 3
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
drive-fire-unit f1 l3 l3
2
1 1
2 2
1
0
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
drive-fire-unit f1 l4 l2
2
0 1
2 3
1
1
0 2 3 1
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
drive-fire-unit f2 l1 l1
1
3 0
1
0
0
end_operator
begin_operator
drive-fire-unit f2 l1 l2
2
0 1
3 0
1
1
0 3 0 1
0
end_operator
begin_operator
drive-fire-unit f2 l1 l3
2
1 1
3 0
1
1
0 3 0 2
0
end_operator
begin_operator
drive-fire-unit f2 l1 l4
1
3 0
1
1
0 3 0 3
0
end_operator
begin_operator
drive-fire-unit f2 l2 l1
1
3 1
1
1
0 3 1 0
0
end_operator
begin_operator
drive-fire-unit f2 l2 l2
2
0 1
3 1
1
0
0
end_operator
begin_operator
drive-fire-unit f2 l2 l4
1
3 1
1
1
0 3 1 3
0
end_operator
begin_operator
drive-fire-unit f2 l3 l1
1
3 2
1
1
0 3 2 0
0
end_operator
begin_operator
drive-fire-unit f2 l3 l3
2
1 1
3 2
1
0
0
end_operator
begin_operator
drive-fire-unit f2 l4 l1
1
3 3
1
1
0 3 3 0
0
end_operator
begin_operator
drive-fire-unit f2 l4 l2
2
0 1
3 3
1
1
0 3 3 1
0
end_operator
begin_operator
drive-fire-unit f2 l4 l4
1
3 3
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l1
1
8 0
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l2
2
0 1
8 0
1
1
0 8 0 1
0
end_operator
begin_operator
drive-medical-unit m1 l1 l3
2
1 1
8 0
1
1
0 8 0 2
0
end_operator
begin_operator
drive-medical-unit m1 l1 l4
1
8 0
1
1
0 8 0 3
0
end_operator
begin_operator
drive-medical-unit m1 l2 l1
1
8 1
1
1
0 8 1 0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l2
2
0 1
8 1
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l4
1
8 1
1
1
0 8 1 3
0
end_operator
begin_operator
drive-medical-unit m1 l3 l1
1
8 2
1
1
0 8 2 0
0
end_operator
begin_operator
drive-medical-unit m1 l3 l3
2
1 1
8 2
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l4 l1
1
8 3
1
1
0 8 3 0
0
end_operator
begin_operator
drive-medical-unit m1 l4 l2
2
0 1
8 3
1
1
0 8 3 1
0
end_operator
begin_operator
drive-medical-unit m1 l4 l4
1
8 3
1
0
0
end_operator
begin_operator
drive-medical-unit m2 l1 l1
1
9 0
1
0
0
end_operator
begin_operator
drive-medical-unit m2 l1 l2
2
0 1
9 0
1
1
0 9 0 1
0
end_operator
begin_operator
drive-medical-unit m2 l1 l3
2
1 1
9 0
1
1
0 9 0 2
0
end_operator
begin_operator
drive-medical-unit m2 l1 l4
1
9 0
1
1
0 9 0 3
0
end_operator
begin_operator
drive-medical-unit m2 l2 l1
1
9 1
1
1
0 9 1 0
0
end_operator
begin_operator
drive-medical-unit m2 l2 l2
2
0 1
9 1
1
0
0
end_operator
begin_operator
drive-medical-unit m2 l2 l4
1
9 1
1
1
0 9 1 3
0
end_operator
begin_operator
drive-medical-unit m2 l3 l1
1
9 2
1
1
0 9 2 0
0
end_operator
begin_operator
drive-medical-unit m2 l3 l3
2
1 1
9 2
1
0
0
end_operator
begin_operator
drive-medical-unit m2 l4 l1
1
9 3
1
1
0 9 3 0
0
end_operator
begin_operator
drive-medical-unit m2 l4 l2
2
0 1
9 3
1
1
0 9 3 1
0
end_operator
begin_operator
drive-medical-unit m2 l4 l4
1
9 3
1
0
0
end_operator
begin_operator
drive-medical-unit m3 l1 l1
1
10 0
1
0
0
end_operator
begin_operator
drive-medical-unit m3 l1 l2
2
0 1
10 0
1
1
0 10 0 1
0
end_operator
begin_operator
drive-medical-unit m3 l1 l3
2
1 1
10 0
1
1
0 10 0 2
0
end_operator
begin_operator
drive-medical-unit m3 l1 l4
1
10 0
1
1
0 10 0 3
0
end_operator
begin_operator
drive-medical-unit m3 l2 l1
1
10 1
1
1
0 10 1 0
0
end_operator
begin_operator
drive-medical-unit m3 l2 l2
2
0 1
10 1
1
0
0
end_operator
begin_operator
drive-medical-unit m3 l2 l4
1
10 1
1
1
0 10 1 3
0
end_operator
begin_operator
drive-medical-unit m3 l3 l1
1
10 2
1
1
0 10 2 0
0
end_operator
begin_operator
drive-medical-unit m3 l3 l3
2
1 1
10 2
1
0
0
end_operator
begin_operator
drive-medical-unit m3 l4 l1
1
10 3
1
1
0 10 3 0
0
end_operator
begin_operator
drive-medical-unit m3 l4 l2
2
0 1
10 3
1
1
0 10 3 1
0
end_operator
begin_operator
drive-medical-unit m3 l4 l4
1
10 3
1
0
0
end_operator
begin_operator
drive-medical-unit m4 l1 l1
1
11 0
1
0
0
end_operator
begin_operator
drive-medical-unit m4 l1 l2
2
0 1
11 0
1
1
0 11 0 1
0
end_operator
begin_operator
drive-medical-unit m4 l1 l3
2
1 1
11 0
1
1
0 11 0 2
0
end_operator
begin_operator
drive-medical-unit m4 l1 l4
1
11 0
1
1
0 11 0 3
0
end_operator
begin_operator
drive-medical-unit m4 l2 l1
1
11 1
1
1
0 11 1 0
0
end_operator
begin_operator
drive-medical-unit m4 l2 l2
2
0 1
11 1
1
0
0
end_operator
begin_operator
drive-medical-unit m4 l2 l4
1
11 1
1
1
0 11 1 3
0
end_operator
begin_operator
drive-medical-unit m4 l3 l1
1
11 2
1
1
0 11 2 0
0
end_operator
begin_operator
drive-medical-unit m4 l3 l3
2
1 1
11 2
1
0
0
end_operator
begin_operator
drive-medical-unit m4 l4 l1
1
11 3
1
1
0 11 3 0
0
end_operator
begin_operator
drive-medical-unit m4 l4 l2
2
0 1
11 3
1
1
0 11 3 1
0
end_operator
begin_operator
drive-medical-unit m4 l4 l4
1
11 3
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
load-fire-unit f1 l2
1
2 1
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
load-fire-unit f2 l2
1
3 1
1
1
0 7 -1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v1
2
4 4
8 0
1
1
0 4 4 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v2
2
5 4
8 0
1
1
0 5 4 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v1
2
4 5
8 1
1
1
0 4 5 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v2
2
5 5
8 1
1
1
0 5 5 0
0
end_operator
begin_operator
load-medical-unit m1 l3 v1
2
4 6
8 2
1
1
0 4 6 0
0
end_operator
begin_operator
load-medical-unit m1 l3 v2
2
5 6
8 2
1
1
0 5 6 0
0
end_operator
begin_operator
load-medical-unit m1 l4 v1
2
4 7
8 3
1
1
0 4 7 0
0
end_operator
begin_operator
load-medical-unit m1 l4 v2
2
5 7
8 3
1
1
0 5 7 0
0
end_operator
begin_operator
load-medical-unit m2 l1 v1
2
4 4
9 0
1
1
0 4 4 1
0
end_operator
begin_operator
load-medical-unit m2 l1 v2
2
5 4
9 0
1
1
0 5 4 1
0
end_operator
begin_operator
load-medical-unit m2 l2 v1
2
4 5
9 1
1
1
0 4 5 1
0
end_operator
begin_operator
load-medical-unit m2 l2 v2
2
5 5
9 1
1
1
0 5 5 1
0
end_operator
begin_operator
load-medical-unit m2 l3 v1
2
4 6
9 2
1
1
0 4 6 1
0
end_operator
begin_operator
load-medical-unit m2 l3 v2
2
5 6
9 2
1
1
0 5 6 1
0
end_operator
begin_operator
load-medical-unit m2 l4 v1
2
4 7
9 3
1
1
0 4 7 1
0
end_operator
begin_operator
load-medical-unit m2 l4 v2
2
5 7
9 3
1
1
0 5 7 1
0
end_operator
begin_operator
load-medical-unit m3 l1 v1
2
4 4
10 0
1
1
0 4 4 2
0
end_operator
begin_operator
load-medical-unit m3 l1 v2
2
5 4
10 0
1
1
0 5 4 2
0
end_operator
begin_operator
load-medical-unit m3 l2 v1
2
4 5
10 1
1
1
0 4 5 2
0
end_operator
begin_operator
load-medical-unit m3 l2 v2
2
5 5
10 1
1
1
0 5 5 2
0
end_operator
begin_operator
load-medical-unit m3 l3 v1
2
4 6
10 2
1
1
0 4 6 2
0
end_operator
begin_operator
load-medical-unit m3 l3 v2
2
5 6
10 2
1
1
0 5 6 2
0
end_operator
begin_operator
load-medical-unit m3 l4 v1
2
4 7
10 3
1
1
0 4 7 2
0
end_operator
begin_operator
load-medical-unit m3 l4 v2
2
5 7
10 3
1
1
0 5 7 2
0
end_operator
begin_operator
load-medical-unit m4 l1 v1
2
4 4
11 0
1
1
0 4 4 3
0
end_operator
begin_operator
load-medical-unit m4 l1 v2
2
5 4
11 0
1
1
0 5 4 3
0
end_operator
begin_operator
load-medical-unit m4 l2 v1
2
4 5
11 1
1
1
0 4 5 3
0
end_operator
begin_operator
load-medical-unit m4 l2 v2
2
5 5
11 1
1
1
0 5 5 3
0
end_operator
begin_operator
load-medical-unit m4 l3 v1
2
4 6
11 2
1
1
0 4 6 3
0
end_operator
begin_operator
load-medical-unit m4 l3 v2
2
5 6
11 2
1
1
0 5 6 3
0
end_operator
begin_operator
load-medical-unit m4 l4 v1
2
4 7
11 3
1
1
0 4 7 3
0
end_operator
begin_operator
load-medical-unit m4 l4 v2
2
5 7
11 3
1
1
0 5 7 3
0
end_operator
begin_operator
treat-victim-at-hospital v1 l1
1
4 4
1
2
0 12 -1 0
0 13 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v1 l2
1
4 5
1
2
0 12 -1 0
0 13 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v2 l1
1
5 4
1
2
0 14 -1 0
0 15 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v2 l2
1
5 5
1
2
0 14 -1 0
0 15 -1 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v1
3
2 0
4 4
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v2
3
2 0
5 4
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l2 v1
3
2 1
4 5
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l2 v2
3
2 1
5 5
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l3 v1
3
2 2
4 6
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l3 v2
3
2 2
5 6
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l4 v1
3
2 3
4 7
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l4 v2
3
2 3
5 7
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l1 v1
3
3 0
4 4
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l1 v2
3
3 0
5 4
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l2 v1
3
3 1
4 5
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l2 v2
3
3 1
5 5
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l3 v1
3
3 2
4 6
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l3 v2
3
3 2
5 6
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l4 v1
3
3 3
4 7
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l4 v2
3
3 3
5 7
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v1
3
4 4
8 0
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v2
3
5 4
8 0
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v1
3
4 5
8 1
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v2
3
5 5
8 1
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l3 v1
3
4 6
8 2
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l3 v2
3
5 6
8 2
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l4 v1
3
4 7
8 3
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l4 v2
3
5 7
8 3
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l1 v1
3
4 4
9 0
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l1 v2
3
5 4
9 0
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l2 v1
3
4 5
9 1
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l2 v2
3
5 5
9 1
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l3 v1
3
4 6
9 2
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l3 v2
3
5 6
9 2
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l4 v1
3
4 7
9 3
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l4 v2
3
5 7
9 3
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l1 v1
3
4 4
10 0
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l1 v2
3
5 4
10 0
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l2 v1
3
4 5
10 1
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l2 v2
3
5 5
10 1
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l3 v1
3
4 6
10 2
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l3 v2
3
5 6
10 2
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l4 v1
3
4 7
10 3
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l4 v2
3
5 7
10 3
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m4 l1 v1
3
4 4
11 0
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m4 l1 v2
3
5 4
11 0
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m4 l2 v1
3
4 5
11 1
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m4 l2 v2
3
5 5
11 1
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m4 l3 v1
3
4 6
11 2
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m4 l3 v2
3
5 6
11 2
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m4 l4 v1
3
4 7
11 3
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m4 l4 v2
3
5 7
11 3
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l1 l2
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
unload-fire-unit f1 l1 l3
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
unload-fire-unit f1 l2 l2
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
unload-fire-unit f1 l3 l3
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
unload-fire-unit f1 l4 l2
3
0 0
2 3
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
unload-fire-unit f2 l1 l2
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
unload-fire-unit f2 l1 l3
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
unload-fire-unit f2 l2 l2
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
unload-fire-unit f2 l3 l3
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
unload-fire-unit f2 l4 l2
3
0 0
3 3
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
unload-medical-unit m1 l1 v1
2
4 0
8 0
1
1
0 4 0 4
0
end_operator
begin_operator
unload-medical-unit m1 l1 v2
2
5 0
8 0
1
1
0 5 0 4
0
end_operator
begin_operator
unload-medical-unit m1 l2 v1
2
4 0
8 1
1
1
0 4 0 5
0
end_operator
begin_operator
unload-medical-unit m1 l2 v2
2
5 0
8 1
1
1
0 5 0 5
0
end_operator
begin_operator
unload-medical-unit m1 l3 v1
2
4 0
8 2
1
1
0 4 0 6
0
end_operator
begin_operator
unload-medical-unit m1 l3 v2
2
5 0
8 2
1
1
0 5 0 6
0
end_operator
begin_operator
unload-medical-unit m1 l4 v1
2
4 0
8 3
1
1
0 4 0 7
0
end_operator
begin_operator
unload-medical-unit m1 l4 v2
2
5 0
8 3
1
1
0 5 0 7
0
end_operator
begin_operator
unload-medical-unit m2 l1 v1
2
4 1
9 0
1
1
0 4 1 4
0
end_operator
begin_operator
unload-medical-unit m2 l1 v2
2
5 1
9 0
1
1
0 5 1 4
0
end_operator
begin_operator
unload-medical-unit m2 l2 v1
2
4 1
9 1
1
1
0 4 1 5
0
end_operator
begin_operator
unload-medical-unit m2 l2 v2
2
5 1
9 1
1
1
0 5 1 5
0
end_operator
begin_operator
unload-medical-unit m2 l3 v1
2
4 1
9 2
1
1
0 4 1 6
0
end_operator
begin_operator
unload-medical-unit m2 l3 v2
2
5 1
9 2
1
1
0 5 1 6
0
end_operator
begin_operator
unload-medical-unit m2 l4 v1
2
4 1
9 3
1
1
0 4 1 7
0
end_operator
begin_operator
unload-medical-unit m2 l4 v2
2
5 1
9 3
1
1
0 5 1 7
0
end_operator
begin_operator
unload-medical-unit m3 l1 v1
2
4 2
10 0
1
1
0 4 2 4
0
end_operator
begin_operator
unload-medical-unit m3 l1 v2
2
5 2
10 0
1
1
0 5 2 4
0
end_operator
begin_operator
unload-medical-unit m3 l2 v1
2
4 2
10 1
1
1
0 4 2 5
0
end_operator
begin_operator
unload-medical-unit m3 l2 v2
2
5 2
10 1
1
1
0 5 2 5
0
end_operator
begin_operator
unload-medical-unit m3 l3 v1
2
4 2
10 2
1
1
0 4 2 6
0
end_operator
begin_operator
unload-medical-unit m3 l3 v2
2
5 2
10 2
1
1
0 5 2 6
0
end_operator
begin_operator
unload-medical-unit m3 l4 v1
2
4 2
10 3
1
1
0 4 2 7
0
end_operator
begin_operator
unload-medical-unit m3 l4 v2
2
5 2
10 3
1
1
0 5 2 7
0
end_operator
begin_operator
unload-medical-unit m4 l1 v1
2
4 3
11 0
1
1
0 4 3 4
0
end_operator
begin_operator
unload-medical-unit m4 l1 v2
2
5 3
11 0
1
1
0 5 3 4
0
end_operator
begin_operator
unload-medical-unit m4 l2 v1
2
4 3
11 1
1
1
0 4 3 5
0
end_operator
begin_operator
unload-medical-unit m4 l2 v2
2
5 3
11 1
1
1
0 5 3 5
0
end_operator
begin_operator
unload-medical-unit m4 l3 v1
2
4 3
11 2
1
1
0 4 3 6
0
end_operator
begin_operator
unload-medical-unit m4 l3 v2
2
5 3
11 2
1
1
0 5 3 6
0
end_operator
begin_operator
unload-medical-unit m4 l4 v1
2
4 3
11 3
1
1
0 4 3 7
0
end_operator
begin_operator
unload-medical-unit m4 l4 v2
2
5 3
11 3
1
1
0 5 3 7
0
end_operator
0
