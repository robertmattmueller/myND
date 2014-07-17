begin_version
3.FOND
end_version
begin_metric
0
end_metric
9
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
Atom have-victim-in-unit(v1, m1)
Atom victim-at(v1, l2)
end_variable
begin_variable
var2
-1
2
Atom have-victim-in-unit(v2, m2)
Atom victim-at(v2, l1)
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
2
Atom have-water(f2)
NegatedAtom have-water(f2)
end_variable
begin_variable
var5
-1
2
Atom victim-status(v1, healthy)
NegatedAtom victim-status(v1, healthy)
end_variable
begin_variable
var6
-1
2
Atom victim-status(v1, hurt)
NegatedAtom victim-status(v1, hurt)
end_variable
begin_variable
var7
-1
2
Atom victim-status(v2, healthy)
NegatedAtom victim-status(v2, healthy)
end_variable
begin_variable
var8
-1
2
Atom victim-status(v2, hurt)
NegatedAtom victim-status(v2, hurt)
end_variable
3
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
begin_state
0
1
1
1
1
1
0
1
0
end_state
begin_goal
3
0 1
5 0
7 0
end_goal
17
begin_operator
drive-fire-unit f1 l1 l1
1
0 1
1
0
0
end_operator
begin_operator
drive-fire-unit f2 l1 l1
1
0 1
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l2 l2
0
1
0
0
end_operator
begin_operator
drive-medical-unit m2 l1 l1
1
0 1
1
0
0
end_operator
begin_operator
load-fire-unit f1 l1
0
1
1
0 3 -1 0
0
end_operator
begin_operator
load-fire-unit f2 l1
0
1
1
0 4 -1 0
0
end_operator
begin_operator
load-medical-unit m1 l2 v1
1
1 1
1
1
0 1 1 0
0
end_operator
begin_operator
load-medical-unit m2 l1 v2
1
2 1
1
1
0 2 1 0
0
end_operator
begin_operator
treat-victim-at-hospital v2 l1
1
2 1
1
2
0 7 -1 0
0 8 -1 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v2
2
2 1
8 0
2
0
2
0 7 -1 0
0 8 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f2 l1 v2
2
2 1
8 0
2
0
2
0 7 -1 0
0 8 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l2 v1
2
1 1
6 0
2
0
2
0 5 -1 0
0 6 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m2 l1 v2
2
2 1
8 0
2
0
2
0 7 -1 0
0 8 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l1 l1
2
0 0
3 0
2
2
0 0 0 1
0 3 0 1
1
0 3 0 1
0
end_operator
begin_operator
unload-fire-unit f2 l1 l1
2
0 0
4 0
2
2
0 0 0 1
0 4 0 1
1
0 4 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l2 v1
1
1 0
1
1
0 1 0 1
0
end_operator
begin_operator
unload-medical-unit m2 l1 v2
1
2 0
1
1
0 2 0 1
0
end_operator
0
