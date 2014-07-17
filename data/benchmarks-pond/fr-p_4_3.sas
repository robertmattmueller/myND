begin_version
3.POND
end_version
begin_metric
0
end_metric
16
begin_variable
var0
-1
2
Atom fire(l3)
Atom nfire(l3)
end_variable
begin_variable
var1
-1
2
Atom fire(l4)
Atom nfire(l4)
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
7
Atom have-victim-in-unit(v1, m1)
Atom have-victim-in-unit(v1, m2)
Atom have-victim-in-unit(v1, m3)
Atom victim-at(v1, l1)
Atom victim-at(v1, l2)
Atom victim-at(v1, l3)
Atom victim-at(v1, l4)
end_variable
begin_variable
var4
-1
7
Atom have-victim-in-unit(v2, m1)
Atom have-victim-in-unit(v2, m2)
Atom have-victim-in-unit(v2, m3)
Atom victim-at(v2, l1)
Atom victim-at(v2, l2)
Atom victim-at(v2, l3)
Atom victim-at(v2, l4)
end_variable
begin_variable
var5
-1
7
Atom have-victim-in-unit(v3, m1)
Atom have-victim-in-unit(v3, m2)
Atom have-victim-in-unit(v3, m3)
Atom victim-at(v3, l1)
Atom victim-at(v3, l2)
Atom victim-at(v3, l3)
Atom victim-at(v3, l4)
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
4
Atom medical-unit-at(m1, l1)
Atom medical-unit-at(m1, l2)
Atom medical-unit-at(m1, l3)
Atom medical-unit-at(m1, l4)
end_variable
begin_variable
var8
-1
4
Atom medical-unit-at(m2, l1)
Atom medical-unit-at(m2, l2)
Atom medical-unit-at(m2, l3)
Atom medical-unit-at(m2, l4)
end_variable
begin_variable
var9
-1
4
Atom medical-unit-at(m3, l1)
Atom medical-unit-at(m3, l2)
Atom medical-unit-at(m3, l3)
Atom medical-unit-at(m3, l4)
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
begin_variable
var14
-1
2
Atom victim-status(v3, healthy)
NegatedAtom victim-status(v3, healthy)
end_variable
begin_variable
var15
-1
2
Atom victim-status(v3, hurt)
NegatedAtom victim-status(v3, hurt)
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
4
2 0
2 1
2 2
2 3
end_mutex_group
begin_mutex_group
7
3 0
3 1
3 2
3 3
3 4
3 5
3 6
end_mutex_group
begin_mutex_group
7
4 0
4 1
4 2
4 3
4 4
4 5
4 6
end_mutex_group
begin_mutex_group
7
5 0
5 1
5 2
5 3
5 4
5 5
5 6
end_mutex_group
begin_mutex_group
4
7 0
7 1
7 2
7 3
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
begin_state
16
0 0
1 0
2 3
7 0
8 0
9 1
3 3
4 6
5 6
10 0
12 0
15 0
6 1
11 1
13 1
14 1
0
0
end_state
begin_goal
5
0 1
1 1
11 0
13 0
14 0
end_goal
216
begin_operator
drive-fire-unit f1 l1 l2
0
1
1
0 2 0 1
0
0
end_operator
begin_operator
drive-fire-unit f1 l1 l3
1
0 1
1
1
0 2 0 2
0
0
end_operator
begin_operator
drive-fire-unit f1 l1 l4
1
1 1
1
1
0 2 0 3
0
0
end_operator
begin_operator
drive-fire-unit f1 l2 l1
0
1
1
0 2 1 0
0
0
end_operator
begin_operator
drive-fire-unit f1 l2 l3
1
0 1
1
1
0 2 1 2
0
0
end_operator
begin_operator
drive-fire-unit f1 l3 l1
0
1
1
0 2 2 0
0
0
end_operator
begin_operator
drive-fire-unit f1 l3 l2
0
1
1
0 2 2 1
0
0
end_operator
begin_operator
drive-fire-unit f1 l4 l1
0
1
1
0 2 3 0
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l2
0
1
1
0 7 0 1
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l3
1
0 1
1
1
0 7 0 2
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l4
1
1 1
1
1
0 7 0 3
0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l1
0
1
1
0 7 1 0
0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l3
1
0 1
1
1
0 7 1 2
0
0
end_operator
begin_operator
drive-medical-unit m1 l3 l1
0
1
1
0 7 2 0
0
0
end_operator
begin_operator
drive-medical-unit m1 l3 l2
0
1
1
0 7 2 1
0
0
end_operator
begin_operator
drive-medical-unit m1 l4 l1
0
1
1
0 7 3 0
0
0
end_operator
begin_operator
drive-medical-unit m2 l1 l2
0
1
1
0 8 0 1
0
0
end_operator
begin_operator
drive-medical-unit m2 l1 l3
1
0 1
1
1
0 8 0 2
0
0
end_operator
begin_operator
drive-medical-unit m2 l1 l4
1
1 1
1
1
0 8 0 3
0
0
end_operator
begin_operator
drive-medical-unit m2 l2 l1
0
1
1
0 8 1 0
0
0
end_operator
begin_operator
drive-medical-unit m2 l2 l3
1
0 1
1
1
0 8 1 2
0
0
end_operator
begin_operator
drive-medical-unit m2 l3 l1
0
1
1
0 8 2 0
0
0
end_operator
begin_operator
drive-medical-unit m2 l3 l2
0
1
1
0 8 2 1
0
0
end_operator
begin_operator
drive-medical-unit m2 l4 l1
0
1
1
0 8 3 0
0
0
end_operator
begin_operator
drive-medical-unit m3 l1 l2
0
1
1
0 9 0 1
0
0
end_operator
begin_operator
drive-medical-unit m3 l1 l3
1
0 1
1
1
0 9 0 2
0
0
end_operator
begin_operator
drive-medical-unit m3 l1 l4
1
1 1
1
1
0 9 0 3
0
0
end_operator
begin_operator
drive-medical-unit m3 l2 l1
0
1
1
0 9 1 0
0
0
end_operator
begin_operator
drive-medical-unit m3 l2 l3
1
0 1
1
1
0 9 1 2
0
0
end_operator
begin_operator
drive-medical-unit m3 l3 l1
0
1
1
0 9 2 0
0
0
end_operator
begin_operator
drive-medical-unit m3 l3 l2
0
1
1
0 9 2 1
0
0
end_operator
begin_operator
drive-medical-unit m3 l4 l1
0
1
1
0 9 3 0
0
0
end_operator
begin_operator
load-fire-unit f1 l4
1
2 3
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
0 3 3 0
0
0
end_operator
begin_operator
load-medical-unit m1 l1 v2
1
7 0
1
1
0 4 3 0
0
0
end_operator
begin_operator
load-medical-unit m1 l1 v3
1
7 0
1
1
0 5 3 0
0
0
end_operator
begin_operator
load-medical-unit m1 l2 v1
1
7 1
1
1
0 3 4 0
0
0
end_operator
begin_operator
load-medical-unit m1 l2 v2
1
7 1
1
1
0 4 4 0
0
0
end_operator
begin_operator
load-medical-unit m1 l2 v3
1
7 1
1
1
0 5 4 0
0
0
end_operator
begin_operator
load-medical-unit m1 l3 v1
1
7 2
1
1
0 3 5 0
0
0
end_operator
begin_operator
load-medical-unit m1 l3 v2
1
7 2
1
1
0 4 5 0
0
0
end_operator
begin_operator
load-medical-unit m1 l3 v3
1
7 2
1
1
0 5 5 0
0
0
end_operator
begin_operator
load-medical-unit m1 l4 v1
1
7 3
1
1
0 3 6 0
0
0
end_operator
begin_operator
load-medical-unit m1 l4 v2
1
7 3
1
1
0 4 6 0
0
0
end_operator
begin_operator
load-medical-unit m1 l4 v3
1
7 3
1
1
0 5 6 0
0
0
end_operator
begin_operator
load-medical-unit m2 l1 v1
1
8 0
1
1
0 3 3 1
0
0
end_operator
begin_operator
load-medical-unit m2 l1 v2
1
8 0
1
1
0 4 3 1
0
0
end_operator
begin_operator
load-medical-unit m2 l1 v3
1
8 0
1
1
0 5 3 1
0
0
end_operator
begin_operator
load-medical-unit m2 l2 v1
1
8 1
1
1
0 3 4 1
0
0
end_operator
begin_operator
load-medical-unit m2 l2 v2
1
8 1
1
1
0 4 4 1
0
0
end_operator
begin_operator
load-medical-unit m2 l2 v3
1
8 1
1
1
0 5 4 1
0
0
end_operator
begin_operator
load-medical-unit m2 l3 v1
1
8 2
1
1
0 3 5 1
0
0
end_operator
begin_operator
load-medical-unit m2 l3 v2
1
8 2
1
1
0 4 5 1
0
0
end_operator
begin_operator
load-medical-unit m2 l3 v3
1
8 2
1
1
0 5 5 1
0
0
end_operator
begin_operator
load-medical-unit m2 l4 v1
1
8 3
1
1
0 3 6 1
0
0
end_operator
begin_operator
load-medical-unit m2 l4 v2
1
8 3
1
1
0 4 6 1
0
0
end_operator
begin_operator
load-medical-unit m2 l4 v3
1
8 3
1
1
0 5 6 1
0
0
end_operator
begin_operator
load-medical-unit m3 l1 v1
1
9 0
1
1
0 3 3 2
0
0
end_operator
begin_operator
load-medical-unit m3 l1 v2
1
9 0
1
1
0 4 3 2
0
0
end_operator
begin_operator
load-medical-unit m3 l1 v3
1
9 0
1
1
0 5 3 2
0
0
end_operator
begin_operator
load-medical-unit m3 l2 v1
1
9 1
1
1
0 3 4 2
0
0
end_operator
begin_operator
load-medical-unit m3 l2 v2
1
9 1
1
1
0 4 4 2
0
0
end_operator
begin_operator
load-medical-unit m3 l2 v3
1
9 1
1
1
0 5 4 2
0
0
end_operator
begin_operator
load-medical-unit m3 l3 v1
1
9 2
1
1
0 3 5 2
0
0
end_operator
begin_operator
load-medical-unit m3 l3 v2
1
9 2
1
1
0 4 5 2
0
0
end_operator
begin_operator
load-medical-unit m3 l3 v3
1
9 2
1
1
0 5 5 2
0
0
end_operator
begin_operator
load-medical-unit m3 l4 v1
1
9 3
1
1
0 3 6 2
0
0
end_operator
begin_operator
load-medical-unit m3 l4 v2
1
9 3
1
1
0 4 6 2
0
0
end_operator
begin_operator
load-medical-unit m3 l4 v3
1
9 3
1
1
0 5 6 2
0
0
end_operator
begin_operator
sensefirefire f1 l1 l3
1
2 0
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f1 l1 l4
1
2 0
1
0
0
1
1 0
end_operator
begin_operator
sensefirefire f1 l2 l3
1
2 1
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f1 l3 l3
1
2 2
1
0
0
1
0 0
end_operator
begin_operator
sensefirefire f1 l4 l4
1
2 3
1
0
0
1
1 0
end_operator
begin_operator
sensefiremedical m1 l1 l3
1
7 0
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m1 l1 l4
1
7 0
1
0
0
1
1 0
end_operator
begin_operator
sensefiremedical m1 l2 l3
1
7 1
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m1 l3 l3
1
7 2
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m1 l4 l4
1
7 3
1
0
0
1
1 0
end_operator
begin_operator
sensefiremedical m2 l1 l3
1
8 0
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m2 l1 l4
1
8 0
1
0
0
1
1 0
end_operator
begin_operator
sensefiremedical m2 l2 l3
1
8 1
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m2 l3 l3
1
8 2
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m2 l4 l4
1
8 3
1
0
0
1
1 0
end_operator
begin_operator
sensefiremedical m3 l1 l3
1
9 0
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m3 l1 l4
1
9 0
1
0
0
1
1 0
end_operator
begin_operator
sensefiremedical m3 l2 l3
1
9 1
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m3 l3 l3
1
9 2
1
0
0
1
0 0
end_operator
begin_operator
sensefiremedical m3 l4 l4
1
9 3
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
3 3
1
0
0
1
11 0
end_operator
begin_operator
sensehealthyfire f1 l1 v2
2
2 0
4 3
1
0
0
1
13 0
end_operator
begin_operator
sensehealthyfire f1 l1 v3
2
2 0
5 3
1
0
0
1
14 0
end_operator
begin_operator
sensehealthyfire f1 l2 v1
2
2 1
3 4
1
0
0
1
11 0
end_operator
begin_operator
sensehealthyfire f1 l2 v2
2
2 1
4 4
1
0
0
1
13 0
end_operator
begin_operator
sensehealthyfire f1 l2 v3
2
2 1
5 4
1
0
0
1
14 0
end_operator
begin_operator
sensehealthyfire f1 l3 v1
2
2 2
3 5
1
0
0
1
11 0
end_operator
begin_operator
sensehealthyfire f1 l3 v2
2
2 2
4 5
1
0
0
1
13 0
end_operator
begin_operator
sensehealthyfire f1 l3 v3
2
2 2
5 5
1
0
0
1
14 0
end_operator
begin_operator
sensehealthyfire f1 l4 v1
2
2 3
3 6
1
0
0
1
11 0
end_operator
begin_operator
sensehealthyfire f1 l4 v2
2
2 3
4 6
1
0
0
1
13 0
end_operator
begin_operator
sensehealthyfire f1 l4 v3
2
2 3
5 6
1
0
0
1
14 0
end_operator
begin_operator
sensehealthymedical m1 l1 v1
2
3 3
7 0
1
0
0
1
11 0
end_operator
begin_operator
sensehealthymedical m1 l1 v2
2
4 3
7 0
1
0
0
1
13 0
end_operator
begin_operator
sensehealthymedical m1 l1 v3
2
5 3
7 0
1
0
0
1
14 0
end_operator
begin_operator
sensehealthymedical m1 l2 v1
2
3 4
7 1
1
0
0
1
11 0
end_operator
begin_operator
sensehealthymedical m1 l2 v2
2
4 4
7 1
1
0
0
1
13 0
end_operator
begin_operator
sensehealthymedical m1 l2 v3
2
5 4
7 1
1
0
0
1
14 0
end_operator
begin_operator
sensehealthymedical m1 l3 v1
2
3 5
7 2
1
0
0
1
11 0
end_operator
begin_operator
sensehealthymedical m1 l3 v2
2
4 5
7 2
1
0
0
1
13 0
end_operator
begin_operator
sensehealthymedical m1 l3 v3
2
5 5
7 2
1
0
0
1
14 0
end_operator
begin_operator
sensehealthymedical m1 l4 v1
2
3 6
7 3
1
0
0
1
11 0
end_operator
begin_operator
sensehealthymedical m1 l4 v2
2
4 6
7 3
1
0
0
1
13 0
end_operator
begin_operator
sensehealthymedical m1 l4 v3
2
5 6
7 3
1
0
0
1
14 0
end_operator
begin_operator
sensehealthymedical m2 l1 v1
2
3 3
8 0
1
0
0
1
11 0
end_operator
begin_operator
sensehealthymedical m2 l1 v2
2
4 3
8 0
1
0
0
1
13 0
end_operator
begin_operator
sensehealthymedical m2 l1 v3
2
5 3
8 0
1
0
0
1
14 0
end_operator
begin_operator
sensehealthymedical m2 l2 v1
2
3 4
8 1
1
0
0
1
11 0
end_operator
begin_operator
sensehealthymedical m2 l2 v2
2
4 4
8 1
1
0
0
1
13 0
end_operator
begin_operator
sensehealthymedical m2 l2 v3
2
5 4
8 1
1
0
0
1
14 0
end_operator
begin_operator
sensehealthymedical m2 l3 v1
2
3 5
8 2
1
0
0
1
11 0
end_operator
begin_operator
sensehealthymedical m2 l3 v2
2
4 5
8 2
1
0
0
1
13 0
end_operator
begin_operator
sensehealthymedical m2 l3 v3
2
5 5
8 2
1
0
0
1
14 0
end_operator
begin_operator
sensehealthymedical m2 l4 v1
2
3 6
8 3
1
0
0
1
11 0
end_operator
begin_operator
sensehealthymedical m2 l4 v2
2
4 6
8 3
1
0
0
1
13 0
end_operator
begin_operator
sensehealthymedical m2 l4 v3
2
5 6
8 3
1
0
0
1
14 0
end_operator
begin_operator
sensehealthymedical m3 l1 v1
2
3 3
9 0
1
0
0
1
11 0
end_operator
begin_operator
sensehealthymedical m3 l1 v2
2
4 3
9 0
1
0
0
1
13 0
end_operator
begin_operator
sensehealthymedical m3 l1 v3
2
5 3
9 0
1
0
0
1
14 0
end_operator
begin_operator
sensehealthymedical m3 l2 v1
2
3 4
9 1
1
0
0
1
11 0
end_operator
begin_operator
sensehealthymedical m3 l2 v2
2
4 4
9 1
1
0
0
1
13 0
end_operator
begin_operator
sensehealthymedical m3 l2 v3
2
5 4
9 1
1
0
0
1
14 0
end_operator
begin_operator
sensehealthymedical m3 l3 v1
2
3 5
9 2
1
0
0
1
11 0
end_operator
begin_operator
sensehealthymedical m3 l3 v2
2
4 5
9 2
1
0
0
1
13 0
end_operator
begin_operator
sensehealthymedical m3 l3 v3
2
5 5
9 2
1
0
0
1
14 0
end_operator
begin_operator
sensehealthymedical m3 l4 v1
2
3 6
9 3
1
0
0
1
11 0
end_operator
begin_operator
sensehealthymedical m3 l4 v2
2
4 6
9 3
1
0
0
1
13 0
end_operator
begin_operator
sensehealthymedical m3 l4 v3
2
5 6
9 3
1
0
0
1
14 0
end_operator
begin_operator
sensehurtfire f1 l1 v3
2
2 0
5 3
1
0
0
1
15 0
end_operator
begin_operator
sensehurtfire f1 l2 v3
2
2 1
5 4
1
0
0
1
15 0
end_operator
begin_operator
sensehurtfire f1 l3 v3
2
2 2
5 5
1
0
0
1
15 0
end_operator
begin_operator
sensehurtfire f1 l4 v3
2
2 3
5 6
1
0
0
1
15 0
end_operator
begin_operator
sensehurtmedical m1 l1 v3
2
5 3
7 0
1
0
0
1
15 0
end_operator
begin_operator
sensehurtmedical m1 l2 v3
2
5 4
7 1
1
0
0
1
15 0
end_operator
begin_operator
sensehurtmedical m1 l3 v3
2
5 5
7 2
1
0
0
1
15 0
end_operator
begin_operator
sensehurtmedical m1 l4 v3
2
5 6
7 3
1
0
0
1
15 0
end_operator
begin_operator
sensehurtmedical m2 l1 v3
2
5 3
8 0
1
0
0
1
15 0
end_operator
begin_operator
sensehurtmedical m2 l2 v3
2
5 4
8 1
1
0
0
1
15 0
end_operator
begin_operator
sensehurtmedical m2 l3 v3
2
5 5
8 2
1
0
0
1
15 0
end_operator
begin_operator
sensehurtmedical m2 l4 v3
2
5 6
8 3
1
0
0
1
15 0
end_operator
begin_operator
sensehurtmedical m3 l1 v3
2
5 3
9 0
1
0
0
1
15 0
end_operator
begin_operator
sensehurtmedical m3 l2 v3
2
5 4
9 1
1
0
0
1
15 0
end_operator
begin_operator
sensehurtmedical m3 l3 v3
2
5 5
9 2
1
0
0
1
15 0
end_operator
begin_operator
sensehurtmedical m3 l4 v3
2
5 6
9 3
1
0
0
1
15 0
end_operator
begin_operator
treat-victim-at-hospital v1 l1
1
3 3
1
2
0 10 -1 1
0 11 -1 0
0
0
end_operator
begin_operator
treat-victim-at-hospital v1 l4
1
3 6
1
2
0 10 -1 1
0 11 -1 0
0
0
end_operator
begin_operator
treat-victim-at-hospital v2 l1
1
4 3
1
2
0 12 -1 1
0 13 -1 0
0
0
end_operator
begin_operator
treat-victim-at-hospital v2 l4
1
4 6
1
2
0 12 -1 1
0 13 -1 0
0
0
end_operator
begin_operator
treat-victim-at-hospital v3 l1
1
5 3
1
2
0 14 -1 0
0 15 -1 1
0
0
end_operator
begin_operator
treat-victim-at-hospital v3 l4
1
5 6
1
2
0 14 -1 0
0 15 -1 1
0
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v3
3
2 0
5 3
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l2 v3
3
2 1
5 4
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l3 v3
3
2 2
5 5
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l4 v3
3
2 3
5 6
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v3
3
5 3
7 0
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v3
3
5 4
7 1
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l3 v3
3
5 5
7 2
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l4 v3
3
5 6
7 3
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l1 v3
3
5 3
8 0
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l2 v3
3
5 4
8 1
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l3 v3
3
5 5
8 2
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l4 v3
3
5 6
8 3
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l1 v3
3
5 3
9 0
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l2 v3
3
5 4
9 1
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l3 v3
3
5 5
9 2
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
0
end_operator
begin_operator
treat-victim-on-scene-medical m3 l4 v3
3
5 6
9 3
15 0
2
0
2
0 14 -1 0
0 15 0 1
0
0
end_operator
begin_operator
unload-fire-unit f1 l1 l3
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
unload-fire-unit f1 l1 l4
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
unload-fire-unit f1 l2 l3
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
unload-fire-unit f1 l3 l3
2
0 0
2 2
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
1 0
2 3
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
0 3 0 3
0
0
end_operator
begin_operator
unload-medical-unit m1 l1 v2
1
7 0
1
1
0 4 0 3
0
0
end_operator
begin_operator
unload-medical-unit m1 l1 v3
1
7 0
1
1
0 5 0 3
0
0
end_operator
begin_operator
unload-medical-unit m1 l2 v1
1
7 1
1
1
0 3 0 4
0
0
end_operator
begin_operator
unload-medical-unit m1 l2 v2
1
7 1
1
1
0 4 0 4
0
0
end_operator
begin_operator
unload-medical-unit m1 l2 v3
1
7 1
1
1
0 5 0 4
0
0
end_operator
begin_operator
unload-medical-unit m1 l3 v1
1
7 2
1
1
0 3 0 5
0
0
end_operator
begin_operator
unload-medical-unit m1 l3 v2
1
7 2
1
1
0 4 0 5
0
0
end_operator
begin_operator
unload-medical-unit m1 l3 v3
1
7 2
1
1
0 5 0 5
0
0
end_operator
begin_operator
unload-medical-unit m1 l4 v1
1
7 3
1
1
0 3 0 6
0
0
end_operator
begin_operator
unload-medical-unit m1 l4 v2
1
7 3
1
1
0 4 0 6
0
0
end_operator
begin_operator
unload-medical-unit m1 l4 v3
1
7 3
1
1
0 5 0 6
0
0
end_operator
begin_operator
unload-medical-unit m2 l1 v1
1
8 0
1
1
0 3 1 3
0
0
end_operator
begin_operator
unload-medical-unit m2 l1 v2
1
8 0
1
1
0 4 1 3
0
0
end_operator
begin_operator
unload-medical-unit m2 l1 v3
1
8 0
1
1
0 5 1 3
0
0
end_operator
begin_operator
unload-medical-unit m2 l2 v1
1
8 1
1
1
0 3 1 4
0
0
end_operator
begin_operator
unload-medical-unit m2 l2 v2
1
8 1
1
1
0 4 1 4
0
0
end_operator
begin_operator
unload-medical-unit m2 l2 v3
1
8 1
1
1
0 5 1 4
0
0
end_operator
begin_operator
unload-medical-unit m2 l3 v1
1
8 2
1
1
0 3 1 5
0
0
end_operator
begin_operator
unload-medical-unit m2 l3 v2
1
8 2
1
1
0 4 1 5
0
0
end_operator
begin_operator
unload-medical-unit m2 l3 v3
1
8 2
1
1
0 5 1 5
0
0
end_operator
begin_operator
unload-medical-unit m2 l4 v1
1
8 3
1
1
0 3 1 6
0
0
end_operator
begin_operator
unload-medical-unit m2 l4 v2
1
8 3
1
1
0 4 1 6
0
0
end_operator
begin_operator
unload-medical-unit m2 l4 v3
1
8 3
1
1
0 5 1 6
0
0
end_operator
begin_operator
unload-medical-unit m3 l1 v1
1
9 0
1
1
0 3 2 3
0
0
end_operator
begin_operator
unload-medical-unit m3 l1 v2
1
9 0
1
1
0 4 2 3
0
0
end_operator
begin_operator
unload-medical-unit m3 l1 v3
1
9 0
1
1
0 5 2 3
0
0
end_operator
begin_operator
unload-medical-unit m3 l2 v1
1
9 1
1
1
0 3 2 4
0
0
end_operator
begin_operator
unload-medical-unit m3 l2 v2
1
9 1
1
1
0 4 2 4
0
0
end_operator
begin_operator
unload-medical-unit m3 l2 v3
1
9 1
1
1
0 5 2 4
0
0
end_operator
begin_operator
unload-medical-unit m3 l3 v1
1
9 2
1
1
0 3 2 5
0
0
end_operator
begin_operator
unload-medical-unit m3 l3 v2
1
9 2
1
1
0 4 2 5
0
0
end_operator
begin_operator
unload-medical-unit m3 l3 v3
1
9 2
1
1
0 5 2 5
0
0
end_operator
begin_operator
unload-medical-unit m3 l4 v1
1
9 3
1
1
0 3 2 6
0
0
end_operator
begin_operator
unload-medical-unit m3 l4 v2
1
9 3
1
1
0 4 2 6
0
0
end_operator
begin_operator
unload-medical-unit m3 l4 v3
1
9 3
1
1
0 5 2 6
0
0
end_operator
0
