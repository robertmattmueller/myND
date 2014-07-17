begin_version
3.POND
end_version
begin_metric
0
end_metric
17
begin_variable
var0
-1
2
Atom fire(l4)
Atom nfire(l4)
end_variable
begin_variable
var1
-1
5
Atom fire-unit-at(f1, l1)
Atom fire-unit-at(f1, l2)
Atom fire-unit-at(f1, l3)
Atom fire-unit-at(f1, l4)
Atom fire-unit-at(f1, l5)
end_variable
begin_variable
var2
-1
5
Atom fire-unit-at(f2, l1)
Atom fire-unit-at(f2, l2)
Atom fire-unit-at(f2, l3)
Atom fire-unit-at(f2, l4)
Atom fire-unit-at(f2, l5)
end_variable
begin_variable
var3
-1
5
Atom fire-unit-at(f3, l1)
Atom fire-unit-at(f3, l2)
Atom fire-unit-at(f3, l3)
Atom fire-unit-at(f3, l4)
Atom fire-unit-at(f3, l5)
end_variable
begin_variable
var4
-1
5
Atom fire-unit-at(f4, l1)
Atom fire-unit-at(f4, l2)
Atom fire-unit-at(f4, l3)
Atom fire-unit-at(f4, l4)
Atom fire-unit-at(f4, l5)
end_variable
begin_variable
var5
-1
10
Atom have-victim-in-unit(v1, m1)
Atom have-victim-in-unit(v1, m2)
Atom have-victim-in-unit(v1, m3)
Atom have-victim-in-unit(v1, m4)
Atom have-victim-in-unit(v1, m5)
Atom victim-at(v1, l1)
Atom victim-at(v1, l2)
Atom victim-at(v1, l3)
Atom victim-at(v1, l4)
Atom victim-at(v1, l5)
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
2
Atom have-water(f3)
NegatedAtom have-water(f3)
end_variable
begin_variable
var9
-1
2
Atom have-water(f4)
NegatedAtom have-water(f4)
end_variable
begin_variable
var10
-1
5
Atom medical-unit-at(m1, l1)
Atom medical-unit-at(m1, l2)
Atom medical-unit-at(m1, l3)
Atom medical-unit-at(m1, l4)
Atom medical-unit-at(m1, l5)
end_variable
begin_variable
var11
-1
5
Atom medical-unit-at(m2, l1)
Atom medical-unit-at(m2, l2)
Atom medical-unit-at(m2, l3)
Atom medical-unit-at(m2, l4)
Atom medical-unit-at(m2, l5)
end_variable
begin_variable
var12
-1
5
Atom medical-unit-at(m3, l1)
Atom medical-unit-at(m3, l2)
Atom medical-unit-at(m3, l3)
Atom medical-unit-at(m3, l4)
Atom medical-unit-at(m3, l5)
end_variable
begin_variable
var13
-1
5
Atom medical-unit-at(m4, l1)
Atom medical-unit-at(m4, l2)
Atom medical-unit-at(m4, l3)
Atom medical-unit-at(m4, l4)
Atom medical-unit-at(m4, l5)
end_variable
begin_variable
var14
-1
5
Atom medical-unit-at(m5, l1)
Atom medical-unit-at(m5, l2)
Atom medical-unit-at(m5, l3)
Atom medical-unit-at(m5, l4)
Atom medical-unit-at(m5, l5)
end_variable
begin_variable
var15
-1
2
Atom victim-status(v1, dying)
NegatedAtom victim-status(v1, dying)
end_variable
begin_variable
var16
-1
2
Atom victim-status(v1, healthy)
NegatedAtom victim-status(v1, healthy)
end_variable
11
begin_mutex_group
2
0 0
0 1
end_mutex_group
begin_mutex_group
5
1 0
1 1
1 2
1 3
1 4
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
5
3 0
3 1
3 2
3 3
3 4
end_mutex_group
begin_mutex_group
5
4 0
4 1
4 2
4 3
4 4
end_mutex_group
begin_mutex_group
10
5 0
5 1
5 2
5 3
5 4
5 5
5 6
5 7
5 8
5 9
end_mutex_group
begin_mutex_group
5
10 0
10 1
10 2
10 3
10 4
end_mutex_group
begin_mutex_group
5
11 0
11 1
11 2
11 3
11 4
end_mutex_group
begin_mutex_group
5
12 0
12 1
12 2
12 3
12 4
end_mutex_group
begin_mutex_group
5
13 0
13 1
13 2
13 3
13 4
end_mutex_group
begin_mutex_group
5
14 0
14 1
14 2
14 3
14 4
end_mutex_group
begin_state
17
0 0
1 1
2 0
3 3
4 2
10 0
11 4
12 3
13 1
14 0
5 6
15 0
6 1
7 1
8 1
9 1
16 1
0
0
end_state
begin_goal
2
0 1
16 0
end_goal
261
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
drive-fire-unit f1 l1 l3
0
1
1
0 1 0 2
0
0
end_operator
begin_operator
drive-fire-unit f1 l1 l4
1
0 1
1
1
0 1 0 3
0
0
end_operator
begin_operator
drive-fire-unit f1 l1 l5
0
1
1
0 1 0 4
0
0
end_operator
begin_operator
drive-fire-unit f1 l2 l1
0
1
1
0 1 1 0
0
0
end_operator
begin_operator
drive-fire-unit f1 l2 l3
0
1
1
0 1 1 2
0
0
end_operator
begin_operator
drive-fire-unit f1 l2 l4
1
0 1
1
1
0 1 1 3
0
0
end_operator
begin_operator
drive-fire-unit f1 l3 l1
0
1
1
0 1 2 0
0
0
end_operator
begin_operator
drive-fire-unit f1 l3 l2
0
1
1
0 1 2 1
0
0
end_operator
begin_operator
drive-fire-unit f1 l4 l1
0
1
1
0 1 3 0
0
0
end_operator
begin_operator
drive-fire-unit f1 l4 l2
0
1
1
0 1 3 1
0
0
end_operator
begin_operator
drive-fire-unit f1 l5 l1
0
1
1
0 1 4 0
0
0
end_operator
begin_operator
drive-fire-unit f2 l1 l2
0
1
1
0 2 0 1
0
0
end_operator
begin_operator
drive-fire-unit f2 l1 l3
0
1
1
0 2 0 2
0
0
end_operator
begin_operator
drive-fire-unit f2 l1 l4
1
0 1
1
1
0 2 0 3
0
0
end_operator
begin_operator
drive-fire-unit f2 l1 l5
0
1
1
0 2 0 4
0
0
end_operator
begin_operator
drive-fire-unit f2 l2 l1
0
1
1
0 2 1 0
0
0
end_operator
begin_operator
drive-fire-unit f2 l2 l3
0
1
1
0 2 1 2
0
0
end_operator
begin_operator
drive-fire-unit f2 l2 l4
1
0 1
1
1
0 2 1 3
0
0
end_operator
begin_operator
drive-fire-unit f2 l3 l1
0
1
1
0 2 2 0
0
0
end_operator
begin_operator
drive-fire-unit f2 l3 l2
0
1
1
0 2 2 1
0
0
end_operator
begin_operator
drive-fire-unit f2 l4 l1
0
1
1
0 2 3 0
0
0
end_operator
begin_operator
drive-fire-unit f2 l4 l2
0
1
1
0 2 3 1
0
0
end_operator
begin_operator
drive-fire-unit f2 l5 l1
0
1
1
0 2 4 0
0
0
end_operator
begin_operator
drive-fire-unit f3 l1 l2
0
1
1
0 3 0 1
0
0
end_operator
begin_operator
drive-fire-unit f3 l1 l3
0
1
1
0 3 0 2
0
0
end_operator
begin_operator
drive-fire-unit f3 l1 l4
1
0 1
1
1
0 3 0 3
0
0
end_operator
begin_operator
drive-fire-unit f3 l1 l5
0
1
1
0 3 0 4
0
0
end_operator
begin_operator
drive-fire-unit f3 l2 l1
0
1
1
0 3 1 0
0
0
end_operator
begin_operator
drive-fire-unit f3 l2 l3
0
1
1
0 3 1 2
0
0
end_operator
begin_operator
drive-fire-unit f3 l2 l4
1
0 1
1
1
0 3 1 3
0
0
end_operator
begin_operator
drive-fire-unit f3 l3 l1
0
1
1
0 3 2 0
0
0
end_operator
begin_operator
drive-fire-unit f3 l3 l2
0
1
1
0 3 2 1
0
0
end_operator
begin_operator
drive-fire-unit f3 l4 l1
0
1
1
0 3 3 0
0
0
end_operator
begin_operator
drive-fire-unit f3 l4 l2
0
1
1
0 3 3 1
0
0
end_operator
begin_operator
drive-fire-unit f3 l5 l1
0
1
1
0 3 4 0
0
0
end_operator
begin_operator
drive-fire-unit f4 l1 l2
0
1
1
0 4 0 1
0
0
end_operator
begin_operator
drive-fire-unit f4 l1 l3
0
1
1
0 4 0 2
0
0
end_operator
begin_operator
drive-fire-unit f4 l1 l4
1
0 1
1
1
0 4 0 3
0
0
end_operator
begin_operator
drive-fire-unit f4 l1 l5
0
1
1
0 4 0 4
0
0
end_operator
begin_operator
drive-fire-unit f4 l2 l1
0
1
1
0 4 1 0
0
0
end_operator
begin_operator
drive-fire-unit f4 l2 l3
0
1
1
0 4 1 2
0
0
end_operator
begin_operator
drive-fire-unit f4 l2 l4
1
0 1
1
1
0 4 1 3
0
0
end_operator
begin_operator
drive-fire-unit f4 l3 l1
0
1
1
0 4 2 0
0
0
end_operator
begin_operator
drive-fire-unit f4 l3 l2
0
1
1
0 4 2 1
0
0
end_operator
begin_operator
drive-fire-unit f4 l4 l1
0
1
1
0 4 3 0
0
0
end_operator
begin_operator
drive-fire-unit f4 l4 l2
0
1
1
0 4 3 1
0
0
end_operator
begin_operator
drive-fire-unit f4 l5 l1
0
1
1
0 4 4 0
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l2
0
1
1
0 10 0 1
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l3
0
1
1
0 10 0 2
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l4
1
0 1
1
1
0 10 0 3
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l5
0
1
1
0 10 0 4
0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l1
0
1
1
0 10 1 0
0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l3
0
1
1
0 10 1 2
0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l4
1
0 1
1
1
0 10 1 3
0
0
end_operator
begin_operator
drive-medical-unit m1 l3 l1
0
1
1
0 10 2 0
0
0
end_operator
begin_operator
drive-medical-unit m1 l3 l2
0
1
1
0 10 2 1
0
0
end_operator
begin_operator
drive-medical-unit m1 l4 l1
0
1
1
0 10 3 0
0
0
end_operator
begin_operator
drive-medical-unit m1 l4 l2
0
1
1
0 10 3 1
0
0
end_operator
begin_operator
drive-medical-unit m1 l5 l1
0
1
1
0 10 4 0
0
0
end_operator
begin_operator
drive-medical-unit m2 l1 l2
0
1
1
0 11 0 1
0
0
end_operator
begin_operator
drive-medical-unit m2 l1 l3
0
1
1
0 11 0 2
0
0
end_operator
begin_operator
drive-medical-unit m2 l1 l4
1
0 1
1
1
0 11 0 3
0
0
end_operator
begin_operator
drive-medical-unit m2 l1 l5
0
1
1
0 11 0 4
0
0
end_operator
begin_operator
drive-medical-unit m2 l2 l1
0
1
1
0 11 1 0
0
0
end_operator
begin_operator
drive-medical-unit m2 l2 l3
0
1
1
0 11 1 2
0
0
end_operator
begin_operator
drive-medical-unit m2 l2 l4
1
0 1
1
1
0 11 1 3
0
0
end_operator
begin_operator
drive-medical-unit m2 l3 l1
0
1
1
0 11 2 0
0
0
end_operator
begin_operator
drive-medical-unit m2 l3 l2
0
1
1
0 11 2 1
0
0
end_operator
begin_operator
drive-medical-unit m2 l4 l1
0
1
1
0 11 3 0
0
0
end_operator
begin_operator
drive-medical-unit m2 l4 l2
0
1
1
0 11 3 1
0
0
end_operator
begin_operator
drive-medical-unit m2 l5 l1
0
1
1
0 11 4 0
0
0
end_operator
begin_operator
drive-medical-unit m3 l1 l2
0
1
1
0 12 0 1
0
0
end_operator
begin_operator
drive-medical-unit m3 l1 l3
0
1
1
0 12 0 2
0
0
end_operator
begin_operator
drive-medical-unit m3 l1 l4
1
0 1
1
1
0 12 0 3
0
0
end_operator
begin_operator
drive-medical-unit m3 l1 l5
0
1
1
0 12 0 4
0
0
end_operator
begin_operator
drive-medical-unit m3 l2 l1
0
1
1
0 12 1 0
0
0
end_operator
begin_operator
drive-medical-unit m3 l2 l3
0
1
1
0 12 1 2
0
0
end_operator
begin_operator
drive-medical-unit m3 l2 l4
1
0 1
1
1
0 12 1 3
0
0
end_operator
begin_operator
drive-medical-unit m3 l3 l1
0
1
1
0 12 2 0
0
0
end_operator
begin_operator
drive-medical-unit m3 l3 l2
0
1
1
0 12 2 1
0
0
end_operator
begin_operator
drive-medical-unit m3 l4 l1
0
1
1
0 12 3 0
0
0
end_operator
begin_operator
drive-medical-unit m3 l4 l2
0
1
1
0 12 3 1
0
0
end_operator
begin_operator
drive-medical-unit m3 l5 l1
0
1
1
0 12 4 0
0
0
end_operator
begin_operator
drive-medical-unit m4 l1 l2
0
1
1
0 13 0 1
0
0
end_operator
begin_operator
drive-medical-unit m4 l1 l3
0
1
1
0 13 0 2
0
0
end_operator
begin_operator
drive-medical-unit m4 l1 l4
1
0 1
1
1
0 13 0 3
0
0
end_operator
begin_operator
drive-medical-unit m4 l1 l5
0
1
1
0 13 0 4
0
0
end_operator
begin_operator
drive-medical-unit m4 l2 l1
0
1
1
0 13 1 0
0
0
end_operator
begin_operator
drive-medical-unit m4 l2 l3
0
1
1
0 13 1 2
0
0
end_operator
begin_operator
drive-medical-unit m4 l2 l4
1
0 1
1
1
0 13 1 3
0
0
end_operator
begin_operator
drive-medical-unit m4 l3 l1
0
1
1
0 13 2 0
0
0
end_operator
begin_operator
drive-medical-unit m4 l3 l2
0
1
1
0 13 2 1
0
0
end_operator
begin_operator
drive-medical-unit m4 l4 l1
0
1
1
0 13 3 0
0
0
end_operator
begin_operator
drive-medical-unit m4 l4 l2
0
1
1
0 13 3 1
0
0
end_operator
begin_operator
drive-medical-unit m4 l5 l1
0
1
1
0 13 4 0
0
0
end_operator
begin_operator
drive-medical-unit m5 l1 l2
0
1
1
0 14 0 1
0
0
end_operator
begin_operator
drive-medical-unit m5 l1 l3
0
1
1
0 14 0 2
0
0
end_operator
begin_operator
drive-medical-unit m5 l1 l4
1
0 1
1
1
0 14 0 3
0
0
end_operator
begin_operator
drive-medical-unit m5 l1 l5
0
1
1
0 14 0 4
0
0
end_operator
begin_operator
drive-medical-unit m5 l2 l1
0
1
1
0 14 1 0
0
0
end_operator
begin_operator
drive-medical-unit m5 l2 l3
0
1
1
0 14 1 2
0
0
end_operator
begin_operator
drive-medical-unit m5 l2 l4
1
0 1
1
1
0 14 1 3
0
0
end_operator
begin_operator
drive-medical-unit m5 l3 l1
0
1
1
0 14 2 0
0
0
end_operator
begin_operator
drive-medical-unit m5 l3 l2
0
1
1
0 14 2 1
0
0
end_operator
begin_operator
drive-medical-unit m5 l4 l1
0
1
1
0 14 3 0
0
0
end_operator
begin_operator
drive-medical-unit m5 l4 l2
0
1
1
0 14 3 1
0
0
end_operator
begin_operator
drive-medical-unit m5 l5 l1
0
1
1
0 14 4 0
0
0
end_operator
begin_operator
load-fire-unit f1 l2
1
1 1
1
1
0 6 -1 0
0
0
end_operator
begin_operator
load-fire-unit f1 l3
1
1 2
1
1
0 6 -1 0
0
0
end_operator
begin_operator
load-fire-unit f1 l4
1
1 3
1
1
0 6 -1 0
0
0
end_operator
begin_operator
load-fire-unit f1 l5
1
1 4
1
1
0 6 -1 0
0
0
end_operator
begin_operator
load-fire-unit f2 l2
1
2 1
1
1
0 7 -1 0
0
0
end_operator
begin_operator
load-fire-unit f2 l3
1
2 2
1
1
0 7 -1 0
0
0
end_operator
begin_operator
load-fire-unit f2 l4
1
2 3
1
1
0 7 -1 0
0
0
end_operator
begin_operator
load-fire-unit f2 l5
1
2 4
1
1
0 7 -1 0
0
0
end_operator
begin_operator
load-fire-unit f3 l2
1
3 1
1
1
0 8 -1 0
0
0
end_operator
begin_operator
load-fire-unit f3 l3
1
3 2
1
1
0 8 -1 0
0
0
end_operator
begin_operator
load-fire-unit f3 l4
1
3 3
1
1
0 8 -1 0
0
0
end_operator
begin_operator
load-fire-unit f3 l5
1
3 4
1
1
0 8 -1 0
0
0
end_operator
begin_operator
load-fire-unit f4 l2
1
4 1
1
1
0 9 -1 0
0
0
end_operator
begin_operator
load-fire-unit f4 l3
1
4 2
1
1
0 9 -1 0
0
0
end_operator
begin_operator
load-fire-unit f4 l4
1
4 3
1
1
0 9 -1 0
0
0
end_operator
begin_operator
load-fire-unit f4 l5
1
4 4
1
1
0 9 -1 0
0
0
end_operator
begin_operator
load-medical-unit m1 l1 v1
1
10 0
1
1
0 5 5 0
0
0
end_operator
begin_operator
load-medical-unit m1 l2 v1
1
10 1
1
1
0 5 6 0
0
0
end_operator
begin_operator
load-medical-unit m1 l3 v1
1
10 2
1
1
0 5 7 0
0
0
end_operator
begin_operator
load-medical-unit m1 l4 v1
1
10 3
1
1
0 5 8 0
0
0
end_operator
begin_operator
load-medical-unit m1 l5 v1
1
10 4
1
1
0 5 9 0
0
0
end_operator
begin_operator
load-medical-unit m2 l1 v1
1
11 0
1
1
0 5 5 1
0
0
end_operator
begin_operator
load-medical-unit m2 l2 v1
1
11 1
1
1
0 5 6 1
0
0
end_operator
begin_operator
load-medical-unit m2 l3 v1
1
11 2
1
1
0 5 7 1
0
0
end_operator
begin_operator
load-medical-unit m2 l4 v1
1
11 3
1
1
0 5 8 1
0
0
end_operator
begin_operator
load-medical-unit m2 l5 v1
1
11 4
1
1
0 5 9 1
0
0
end_operator
begin_operator
load-medical-unit m3 l1 v1
1
12 0
1
1
0 5 5 2
0
0
end_operator
begin_operator
load-medical-unit m3 l2 v1
1
12 1
1
1
0 5 6 2
0
0
end_operator
begin_operator
load-medical-unit m3 l3 v1
1
12 2
1
1
0 5 7 2
0
0
end_operator
begin_operator
load-medical-unit m3 l4 v1
1
12 3
1
1
0 5 8 2
0
0
end_operator
begin_operator
load-medical-unit m3 l5 v1
1
12 4
1
1
0 5 9 2
0
0
end_operator
begin_operator
load-medical-unit m4 l1 v1
1
13 0
1
1
0 5 5 3
0
0
end_operator
begin_operator
load-medical-unit m4 l2 v1
1
13 1
1
1
0 5 6 3
0
0
end_operator
begin_operator
load-medical-unit m4 l3 v1
1
13 2
1
1
0 5 7 3
0
0
end_operator
begin_operator
load-medical-unit m4 l4 v1
1
13 3
1
1
0 5 8 3
0
0
end_operator
begin_operator
load-medical-unit m4 l5 v1
1
13 4
1
1
0 5 9 3
0
0
end_operator
begin_operator
load-medical-unit m5 l1 v1
1
14 0
1
1
0 5 5 4
0
0
end_operator
begin_operator
load-medical-unit m5 l2 v1
1
14 1
1
1
0 5 6 4
0
0
end_operator
begin_operator
load-medical-unit m5 l3 v1
1
14 2
1
1
0 5 7 4
0
0
end_operator
begin_operator
load-medical-unit m5 l4 v1
1
14 3
1
1
0 5 8 4
0
0
end_operator
begin_operator
load-medical-unit m5 l5 v1
1
14 4
1
1
0 5 9 4
0
0
end_operator
begin_operator
sensefirefire f1 l1 l4
1
1 0
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f1 l2 l4
1
1 1
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f1 l4 l4
1
1 3
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f2 l1 l4
1
2 0
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f2 l2 l4
1
2 1
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f2 l4 l4
1
2 3
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f3 l1 l4
1
3 0
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f3 l2 l4
1
3 1
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f3 l4 l4
1
3 3
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f4 l1 l4
1
4 0
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f4 l2 l4
1
4 1
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f4 l4 l4
1
4 3
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m1 l1 l4
1
10 0
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m1 l2 l4
1
10 1
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m1 l4 l4
1
10 3
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m2 l1 l4
1
11 0
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m2 l2 l4
1
11 1
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m2 l4 l4
1
11 3
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m3 l1 l4
1
12 0
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m3 l2 l4
1
12 1
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m3 l4 l4
1
12 3
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m4 l1 l4
1
13 0
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m4 l2 l4
1
13 1
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m4 l4 l4
1
13 3
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m5 l1 l4
1
14 0
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m5 l2 l4
1
14 1
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m5 l4 l4
1
14 3
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
5 5
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f1 l2 v1
2
1 1
5 6
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f1 l3 v1
2
1 2
5 7
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f1 l4 v1
2
1 3
5 8
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f1 l5 v1
2
1 4
5 9
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f2 l1 v1
2
2 0
5 5
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f2 l2 v1
2
2 1
5 6
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f2 l3 v1
2
2 2
5 7
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f2 l4 v1
2
2 3
5 8
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f2 l5 v1
2
2 4
5 9
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f3 l1 v1
2
3 0
5 5
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f3 l2 v1
2
3 1
5 6
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f3 l3 v1
2
3 2
5 7
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f3 l4 v1
2
3 3
5 8
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f3 l5 v1
2
3 4
5 9
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f4 l1 v1
2
4 0
5 5
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f4 l2 v1
2
4 1
5 6
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f4 l3 v1
2
4 2
5 7
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f4 l4 v1
2
4 3
5 8
1
0
0
1
16 0
end_operator
begin_operator
sensehealthyfire f4 l5 v1
2
4 4
5 9
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m1 l1 v1
2
5 5
10 0
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m1 l2 v1
2
5 6
10 1
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m1 l3 v1
2
5 7
10 2
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m1 l4 v1
2
5 8
10 3
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m1 l5 v1
2
5 9
10 4
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m2 l1 v1
2
5 5
11 0
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m2 l2 v1
2
5 6
11 1
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m2 l3 v1
2
5 7
11 2
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m2 l4 v1
2
5 8
11 3
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m2 l5 v1
2
5 9
11 4
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m3 l1 v1
2
5 5
12 0
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m3 l2 v1
2
5 6
12 1
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m3 l3 v1
2
5 7
12 2
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m3 l4 v1
2
5 8
12 3
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m3 l5 v1
2
5 9
12 4
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m4 l1 v1
2
5 5
13 0
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m4 l2 v1
2
5 6
13 1
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m4 l3 v1
2
5 7
13 2
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m4 l4 v1
2
5 8
13 3
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m4 l5 v1
2
5 9
13 4
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m5 l1 v1
2
5 5
14 0
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m5 l2 v1
2
5 6
14 1
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m5 l3 v1
2
5 7
14 2
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m5 l4 v1
2
5 8
14 3
1
0
0
1
16 0
end_operator
begin_operator
sensehealthymedical m5 l5 v1
2
5 9
14 4
1
0
0
1
16 0
end_operator
begin_operator
treat-victim-at-hospital v1 l2
1
5 6
1
2
0 15 -1 1
0 16 -1 0
0
0
end_operator
begin_operator
treat-victim-at-hospital v1 l3
1
5 7
1
2
0 15 -1 1
0 16 -1 0
0
0
end_operator
begin_operator
treat-victim-at-hospital v1 l5
1
5 9
1
2
0 15 -1 1
0 16 -1 0
0
0
end_operator
begin_operator
unload-fire-unit f1 l1 l4
2
0 0
1 0
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
unload-fire-unit f1 l2 l4
2
0 0
1 1
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
unload-fire-unit f1 l4 l4
2
0 0
1 3
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
unload-fire-unit f2 l1 l4
2
0 0
2 0
2
2
0 0 0 1
0 7 0 1
1
0 7 0 1
0
0
end_operator
begin_operator
unload-fire-unit f2 l2 l4
2
0 0
2 1
2
2
0 0 0 1
0 7 0 1
1
0 7 0 1
0
0
end_operator
begin_operator
unload-fire-unit f2 l4 l4
2
0 0
2 3
2
2
0 0 0 1
0 7 0 1
1
0 7 0 1
0
0
end_operator
begin_operator
unload-fire-unit f3 l1 l4
2
0 0
3 0
2
2
0 0 0 1
0 8 0 1
1
0 8 0 1
0
0
end_operator
begin_operator
unload-fire-unit f3 l2 l4
2
0 0
3 1
2
2
0 0 0 1
0 8 0 1
1
0 8 0 1
0
0
end_operator
begin_operator
unload-fire-unit f3 l4 l4
2
0 0
3 3
2
2
0 0 0 1
0 8 0 1
1
0 8 0 1
0
0
end_operator
begin_operator
unload-fire-unit f4 l1 l4
2
0 0
4 0
2
2
0 0 0 1
0 9 0 1
1
0 9 0 1
0
0
end_operator
begin_operator
unload-fire-unit f4 l2 l4
2
0 0
4 1
2
2
0 0 0 1
0 9 0 1
1
0 9 0 1
0
0
end_operator
begin_operator
unload-fire-unit f4 l4 l4
2
0 0
4 3
2
2
0 0 0 1
0 9 0 1
1
0 9 0 1
0
0
end_operator
begin_operator
unload-medical-unit m1 l1 v1
1
10 0
1
1
0 5 0 5
0
0
end_operator
begin_operator
unload-medical-unit m1 l2 v1
1
10 1
1
1
0 5 0 6
0
0
end_operator
begin_operator
unload-medical-unit m1 l3 v1
1
10 2
1
1
0 5 0 7
0
0
end_operator
begin_operator
unload-medical-unit m1 l4 v1
1
10 3
1
1
0 5 0 8
0
0
end_operator
begin_operator
unload-medical-unit m1 l5 v1
1
10 4
1
1
0 5 0 9
0
0
end_operator
begin_operator
unload-medical-unit m2 l1 v1
1
11 0
1
1
0 5 1 5
0
0
end_operator
begin_operator
unload-medical-unit m2 l2 v1
1
11 1
1
1
0 5 1 6
0
0
end_operator
begin_operator
unload-medical-unit m2 l3 v1
1
11 2
1
1
0 5 1 7
0
0
end_operator
begin_operator
unload-medical-unit m2 l4 v1
1
11 3
1
1
0 5 1 8
0
0
end_operator
begin_operator
unload-medical-unit m2 l5 v1
1
11 4
1
1
0 5 1 9
0
0
end_operator
begin_operator
unload-medical-unit m3 l1 v1
1
12 0
1
1
0 5 2 5
0
0
end_operator
begin_operator
unload-medical-unit m3 l2 v1
1
12 1
1
1
0 5 2 6
0
0
end_operator
begin_operator
unload-medical-unit m3 l3 v1
1
12 2
1
1
0 5 2 7
0
0
end_operator
begin_operator
unload-medical-unit m3 l4 v1
1
12 3
1
1
0 5 2 8
0
0
end_operator
begin_operator
unload-medical-unit m3 l5 v1
1
12 4
1
1
0 5 2 9
0
0
end_operator
begin_operator
unload-medical-unit m4 l1 v1
1
13 0
1
1
0 5 3 5
0
0
end_operator
begin_operator
unload-medical-unit m4 l2 v1
1
13 1
1
1
0 5 3 6
0
0
end_operator
begin_operator
unload-medical-unit m4 l3 v1
1
13 2
1
1
0 5 3 7
0
0
end_operator
begin_operator
unload-medical-unit m4 l4 v1
1
13 3
1
1
0 5 3 8
0
0
end_operator
begin_operator
unload-medical-unit m4 l5 v1
1
13 4
1
1
0 5 3 9
0
0
end_operator
begin_operator
unload-medical-unit m5 l1 v1
1
14 0
1
1
0 5 4 5
0
0
end_operator
begin_operator
unload-medical-unit m5 l2 v1
1
14 1
1
1
0 5 4 6
0
0
end_operator
begin_operator
unload-medical-unit m5 l3 v1
1
14 2
1
1
0 5 4 7
0
0
end_operator
begin_operator
unload-medical-unit m5 l4 v1
1
14 3
1
1
0 5 4 8
0
0
end_operator
begin_operator
unload-medical-unit m5 l5 v1
1
14 4
1
1
0 5 4 9
0
0
end_operator
0
