begin_version
3.FOND
end_version
begin_metric
0
end_metric
28
begin_variable
var0
-1
10
Atom agent_position(r1)
Atom agent_position(r10)
Atom agent_position(r2)
Atom agent_position(r3)
Atom agent_position(r4)
Atom agent_position(r5)
Atom agent_position(r6)
Atom agent_position(r7)
Atom agent_position(r8)
Atom agent_position(r9)
end_variable
begin_variable
var1
-1
2
Atom door_unlocked(r1)
NegatedAtom door_unlocked(r1)
end_variable
begin_variable
var2
-1
2
Atom door_unlocked(r2)
NegatedAtom door_unlocked(r2)
end_variable
begin_variable
var3
-1
2
Atom door_unlocked(r3)
NegatedAtom door_unlocked(r3)
end_variable
begin_variable
var4
-1
2
Atom door_unlocked(r4)
NegatedAtom door_unlocked(r4)
end_variable
begin_variable
var5
-1
2
Atom door_unlocked(r5)
NegatedAtom door_unlocked(r5)
end_variable
begin_variable
var6
-1
2
Atom door_unlocked(r6)
NegatedAtom door_unlocked(r6)
end_variable
begin_variable
var7
-1
2
Atom door_unlocked(r7)
NegatedAtom door_unlocked(r7)
end_variable
begin_variable
var8
-1
2
Atom door_unlocked(r8)
NegatedAtom door_unlocked(r8)
end_variable
begin_variable
var9
-1
2
Atom door_unlocked(r9)
NegatedAtom door_unlocked(r9)
end_variable
begin_variable
var10
-1
2
Atom light_off(r1)
Atom light_on(r1)
end_variable
begin_variable
var11
-1
2
Atom light_off(r2)
Atom light_on(r2)
end_variable
begin_variable
var12
-1
2
Atom light_off(r3)
Atom light_on(r3)
end_variable
begin_variable
var13
-1
2
Atom light_off(r4)
Atom light_on(r4)
end_variable
begin_variable
var14
-1
2
Atom light_off(r5)
Atom light_on(r5)
end_variable
begin_variable
var15
-1
2
Atom light_off(r6)
Atom light_on(r6)
end_variable
begin_variable
var16
-1
2
Atom light_off(r7)
Atom light_on(r7)
end_variable
begin_variable
var17
-1
2
Atom light_off(r8)
Atom light_on(r8)
end_variable
begin_variable
var18
-1
2
Atom light_off(r9)
Atom light_on(r9)
end_variable
begin_variable
var19
-1
2
Atom visited(r10)
NegatedAtom visited(r10)
end_variable
begin_variable
var20
-1
2
Atom visited(r2)
NegatedAtom visited(r2)
end_variable
begin_variable
var21
-1
2
Atom visited(r3)
NegatedAtom visited(r3)
end_variable
begin_variable
var22
-1
2
Atom visited(r4)
NegatedAtom visited(r4)
end_variable
begin_variable
var23
-1
2
Atom visited(r5)
NegatedAtom visited(r5)
end_variable
begin_variable
var24
-1
2
Atom visited(r6)
NegatedAtom visited(r6)
end_variable
begin_variable
var25
-1
2
Atom visited(r7)
NegatedAtom visited(r7)
end_variable
begin_variable
var26
-1
2
Atom visited(r8)
NegatedAtom visited(r8)
end_variable
begin_variable
var27
-1
2
Atom visited(r9)
NegatedAtom visited(r9)
end_variable
10
begin_mutex_group
10
0 0
0 1
0 2
0 3
0 4
0 5
0 6
0 7
0 8
0 9
end_mutex_group
begin_mutex_group
2
10 0
10 1
end_mutex_group
begin_mutex_group
2
11 0
11 1
end_mutex_group
begin_mutex_group
2
12 0
12 1
end_mutex_group
begin_mutex_group
2
13 0
13 1
end_mutex_group
begin_mutex_group
2
14 0
14 1
end_mutex_group
begin_mutex_group
2
15 0
15 1
end_mutex_group
begin_mutex_group
2
16 0
16 1
end_mutex_group
begin_mutex_group
2
17 0
17 1
end_mutex_group
begin_mutex_group
2
18 0
18 1
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
1
0
0
0
0
0
0
0
0
0
1
1
1
1
1
1
1
1
1
end_state
begin_goal
9
19 0
20 0
21 0
22 0
23 0
24 0
25 0
26 0
27 0
end_goal
36
begin_operator
move_left_right r1 r2
2
0 0
1 0
1
2
0 0 0 2
0 20 -1 0
0
end_operator
begin_operator
move_left_right r2 r3
2
0 2
2 0
1
2
0 0 2 3
0 21 -1 0
0
end_operator
begin_operator
move_left_right r3 r4
2
0 3
3 0
1
2
0 0 3 4
0 22 -1 0
0
end_operator
begin_operator
move_left_right r4 r5
2
0 4
4 0
1
2
0 0 4 5
0 23 -1 0
0
end_operator
begin_operator
move_left_right r5 r6
2
0 5
5 0
1
2
0 0 5 6
0 24 -1 0
0
end_operator
begin_operator
move_left_right r6 r7
2
0 6
6 0
1
2
0 0 6 7
0 25 -1 0
0
end_operator
begin_operator
move_left_right r7 r8
2
0 7
7 0
1
2
0 0 7 8
0 26 -1 0
0
end_operator
begin_operator
move_left_right r8 r9
2
0 8
8 0
1
2
0 0 8 9
0 27 -1 0
0
end_operator
begin_operator
move_left_right r9 r10
2
0 9
9 0
1
2
0 0 9 1
0 19 -1 0
0
end_operator
begin_operator
move_right_left r1 r2
2
0 2
1 0
1
1
0 0 2 0
0
end_operator
begin_operator
move_right_left r2 r3
2
0 3
2 0
1
2
0 0 3 2
0 20 -1 0
0
end_operator
begin_operator
move_right_left r3 r4
2
0 4
3 0
1
2
0 0 4 3
0 21 -1 0
0
end_operator
begin_operator
move_right_left r4 r5
2
0 5
4 0
1
2
0 0 5 4
0 22 -1 0
0
end_operator
begin_operator
move_right_left r5 r6
2
0 6
5 0
1
2
0 0 6 5
0 23 -1 0
0
end_operator
begin_operator
move_right_left r6 r7
2
0 7
6 0
1
2
0 0 7 6
0 24 -1 0
0
end_operator
begin_operator
move_right_left r7 r8
2
0 8
7 0
1
2
0 0 8 7
0 25 -1 0
0
end_operator
begin_operator
move_right_left r8 r9
2
0 9
8 0
1
2
0 0 9 8
0 26 -1 0
0
end_operator
begin_operator
move_right_left r9 r10
2
0 1
9 0
1
2
0 0 1 9
0 27 -1 0
0
end_operator
begin_operator
turn_light_on r1
2
0 0
10 0
2
2
0 1 -1 0
0 10 0 1
1
0 10 0 1
0
end_operator
begin_operator
turn_light_on r2
2
0 2
11 0
2
2
0 2 -1 0
0 11 0 1
1
0 11 0 1
0
end_operator
begin_operator
turn_light_on r3
2
0 3
12 0
2
2
0 3 -1 0
0 12 0 1
1
0 12 0 1
0
end_operator
begin_operator
turn_light_on r4
2
0 4
13 0
2
2
0 4 -1 0
0 13 0 1
1
0 13 0 1
0
end_operator
begin_operator
turn_light_on r5
2
0 5
14 0
2
2
0 5 -1 0
0 14 0 1
1
0 14 0 1
0
end_operator
begin_operator
turn_light_on r6
2
0 6
15 0
2
2
0 6 -1 0
0 15 0 1
1
0 15 0 1
0
end_operator
begin_operator
turn_light_on r7
2
0 7
16 0
2
2
0 7 -1 0
0 16 0 1
1
0 16 0 1
0
end_operator
begin_operator
turn_light_on r8
2
0 8
17 0
2
2
0 8 -1 0
0 17 0 1
1
0 17 0 1
0
end_operator
begin_operator
turn_light_on r9
2
0 9
18 0
2
2
0 9 -1 0
0 18 0 1
1
0 18 0 1
0
end_operator
begin_operator
unlock_door r1
2
0 0
10 1
1
1
0 1 -1 0
0
end_operator
begin_operator
unlock_door r2
2
0 2
11 1
1
1
0 2 -1 0
0
end_operator
begin_operator
unlock_door r3
2
0 3
12 1
1
1
0 3 -1 0
0
end_operator
begin_operator
unlock_door r4
2
0 4
13 1
1
1
0 4 -1 0
0
end_operator
begin_operator
unlock_door r5
2
0 5
14 1
1
1
0 5 -1 0
0
end_operator
begin_operator
unlock_door r6
2
0 6
15 1
1
1
0 6 -1 0
0
end_operator
begin_operator
unlock_door r7
2
0 7
16 1
1
1
0 7 -1 0
0
end_operator
begin_operator
unlock_door r8
2
0 8
17 1
1
1
0 8 -1 0
0
end_operator
begin_operator
unlock_door r9
2
0 9
18 1
1
1
0 9 -1 0
0
end_operator
0
