begin_version
3.FOND
end_version
begin_metric
0
end_metric
20
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
Atom victim-at(v1, l1)
end_variable
begin_variable
var2
-1
2
Atom have-victim-in-unit(v2, m1)
Atom victim-at(v2, l1)
end_variable
begin_variable
var3
-1
2
Atom have-victim-in-unit(v3, m1)
Atom victim-at(v3, l1)
end_variable
begin_variable
var4
-1
2
Atom have-victim-in-unit(v4, m1)
Atom victim-at(v4, l1)
end_variable
begin_variable
var5
-1
2
Atom have-victim-in-unit(v5, m1)
Atom victim-at(v5, l1)
end_variable
begin_variable
var6
-1
2
Atom have-victim-in-unit(v6, m1)
Atom victim-at(v6, l1)
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
Atom victim-status(v1, healthy)
NegatedAtom victim-status(v1, healthy)
end_variable
begin_variable
var9
-1
2
Atom victim-status(v1, hurt)
NegatedAtom victim-status(v1, hurt)
end_variable
begin_variable
var10
-1
2
Atom victim-status(v2, healthy)
NegatedAtom victim-status(v2, healthy)
end_variable
begin_variable
var11
-1
2
Atom victim-status(v2, hurt)
NegatedAtom victim-status(v2, hurt)
end_variable
begin_variable
var12
-1
2
Atom victim-status(v3, dying)
NegatedAtom victim-status(v3, dying)
end_variable
begin_variable
var13
-1
2
Atom victim-status(v3, healthy)
NegatedAtom victim-status(v3, healthy)
end_variable
begin_variable
var14
-1
2
Atom victim-status(v4, dying)
NegatedAtom victim-status(v4, dying)
end_variable
begin_variable
var15
-1
2
Atom victim-status(v4, healthy)
NegatedAtom victim-status(v4, healthy)
end_variable
begin_variable
var16
-1
2
Atom victim-status(v5, healthy)
NegatedAtom victim-status(v5, healthy)
end_variable
begin_variable
var17
-1
2
Atom victim-status(v5, hurt)
NegatedAtom victim-status(v5, hurt)
end_variable
begin_variable
var18
-1
2
Atom victim-status(v6, healthy)
NegatedAtom victim-status(v6, healthy)
end_variable
begin_variable
var19
-1
2
Atom victim-status(v6, hurt)
NegatedAtom victim-status(v6, hurt)
end_variable
8
begin_mutex_group
2
0 0
0 1
end_mutex_group
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
2
3 0
3 1
end_mutex_group
begin_mutex_group
2
4 0
4 1
end_mutex_group
begin_mutex_group
2
5 0
5 1
end_mutex_group
begin_mutex_group
2
6 0
6 1
end_mutex_group
begin_state
0
1
1
1
1
1
1
1
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
1
0
end_state
begin_goal
7
0 1
8 0
10 0
13 0
15 0
16 0
18 0
end_goal
30
begin_operator
drive-fire-unit f1 l1 l1
1
0 1
1
0
0
end_operator
begin_operator
drive-medical-unit m1 l1 l1
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
0 7 -1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v1
1
1 1
1
1
0 1 1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v2
1
2 1
1
1
0 2 1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v3
1
3 1
1
1
0 3 1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v4
1
4 1
1
1
0 4 1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v5
1
5 1
1
1
0 5 1 0
0
end_operator
begin_operator
load-medical-unit m1 l1 v6
1
6 1
1
1
0 6 1 0
0
end_operator
begin_operator
treat-victim-at-hospital v1 l1
1
1 1
1
2
0 8 -1 0
0 9 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v2 l1
1
2 1
1
2
0 10 -1 0
0 11 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v3 l1
1
3 1
1
2
0 12 -1 1
0 13 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v4 l1
1
4 1
1
2
0 14 -1 1
0 15 -1 0
0
end_operator
begin_operator
treat-victim-at-hospital v5 l1
1
5 1
1
2
0 16 -1 0
0 17 -1 1
0
end_operator
begin_operator
treat-victim-at-hospital v6 l1
1
6 1
1
2
0 18 -1 0
0 19 -1 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v1
2
1 1
9 0
2
0
2
0 8 -1 0
0 9 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v2
2
2 1
11 0
2
0
2
0 10 -1 0
0 11 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v5
2
5 1
17 0
2
0
2
0 16 -1 0
0 17 0 1
0
end_operator
begin_operator
treat-victim-on-scene-fire f1 l1 v6
2
6 1
19 0
2
0
2
0 18 -1 0
0 19 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v1
2
1 1
9 0
2
0
2
0 8 -1 0
0 9 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v2
2
2 1
11 0
2
0
2
0 10 -1 0
0 11 0 1
0
end_operator
begin_operator
treat-victim-on-scene-medical m1 l1 v5
2
5 1
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
2
6 1
19 0
2
0
2
0 18 -1 0
0 19 0 1
0
end_operator
begin_operator
unload-fire-unit f1 l1 l1
2
0 0
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
1
1 0
1
1
0 1 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l1 v2
1
2 0
1
1
0 2 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l1 v3
1
3 0
1
1
0 3 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l1 v4
1
4 0
1
1
0 4 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l1 v5
1
5 0
1
1
0 5 0 1
0
end_operator
begin_operator
unload-medical-unit m1 l1 v6
1
6 0
1
1
0 6 0 1
0
end_operator
0
