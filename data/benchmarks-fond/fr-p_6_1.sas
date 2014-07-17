begin_version
3.FOND
end_version
begin_metric
0
end_metric
15
begin_variable
var0
-1
2
Atom fire(l5)
Atom nfire(l5)
end_variable
begin_variable
var1
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
var2
-1
6
Atom fire-unit-at(f2, l1)
Atom fire-unit-at(f2, l2)
Atom fire-unit-at(f2, l3)
Atom fire-unit-at(f2, l4)
Atom fire-unit-at(f2, l5)
Atom fire-unit-at(f2, l6)
end_variable
begin_variable
var3
-1
6
Atom fire-unit-at(f3, l1)
Atom fire-unit-at(f3, l2)
Atom fire-unit-at(f3, l3)
Atom fire-unit-at(f3, l4)
Atom fire-unit-at(f3, l5)
Atom fire-unit-at(f3, l6)
end_variable
begin_variable
var4
-1
6
Atom fire-unit-at(f4, l1)
Atom fire-unit-at(f4, l2)
Atom fire-unit-at(f4, l3)
Atom fire-unit-at(f4, l4)
Atom fire-unit-at(f4, l5)
Atom fire-unit-at(f4, l6)
end_variable
begin_variable
var5
-1
6
Atom fire-unit-at(f5, l1)
Atom fire-unit-at(f5, l2)
Atom fire-unit-at(f5, l3)
Atom fire-unit-at(f5, l4)
Atom fire-unit-at(f5, l5)
Atom fire-unit-at(f5, l6)
end_variable
begin_variable
var6
-1
7
Atom have-victim-in-unit(v1, m1)
Atom victim-at(v1, l1)
Atom victim-at(v1, l2)
Atom victim-at(v1, l3)
Atom victim-at(v1, l4)
Atom victim-at(v1, l5)
Atom victim-at(v1, l6)
end_variable
begin_variable
var7
-1
2
Atom have-water(f1)
NegatedAtom have-water(f1)
end_variable
begin_variable
var8
-1
2
Atom have-water(f2)
NegatedAtom have-water(f2)
end_variable
begin_variable
var9
-1
2
Atom have-water(f3)
NegatedAtom have-water(f3)
end_variable
begin_variable
var10
-1
2
Atom have-water(f4)
NegatedAtom have-water(f4)
end_variable
begin_variable
var11
-1
2
Atom have-water(f5)
NegatedAtom have-water(f5)
end_variable
begin_variable
var12
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
var13
-1
2
Atom victim-status(v1, dying)
NegatedAtom victim-status(v1, dying)
end_variable
begin_variable
var14
-1
2
Atom victim-status(v1, healthy)
NegatedAtom victim-status(v1, healthy)
end_variable
8
begin_mutex_group
2
0 0
0 1
end_mutex_group
begin_mutex_group
6
1 0
1 1
1 2
1 3
1 4
1 5
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
6
3 0
3 1
3 2
3 3
3 4
3 5
end_mutex_group
begin_mutex_group
6
4 0
4 1
4 2
4 3
4 4
4 5
end_mutex_group
begin_mutex_group
6
5 0
5 1
5 2
5 3
5 4
5 5
end_mutex_group
begin_mutex_group
7
6 0
6 1
6 2
6 3
6 4
6 5
6 6
end_mutex_group
begin_mutex_group
6
12 0
12 1
12 2
12 3
12 4
12 5
end_mutex_group
begin_state
0
0
2
5
2
4
2
1
1
1
1
1
1
0
1
end_state
begin_goal
2
0 1
14 0
end_goal
246
begin_operator
drive-fire-unit f1 l1 l1
1
1 0
1
0
0
end_operator
begin_operator
drive-fire-unit f1 l1 l3
1
1 0
1
1
0 1 0 2
0
end_operator
begin_operator
drive-fire-unit f1 l1 l4
1
1 0
1
1
0 1 0 3
0
end_operator
begin_operator
drive-fire-unit f1 l1 l5
2
0 1
1 0
1
1
0 1 0 4
0
end_operator
begin_operator
drive-fire-unit f1 l1 l6
1
1 0
1
1
0 1 0 5
0
end_operator
begin_operator
drive-fire-unit f1 l2 l2
1
1 1
1
0
0
end_operator
begin_operator
drive-fire-unit f1 l2 l3
1
1 1
1
1
0 1 1 2
0
end_operator
begin_operator
drive-fire-unit f1 l2 l4
1
1 1
1
1
0 1 1 3
0
end_operator
begin_operator
drive-fire-unit f1 l2 l5
2
0 1
1 1
1
1
0 1 1 4
0
end_operator
begin_operator
drive-fire-unit f1 l2 l6
1
1 1
1
1
0 1 1 5
0
end_operator
begin_operator
drive-fire-unit f1 l3 l1
1
1 2
1
1
0 1 2 0
0
end_operator
begin_operator
drive-fire-unit f1 l3 l2
1
1 2
1
1
0 1 2 1
0
end_operator
begin_operator
drive-fire-unit f1 l3 l3
1
1 2
1
0
0
end_operator
begin_operator
drive-fire-unit f1 l3 l4
1
1 2
1
1
0 1 2 3
0
end_operator
begin_operator
drive-fire-unit f1 l3 l5
2
0 1
1 2
1
1
0 1 2 4
0
end_operator
begin_operator
drive-fire-unit f1 l3 l6
1
1 2
1
1
0 1 2 5
0
end_operator
begin_operator
drive-fire-unit f1 l4 l1
1
1 3
1
1
0 1 3 0
0
end_operator
begin_operator
drive-fire-unit f1 l4 l2
1
1 3
1
1
0 1 3 1
0
end_operator
begin_operator
drive-fire-unit f1 l4 l3
1
1 3
1
1
0 1 3 2
0
end_operator
begin_operator
drive-fire-unit f1 l4 l4
1
1 3
1
0
0
end_operator
begin_operator
drive-fire-unit f1 l4 l6
1
1 3
1
1
0 1 3 5
0
end_operator
begin_operator
drive-fire-unit f1 l5 l1
1
1 4
1
1
0 1 4 0
0
end_operator
begin_operator
drive-fire-unit f1 l5 l2
1
1 4
1
1
0 1 4 1
0
end_operator
begin_operator
drive-fire-unit f1 l5 l3
1
1 4
1
1
0 1 4 2
0
end_operator
begin_operator
drive-fire-unit f1 l5 l5
2
0 1
1 4
1
0
0
end_operator
begin_operator
drive-fire-unit f1 l5 l6
1
1 4
1
1
0 1 4 5
0
end_operator
begin_operator
drive-fire-unit f1 l6 l1
1
1 5
1
1
0 1 5 0
0
end_operator
begin_operator
drive-fire-unit f1 l6 l2
1
1 5
1
1
0 1 5 1
0
end_operator
begin_operator
drive-fire-unit f1 l6 l3
1
1 5
1
1
0 1 5 2
0
end_operator
begin_operator
drive-fire-unit f1 l6 l4
1
1 5
1
1
0 1 5 3
0
end_operator
begin_operator
drive-fire-unit f1 l6 l5
2
0 1
1 5
1
1
0 1 5 4
0
end_operator
begin_operator
drive-fire-unit f1 l6 l6
1
1 5
1
0
0
end_operator
begin_operator
drive-fire-unit f2 l1 l1
1
2 0
1
0
0
end_operator
begin_operator
drive-fire-unit f2 l1 l3
1
2 0
1
1
0 2 0 2
0
end_operator
begin_operator
drive-fire-unit f2 l1 l4
1
2 0
1
1
0 2 0 3
0
end_operator
begin_operator
drive-fire-unit f2 l1 l5
2
0 1
2 0
1
1
0 2 0 4
0
end_operator
begin_operator
drive-fire-unit f2 l1 l6
1
2 0
1
1
0 2 0 5
0
end_operator
begin_operator
drive-fire-unit f2 l2 l2
1
2 1
1
0
0
end_operator
begin_operator
drive-fire-unit f2 l2 l3
1
2 1
1
1
0 2 1 2
0
end_operator
begin_operator
drive-fire-unit f2 l2 l4
1
2 1
1
1
0 2 1 3
0
end_operator
begin_operator
drive-fire-unit f2 l2 l5
2
0 1
2 1
1
1
0 2 1 4
0
end_operator
begin_operator
drive-fire-unit f2 l2 l6
1
2 1
1
1
0 2 1 5
0
end_operator
begin_operator
drive-fire-unit f2 l3 l1
1
2 2
1
1
0 2 2 0
0
end_operator
begin_operator
drive-fire-unit f2 l3 l2
1
2 2
1
1
0 2 2 1
0
end_operator
begin_operator
drive-fire-unit f2 l3 l3
1
2 2
1
0
0
end_operator
begin_operator
drive-fire-unit f2 l3 l4
1
2 2
1
1
0 2 2 3
0
end_operator
begin_operator
drive-fire-unit f2 l3 l5
2
0 1
2 2
1
1
0 2 2 4
0
end_operator
begin_operator
drive-fire-unit f2 l3 l6
1
2 2
1
1
0 2 2 5
0
end_operator
begin_operator
drive-fire-unit f2 l4 l1
1
2 3
1
1
0 2 3 0
0
end_operator
begin_operator
drive-fire-unit f2 l4 l2
1
2 3
1
1
0 2 3 1
0
end_operator
begin_operator
drive-fire-unit f2 l4 l3
1
2 3
1
1
0 2 3 2
0
end_operator
begin_operator
drive-fire-unit f2 l4 l4
1
2 3
1
0
0
end_operator
begin_operator
drive-fire-unit f2 l4 l6
1
2 3
1
1
0 2 3 5
0
end_operator
begin_operator
drive-fire-unit f2 l5 l1
1
2 4
1
1
0 2 4 0
0
end_operator
begin_operator
drive-fire-unit f2 l5 l2
1
2 4
1
1
0 2 4 1
0
end_operator
begin_operator
drive-fire-unit f2 l5 l3
1
2 4
1
1
0 2 4 2
0
end_operator
begin_operator
drive-fire-unit f2 l5 l5
2
0 1
2 4
1
0
0
end_operator
begin_operator
drive-fire-unit f2 l5 l6
1
2 4
1
1
0 2 4 5
0
end_operator
begin_operator
drive-fire-unit f2 l6 l1
1
2 5
1
1
0 2 5 0
0
end_operator
begin_operator
drive-fire-unit f2 l6 l2
1
2 5
1
1
0 2 5 1
0
end_operator
begin_operator
drive-fire-unit f2 l6 l3
1
2 5
1
1
0 2 5 2
0
end_operator
begin_operator
drive-fire-unit f2 l6 l4
1
2 5
1
1
0 2 5 3
0
end_operator
begin_operator
drive-fire-unit f2 l6 l5
2
0 1
2 5
1
1
0 2 5 4
0
end_operator
begin_operator
drive-fire-unit f2 l6 l6
1
2 5
1
0
0
end_operator
begin_operator
drive-fire-unit f3 l1 l1
1
3 0
1
0
0
end_operator
begin_operator
drive-fire-unit f3 l1 l3
1
3 0
1
1
0 3 0 2
0
end_operator
begin_operator
drive-fire-unit f3 l1 l4
1
3 0
1
1
0 3 0 3
0
end_operator
begin_operator
drive-fire-unit f3 l1 l5
2
0 1
3 0
1
1
0 3 0 4
0
end_operator
begin_operator
drive-fire-unit f3 l1 l6
1
3 0
1
1
0 3 0 5
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
1
3 1
1
1
0 3 1 2
0
end_operator
begin_operator
drive-fire-unit f3 l2 l4
1
3 1
1
1
0 3 1 3
0
end_operator
begin_operator
drive-fire-unit f3 l2 l5
2
0 1
3 1
1
1
0 3 1 4
0
end_operator
begin_operator
drive-fire-unit f3 l2 l6
1
3 1
1
1
0 3 1 5
0
end_operator
begin_operator
drive-fire-unit f3 l3 l1
1
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
1
3 2
1
0
0
end_operator
begin_operator
drive-fire-unit f3 l3 l4
1
3 2
1
1
0 3 2 3
0
end_operator
begin_operator
drive-fire-unit f3 l3 l5
2
0 1
3 2
1
1
0 3 2 4
0
end_operator
begin_operator
drive-fire-unit f3 l3 l6
1
3 2
1
1
0 3 2 5
0
end_operator
begin_operator
drive-fire-unit f3 l4 l1
1
3 3
1
1
0 3 3 0
0
end_operator
begin_operator
drive-fire-unit f3 l4 l2
1
3 3
1
1
0 3 3 1
0
end_operator
begin_operator
drive-fire-unit f3 l4 l3
1
3 3
1
1
0 3 3 2
0
end_operator
begin_operator
drive-fire-unit f3 l4 l4
1
3 3
1
0
0
end_operator
begin_operator
drive-fire-unit f3 l4 l6
1
3 3
1
1
0 3 3 5
0
end_operator
begin_operator
drive-fire-unit f3 l5 l1
1
3 4
1
1
0 3 4 0
0
end_operator
begin_operator
drive-fire-unit f3 l5 l2
1
3 4
1
1
0 3 4 1
0
end_operator
begin_operator
drive-fire-unit f3 l5 l3
1
3 4
1
1
0 3 4 2
0
end_operator
begin_operator
drive-fire-unit f3 l5 l5
2
0 1
3 4
1
0
0
end_operator
begin_operator
drive-fire-unit f3 l5 l6
1
3 4
1
1
0 3 4 5
0
end_operator
begin_operator
drive-fire-unit f3 l6 l1
1
3 5
1
1
0 3 5 0
0
end_operator
begin_operator
drive-fire-unit f3 l6 l2
1
3 5
1
1
0 3 5 1
0
end_operator
begin_operator
drive-fire-unit f3 l6 l3
1
3 5
1
1
0 3 5 2
0
end_operator
begin_operator
drive-fire-unit f3 l6 l4
1
3 5
1
1
0 3 5 3
0
end_operator
begin_operator
drive-fire-unit f3 l6 l5
2
0 1
3 5
1
1
0 3 5 4
0
end_operator
begin_operator
drive-fire-unit f3 l6 l6
1
3 5
1
0
0
end_operator
begin_operator
drive-fire-unit f4 l1 l1
1
4 0
1
0
0
end_operator
begin_operator
drive-fire-unit f4 l1 l3
1
4 0
1
1
0 4 0 2
0
end_operator
begin_operator
drive-fire-unit f4 l1 l4
1
4 0
1
1
0 4 0 3
0
end_operator
begin_operator
drive-fire-unit f4 l1 l5
2
0 1
4 0
1
1
0 4 0 4
0
end_operator
begin_operator
drive-fire-unit f4 l1 l6
1
4 0
1
1
0 4 0 5
0
end_operator
begin_operator
drive-fire-unit f4 l2 l2
1
4 1
1
0
0
end_operator
begin_operator
drive-fire-unit f4 l2 l3
1
4 1
1
1
0 4 1 2
0
end_operator
begin_operator
drive-fire-unit f4 l2 l4
1
4 1
1
1
0 4 1 3
0
end_operator
begin_operator
drive-fire-unit f4 l2 l5
2
0 1
4 1
1
1
0 4 1 4
0
end_operator
begin_operator
drive-fire-unit f4 l2 l6
1
4 1
1
1
0 4 1 5
0
end_operator
begin_operator
drive-fire-unit f4 l3 l1
1
4 2
1
1
0 4 2 0
0
end_operator
begin_operator
drive-fire-unit f4 l3 l2
1
4 2
1
1
0 4 2 1
0
end_operator
begin_operator
drive-fire-unit f4 l3 l3
1
4 2
1
0
0
end_operator
begin_operator
drive-fire-unit f4 l3 l4
1
4 2
1
1
0 4 2 3
0
end_operator
begin_operator
drive-fire-unit f4 l3 l5
2
0 1
4 2
1
1
0 4 2 4
0
end_operator
begin_operator
drive-fire-unit f4 l3 l6
1
4 2
1
1
0 4 2 5
0
end_operator
begin_operator
drive-fire-unit f4 l4 l1
1
4 3
1
1
0 4 3 0
0
end_operator
begin_operator
drive-fire-unit f4 l4 l2
1
4 3
1
1
0 4 3 1
0
end_operator
begin_operator
drive-fire-unit f4 l4 l3
1
4 3
1
1
0 4 3 2
0
end_operator
begin_operator
drive-fire-unit f4 l4 l4
1
4 3
1
0
0
end_operator
begin_operator
drive-fire-unit f4 l4 l6
1
4 3
1
1
0 4 3 5
0
end_operator
begin_operator
drive-fire-unit f4 l5 l1
1
4 4
1
1
0 4 4 0
0
end_operator
begin_operator
drive-fire-unit f4 l5 l2
1
4 4
1
1
0 4 4 1
0
end_operator
begin_operator
drive-fire-unit f4 l5 l3
1
4 4
1
1
0 4 4 2
0
end_operator
begin_operator
drive-fire-unit f4 l5 l5
2
0 1
4 4
1
0
0
end_operator
begin_operator
drive-fire-unit f4 l5 l6
1
4 4
1
1
0 4 4 5
0
end_operator
begin_operator
drive-fire-unit f4 l6 l1
1
4 5
1
1
0 4 5 0
0
end_operator
begin_operator
drive-fire-unit f4 l6 l2
1
4 5
1
1
0 4 5 1
0
end_operator
begin_operator
drive-fire-unit f4 l6 l3
1
4 5
1
1
0 4 5 2
0
end_operator
begin_operator
drive-fire-unit f4 l6 l4
1
4 5
1
1
0 4 5 3
0
end_operator
begin_operator
drive-fire-unit f4 l6 l5
2
0 1
4 5
1
1
0 4 5 4
0
end_operator
begin_operator
drive-fire-unit f4 l6 l6
1
4 5
1
0
0
end_operator
begin_operator
drive-fire-unit f5 l1 l1
1
5 0
1
0
0
end_operator
begin_operator
drive-fire-unit f5 l1 l3
1
5 0
1
1
0 5 0 2
0
end_operator
begin_operator
drive-fire-unit f5 l1 l4
1
5 0
1
1
0 5 0 3
0
end_operator
begin_operator
drive-fire-unit f5 l1 l5
2
0 1
5 0
1
1
0 5 0 4
0
end_operator
begin_operator
drive-fire-unit f5 l1 l6
1
5 0
1
1
0 5 0 5
0
end_operator
begin_operator
drive-fire-unit f5 l2 l2
1
5 1
1
0
0
end_operator
begin_operator
drive-fire-unit f5 l2 l3
1
5 1
1
1
0 5 1 2
0
end_operator
begin_operator
drive-fire-unit f5 l2 l4
1
5 1
1
1
0 5 1 3
0
end_operator
begin_operator
drive-fire-unit f5 l2 l5
2
0 1
5 1
1
1
0 5 1 4
0
end_operator
begin_operator
drive-fire-unit f5 l2 l6
1
5 1
1
1
0 5 1 5
0
end_operator
begin_operator
drive-fire-unit f5 l3 l1
1
5 2
1
1
0 5 2 0
0
end_operator
begin_operator
drive-fire-unit f5 l3 l2
1
5 2
1
1
0 5 2 1
0
end_operator
begin_operator
drive-fire-unit f5 l3 l3
1
5 2
1
0
0
end_operator
begin_operator
drive-fire-unit f5 l3 l4
1
5 2
1
1
0 5 2 3
0
end_operator
begin_operator
drive-fire-unit f5 l3 l5
2
0 1
5 2
1
1
0 5 2 4
0
end_operator
begin_operator
drive-fire-unit f5 l3 l6
1
5 2
1
1
0 5 2 5
0
end_operator
begin_operator
drive-fire-unit f5 l4 l1
1
5 3
1
1
0 5 3 0
0
end_operator
begin_operator
drive-fire-unit f5 l4 l2
1
5 3
1
1
0 5 3 1
0
end_operator
begin_operator
drive-fire-unit f5 l4 l3
1
5 3
1
1
0 5 3 2
0
end_operator
begin_operator
drive-fire-unit f5 l4 l4
1
5 3
1
0
0
end_operator
begin_operator
drive-fire-unit f5 l4 l6
1
5 3
1
1
0 5 3 5
0
end_operator
begin_operator
drive-fire-unit f5 l5 l1
1
5 4
1
1
0 5 4 0
0
end_operator
begin_operator
drive-fire-unit f5 l5 l2
1
5 4
1
1
0 5 4 1
0
end_operator
begin_operator
drive-fire-unit f5 l5 l3
1
5 4
1
1
0 5 4 2
0
end_operator
begin_operator
drive-fire-unit f5 l5 l5
2
0 1
5 4
1
0
0
end_operator
begin_operator
drive-fire-unit f5 l5 l6
1
5 4
1
1
0 5 4 5
0
end_operator
begin_operator
drive-fire-unit f5 l6 l1
1
5 5
1
1
0 5 5 0
0
end_operator
begin_operator
drive-fire-unit f5 l6 l2
1
5 5
1
1
0 5 5 1
0
end_operator
begin_operator
drive-fire-unit f5 l6 l3
1
5 5
1
1
0 5 5 2
0
end_operator
begin_operator
drive-fire-unit f5 l6 l4
1
5 5
1
1
0 5 5 3
0
end_operator
begin_operator
drive-fire-unit f5 l6 l5
2
0 1
5 5
1
1
0 5 5 4
0
end_operator
begin_operator
drive-fire-unit f5 l6 l6
1
5 5
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l1
1
12 0
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l3
1
12 0
1
1
0 12 0 2
0
end_operator
begin_operator
drive-medical-unit m1 l1 l4
1
12 0
1
1
0 12 0 3
0
end_operator
begin_operator
drive-medical-unit m1 l1 l5
2
0 1
12 0
1
1
0 12 0 4
0
end_operator
begin_operator
drive-medical-unit m1 l1 l6
1
12 0
1
1
0 12 0 5
0
end_operator
begin_operator
drive-medical-unit m1 l2 l2
1
12 1
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l3
1
12 1
1
1
0 12 1 2
0
end_operator
begin_operator
drive-medical-unit m1 l2 l4
1
12 1
1
1
0 12 1 3
0
end_operator
begin_operator
drive-medical-unit m1 l2 l5
2
0 1
12 1
1
1
0 12 1 4
0
end_operator
begin_operator
drive-medical-unit m1 l2 l6
1
12 1
1
1
0 12 1 5
0
end_operator
begin_operator
drive-medical-unit m1 l3 l1
1
12 2
1
1
0 12 2 0
0
end_operator
begin_operator
drive-medical-unit m1 l3 l2
1
12 2
1
1
0 12 2 1
0
end_operator
begin_operator
drive-medical-unit m1 l3 l3
1
12 2
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l3 l4
1
12 2
1
1
0 12 2 3
0
end_operator
begin_operator
drive-medical-unit m1 l3 l5
2
0 1
12 2
1
1
0 12 2 4
0
end_operator
begin_operator
drive-medical-unit m1 l3 l6
1
12 2
1
1
0 12 2 5
0
end_operator
begin_operator
drive-medical-unit m1 l4 l1
1
12 3
1
1
0 12 3 0
0
end_operator
begin_operator
drive-medical-unit m1 l4 l2
1
12 3
1
1
0 12 3 1
0
end_operator
begin_operator
drive-medical-unit m1 l4 l3
1
12 3
1
1
0 12 3 2
0
end_operator
begin_operator
drive-medical-unit m1 l4 l4
1
12 3
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l4 l6
1
12 3
1
1
0 12 3 5
0
end_operator
begin_operator
drive-medical-unit m1 l5 l1
1
12 4
1
1
0 12 4 0
0
end_operator
begin_operator
drive-medical-unit m1 l5 l2
1
12 4
1
1
0 12 4 1
0
end_operator
begin_operator
drive-medical-unit m1 l5 l3
1
12 4
1
1
0 12 4 2
0
end_operator
begin_operator
drive-medical-unit m1 l5 l5
2
0 1
12 4
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l5 l6
1
12 4
1
1
0 12 4 5
0
end_operator
begin_operator
drive-medical-unit m1 l6 l1
1
12 5
1
1
0 12 5 0
0
end_operator
begin_operator
drive-medical-unit m1 l6 l2
1
12 5
1
1
0 12 5 1
0
end_operator
begin_operator
drive-medical-unit m1 l6 l3
1
12 5
1
1
0 12 5 2
0
end_operator
begin_operator
drive-medical-unit m1 l6 l4
1
12 5
1
1
0 12 5 3
0
end_operator
begin_operator
drive-medical-unit m1 l6 l5
2
0 1
12 5
1
1
0 12 5 4
0
end_operator
begin_operator
drive-medical-unit m1 l6 l6
1
12 5
1
0
0
end_operator
begin_operator
load-fire-unit f1 l3
1
1 2
1
1
0 7 -1 0
0
end_operator
begin_operator
load-fire-unit f1 l4
1
1 3
1
1
0 7 -1 0
0
end_operator
begin_operator
load-fire-unit f1 l6
1
1 5
1
1
0 7 -1 0
0
end_operator
begin_operator
load-fire-unit f2 l3
1
2 2
1
1
0 8 -1 0
0
end_operator
begin_operator
load-fire-unit f2 l4
1
2 3
1
1
0 8 -1 0
0
end_operator
begin_operator
load-fire-unit f2 l6
1
2 5
1
1
0 8 -1 0
0
end_operator
begin_operator
load-fire-unit f3 l3
1
3 2
1
1
0 9 -1 0
0
end_operator
begin_operator
load-fire-unit f3 l4
1
3 3
1
1
0 9 -1 0
0
end_operator
begin_operator
load-fire-unit f3 l6
1
3 5
1
1
0 9 -1 0
0
end_operator
begin_operator
load-fire-unit f4 l3
1
4 2
1
1
0 10 -1 0
0
end_operator
begin_operator
load-fire-unit f4 l4
1
4 3
1
1
0 10 -1 0
0
end_operator
begin_operator
load-fire-unit f4 l6
1
4 5
1
1
0 10 -1 0
0
end_operator
begin_operator
load-fire-unit f5 l3
1
5 2
1
1
0 11 -1 0
0
end_operator
begin_operator
load-fire-unit f5 l4
1
5 3
1
1
0 11 -1 0
0
end_operator
begin_operator
load-fire-unit f5 l6
1
5 5
1
1
0 11 -1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v1
2
6 1
12 0
1
1
0 6 1 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v1
2
6 2
12 1
1
1
0 6 2 0
0
end_operator
begin_operator
load-medical-unit m1 l3 v1
2
6 3
12 2
1
1
0 6 3 0
0
end_operator
begin_operator
load-medical-unit m1 l4 v1
2
6 4
12 3
1
1
0 6 4 0
0
end_operator
begin_operator
load-medical-unit m1 l5 v1
2
6 5
12 4
1
1
0 6 5 0
0
end_operator
begin_operator
load-medical-unit m1 l6 v1
2
6 6
12 5
1
1
0 6 6 0
0
end_operator
begin_operator
treat-victim-at-hospital v1 l1
1
6 1
1
2
0 13 -1 1
0 14 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v1 l4
1
6 4
1
2
0 13 -1 1
0 14 -1 0
0
end_operator
begin_operator
unload-fire-unit f1 l1 l5
3
0 0
1 0
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
unload-fire-unit f1 l2 l5
3
0 0
1 1
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
unload-fire-unit f1 l3 l5
3
0 0
1 2
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
unload-fire-unit f1 l5 l5
3
0 0
1 4
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
unload-fire-unit f1 l6 l5
3
0 0
1 5
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
unload-fire-unit f2 l1 l5
3
0 0
2 0
8 0
2
2
0 0 0 1
0 8 0 1
1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l2 l5
3
0 0
2 1
8 0
2
2
0 0 0 1
0 8 0 1
1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l3 l5
3
0 0
2 2
8 0
2
2
0 0 0 1
0 8 0 1
1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l5 l5
3
0 0
2 4
8 0
2
2
0 0 0 1
0 8 0 1
1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l6 l5
3
0 0
2 5
8 0
2
2
0 0 0 1
0 8 0 1
1
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l1 l5
3
0 0
3 0
9 0
2
2
0 0 0 1
0 9 0 1
1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l2 l5
3
0 0
3 1
9 0
2
2
0 0 0 1
0 9 0 1
1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l3 l5
3
0 0
3 2
9 0
2
2
0 0 0 1
0 9 0 1
1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l5 l5
3
0 0
3 4
9 0
2
2
0 0 0 1
0 9 0 1
1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f3 l6 l5
3
0 0
3 5
9 0
2
2
0 0 0 1
0 9 0 1
1
0 9 0 1
0
end_operator
begin_operator
unload-fire-unit f4 l1 l5
3
0 0
4 0
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
unload-fire-unit f4 l2 l5
3
0 0
4 1
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
unload-fire-unit f4 l3 l5
3
0 0
4 2
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
unload-fire-unit f4 l5 l5
3
0 0
4 4
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
unload-fire-unit f4 l6 l5
3
0 0
4 5
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
unload-fire-unit f5 l1 l5
3
0 0
5 0
11 0
2
2
0 0 0 1
0 11 0 1
1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f5 l2 l5
3
0 0
5 1
11 0
2
2
0 0 0 1
0 11 0 1
1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f5 l3 l5
3
0 0
5 2
11 0
2
2
0 0 0 1
0 11 0 1
1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f5 l5 l5
3
0 0
5 4
11 0
2
2
0 0 0 1
0 11 0 1
1
0 11 0 1
0
end_operator
begin_operator
unload-fire-unit f5 l6 l5
3
0 0
5 5
11 0
2
2
0 0 0 1
0 11 0 1
1
0 11 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l1 v1
2
6 0
12 0
1
1
0 6 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l2 v1
2
6 0
12 1
1
1
0 6 0 2
0
end_operator
begin_operator
unload-medical-unit m1 l3 v1
2
6 0
12 2
1
1
0 6 0 3
0
end_operator
begin_operator
unload-medical-unit m1 l4 v1
2
6 0
12 3
1
1
0 6 0 4
0
end_operator
begin_operator
unload-medical-unit m1 l5 v1
2
6 0
12 4
1
1
0 6 0 5
0
end_operator
begin_operator
unload-medical-unit m1 l6 v1
2
6 0
12 5
1
1
0 6 0 6
0
end_operator
0
