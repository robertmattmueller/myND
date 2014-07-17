begin_version
3.FOND
end_version
begin_metric
0
end_metric
24
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
Atom fire(l3)
Atom nfire(l3)
end_variable
begin_variable
var2
-1
2
Atom fire(l4)
Atom nfire(l4)
end_variable
begin_variable
var3
-1
3
Atom fire-unit-at(f3, l1)
Atom fire-unit-at(f3, l2)
Atom fire-unit-at(f3, l3)
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
4
Atom have-victim-in-unit(v3, m1)
Atom victim-at(v3, l1)
Atom victim-at(v3, l2)
Atom victim-at(v3, l3)
end_variable
begin_variable
var7
-1
4
Atom have-victim-in-unit(v6, m1)
Atom victim-at(v6, l1)
Atom victim-at(v6, l2)
Atom victim-at(v6, l3)
end_variable
begin_variable
var8
-1
2
Atom have-water(f1)
NegatedAtom have-water(f1)
end_variable
begin_variable
var9
-1
2
Atom have-water(f2)
NegatedAtom have-water(f2)
end_variable
begin_variable
var10
-1
2
Atom have-water(f3)
NegatedAtom have-water(f3)
end_variable
begin_variable
var11
-1
3
Atom medical-unit-at(m1, l1)
Atom medical-unit-at(m1, l2)
Atom medical-unit-at(m1, l3)
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
begin_variable
var16
-1
2
Atom victim-status(v3, healthy)
NegatedAtom victim-status(v3, healthy)
end_variable
begin_variable
var17
-1
2
Atom victim-status(v3, hurt)
NegatedAtom victim-status(v3, hurt)
end_variable
begin_variable
var18
-1
2
Atom victim-status(v4, dying)
NegatedAtom victim-status(v4, dying)
end_variable
begin_variable
var19
-1
2
Atom victim-status(v4, healthy)
NegatedAtom victim-status(v4, healthy)
end_variable
begin_variable
var20
-1
2
Atom victim-status(v5, dying)
NegatedAtom victim-status(v5, dying)
end_variable
begin_variable
var21
-1
2
Atom victim-status(v5, healthy)
NegatedAtom victim-status(v5, healthy)
end_variable
begin_variable
var22
-1
2
Atom victim-status(v6, healthy)
NegatedAtom victim-status(v6, healthy)
end_variable
begin_variable
var23
-1
2
Atom victim-status(v6, hurt)
NegatedAtom victim-status(v6, hurt)
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
4
6 0
6 1
6 2
6 3
end_mutex_group
begin_mutex_group
4
7 0
7 1
7 2
7 3
end_mutex_group
begin_mutex_group
3
11 0
11 1
11 2
end_mutex_group
begin_state
0
0
0
0
2
1
1
3
1
1
1
0
1
0
1
0
1
0
0
1
0
1
1
0
end_state
begin_goal
9
0 1
1 1
2 1
12 0
14 0
16 0
19 0
21 0
22 0
end_goal
85
begin_operator
drive-fire-unit f1 l4 l4
1
2 1
1
0
0
end_operator
begin_operator
drive-fire-unit f2 l4 l4
1
2 1
1
0
0
end_operator
begin_operator
drive-fire-unit f3 l1 l1
2
0 1
3 0
1
0
0
end_operator
begin_operator
drive-fire-unit f3 l1 l3
2
1 1
3 0
1
1
0 3 0 2
0
end_operator
begin_operator
drive-fire-unit f3 l2 l2
1
3 1
1
0
0
end_operator
begin_operator
drive-fire-unit f3 l2 l3
2
1 1
3 1
1
1
0 3 1 2
0
end_operator
begin_operator
drive-fire-unit f3 l3 l1
2
0 1
3 2
1
1
0 3 2 0
0
end_operator
begin_operator
drive-fire-unit f3 l3 l2
1
3 2
1
1
0 3 2 1
0
end_operator
begin_operator
drive-fire-unit f3 l3 l3
2
1 1
3 2
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l1
2
0 1
11 0
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l3
2
1 1
11 0
1
1
0 11 0 2
0
end_operator
begin_operator
drive-medical-unit m1 l2 l2
1
11 1
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l3
2
1 1
11 1
1
1
0 11 1 2
0
end_operator
begin_operator
drive-medical-unit m1 l3 l1
2
0 1
11 2
1
1
0 11 2 0
0
end_operator
begin_operator
drive-medical-unit m1 l3 l2
1
11 2
1
1
0 11 2 1
0
end_operator
begin_operator
drive-medical-unit m1 l3 l3
2
1 1
11 2
1
0
0
end_operator
begin_operator
load-fire-unit f1 l4
0
1
1
0 8 -1 0
0
end_operator
begin_operator
load-fire-unit f2 l4
0
1
1
0 9 -1 0
0
end_operator
begin_operator
load-fire-unit f3 l1
1
3 0
1
1
0 10 -1 0
0
end_operator
begin_operator
load-fire-unit f3 l3
1
3 2
1
1
0 10 -1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v1
2
4 1
11 0
1
1
0 4 1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v2
2
5 1
11 0
1
1
0 5 1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v3
2
6 1
11 0
1
1
0 6 1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v6
2
7 1
11 0
1
1
0 7 1 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v1
2
4 2
11 1
1
1
0 4 2 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v2
2
5 2
11 1
1
1
0 5 2 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v3
2
6 2
11 1
1
1
0 6 2 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v6
2
7 2
11 1
1
1
0 7 2 0
0
end_operator
begin_operator
load-medical-unit m1 l3 v1
2
4 3
11 2
1
1
0 4 3 0
0
end_operator
begin_operator
load-medical-unit m1 l3 v2
2
5 3
11 2
1
1
0 5 3 0
0
end_operator
begin_operator
load-medical-unit m1 l3 v3
2
6 3
11 2
1
1
0 6 3 0
0
end_operator
begin_operator
load-medical-unit m1 l3 v6
2
7 3
11 2
1
1
0 7 3 0
0
end_operator
begin_operator
treat-victim-at-hospital v1 l2
1
4 2
1
2
0 12 -1 0
0 13 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v1 l3
1
4 3
1
2
0 12 -1 0
0 13 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v2 l2
1
5 2
1
2
0 14 -1 0
0 15 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v2 l3
1
5 3
1
2
0 14 -1 0
0 15 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v3 l2
1
6 2
1
2
0 16 -1 0
0 17 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v3 l3
1
6 3
1
2
0 16 -1 0
0 17 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v4 l4
0
1
2
0 18 -1 1
0 19 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v5 l4
0
1
2
0 20 -1 1
0 21 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v6 l2
1
7 2
1
2
0 22 -1 0
0 23 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v6 l3
1
7 3
1
2
0 22 -1 0
0 23 -1 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l1 v1
3
3 0
4 1
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l1 v2
3
3 0
5 1
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l1 v3
3
3 0
6 1
17 0
2
0
2
0 16 -1 0
0 17 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l1 v6
3
3 0
7 1
23 0
2
0
2
0 22 -1 0
0 23 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l2 v1
3
3 1
4 2
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l2 v2
3
3 1
5 2
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l2 v3
3
3 1
6 2
17 0
2
0
2
0 16 -1 0
0 17 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l2 v6
3
3 1
7 2
23 0
2
0
2
0 22 -1 0
0 23 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l3 v1
3
3 2
4 3
13 0
2
0
2
0 12 -1 0
0 13 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l3 v2
3
3 2
5 3
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l3 v3
3
3 2
6 3
17 0
2
0
2
0 16 -1 0
0 17 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f3 l3 v6
3
3 2
7 3
23 0
2
0
2
0 22 -1 0
0 23 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v1
3
4 1
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
treat-victim-on-scene-medical m1 l1 v2
3
5 1
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
treat-victim-on-scene-medical m1 l1 v3
3
6 1
11 0
17 0
2
0
2
0 16 -1 0
0 17 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v6
3
7 1
11 0
23 0
2
0
2
0 22 -1 0
0 23 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v1
3
4 2
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
treat-victim-on-scene-medical m1 l2 v2
3
5 2
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
treat-victim-on-scene-medical m1 l2 v3
3
6 2
11 1
17 0
2
0
2
0 16 -1 0
0 17 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v6
3
7 2
11 1
23 0
2
0
2
0 22 -1 0
0 23 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l3 v1
3
4 3
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
treat-victim-on-scene-medical m1 l3 v2
3
5 3
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
treat-victim-on-scene-medical m1 l3 v3
3
6 3
11 2
17 0
2
0
2
0 16 -1 0
0 17 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l3 v6
3
7 3
11 2
23 0
2
0
2
0 22 -1 0
0 23 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l4 l4
2
2 0
8 0
2
2
0 2 0 1
0 8 0 1
1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l4 l4
2
2 0
9 0
2
2
0 2 0 1
0 9 0 1
1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l1 l1
3
0 0
3 0
10 0
2
2
0 0 0 1
0 10 0 1
1
0 10 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l1 l3
3
1 0
3 0
10 0
2
2
0 1 0 1
0 10 0 1
1
0 10 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l2 l3
3
1 0
3 1
10 0
2
2
0 1 0 1
0 10 0 1
1
0 10 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l3 l1
3
0 0
3 2
10 0
2
2
0 0 0 1
0 10 0 1
1
0 10 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l3 l3
3
1 0
3 2
10 0
2
2
0 1 0 1
0 10 0 1
1
0 10 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l1 v1
2
4 0
11 0
1
1
0 4 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l1 v2
2
5 0
11 0
1
1
0 5 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l1 v3
2
6 0
11 0
1
1
0 6 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l1 v6
2
7 0
11 0
1
1
0 7 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l2 v1
2
4 0
11 1
1
1
0 4 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l2 v2
2
5 0
11 1
1
1
0 5 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l2 v3
2
6 0
11 1
1
1
0 6 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l2 v6
2
7 0
11 1
1
1
0 7 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l3 v1
2
4 0
11 2
1
1
0 4 0 3
0
end_operator
begin_operator
unload-medical-unit m1 l3 v2
2
5 0
11 2
1
1
0 5 0 3
0
end_operator
begin_operator
unload-medical-unit m1 l3 v3
2
6 0
11 2
1
1
0 6 0 3
0
end_operator
begin_operator
unload-medical-unit m1 l3 v6
2
7 0
11 2
1
1
0 7 0 3
0
end_operator
0
