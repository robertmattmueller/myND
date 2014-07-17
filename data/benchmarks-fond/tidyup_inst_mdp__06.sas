begin_version
3.FOND
end_version
begin_metric
1
end_metric
21
begin_variable
var0
-1
2
Atom arm-at-side(left_arm)
NegatedAtom arm-at-side(left_arm)
end_variable
begin_variable
var1
-1
2
Atom arm-at-side(right_arm)
NegatedAtom arm-at-side(right_arm)
end_variable
begin_variable
var2
-1
10
Atom at-base(desk1_l)
Atom at-base(desk2_l)
Atom at-base(init_location)
Atom at-base(k_door_l1)
Atom at-base(k_door_l2)
Atom at-base(k_table_l)
Atom at-base(o_door1_l1)
Atom at-base(o_door1_l2)
Atom at-base(o_door2_l1)
Atom at-base(o_door2_l2)
end_variable
begin_variable
var3
-1
6
Atom grasped(cup1, left_arm)
Atom grasped(cup1, right_arm)
Atom on(cup1, desk1)
Atom on(cup1, desk2)
Atom on(cup1, kitchen_table)
<none of those>
end_variable
begin_variable
var4
-1
6
Atom grasped(cup2, left_arm)
Atom grasped(cup2, right_arm)
Atom on(cup2, desk1)
Atom on(cup2, desk2)
Atom on(cup2, kitchen_table)
<none of those>
end_variable
begin_variable
var5
-1
6
Atom grasped(cup3, left_arm)
Atom grasped(cup3, right_arm)
Atom on(cup3, desk1)
Atom on(cup3, desk2)
Atom on(cup3, kitchen_table)
<none of those>
end_variable
begin_variable
var6
-1
7
Atom attached-to-base(sponge)
Atom grasped(sponge, left_arm)
Atom grasped(sponge, right_arm)
Atom on(sponge, desk1)
Atom on(sponge, desk2)
Atom on(sponge, kitchen_table)
<none of those>
end_variable
begin_variable
var7
-1
2
Atom door-open(kitchen_door)
NegatedAtom door-open(kitchen_door)
end_variable
begin_variable
var8
-1
2
Atom door-open(o_door1)
NegatedAtom door-open(o_door1)
end_variable
begin_variable
var9
-1
2
Atom door-open(o_door2)
NegatedAtom door-open(o_door2)
end_variable
begin_variable
var10
-1
2
Atom door-state-known(kitchen_door)
NegatedAtom door-state-known(kitchen_door)
end_variable
begin_variable
var11
-1
2
Atom door-state-known(o_door1)
NegatedAtom door-state-known(o_door1)
end_variable
begin_variable
var12
-1
2
Atom door-state-known(o_door2)
NegatedAtom door-state-known(o_door2)
end_variable
begin_variable
var13
-1
2
Atom hand-free(left_arm)
NegatedAtom hand-free(left_arm)
end_variable
begin_variable
var14
-1
2
Atom hand-free(right_arm)
NegatedAtom hand-free(right_arm)
end_variable
begin_variable
var15
-1
2
Atom table-state-known(desk1)
NegatedAtom table-state-known(desk1)
end_variable
begin_variable
var16
-1
2
Atom table-state-known(desk2)
NegatedAtom table-state-known(desk2)
end_variable
begin_variable
var17
-1
2
Atom table-state-known(kitchen_table)
NegatedAtom table-state-known(kitchen_table)
end_variable
begin_variable
var18
-1
2
Atom wiped(desk1)
NegatedAtom wiped(desk1)
end_variable
begin_variable
var19
-1
2
Atom wiped(desk2)
NegatedAtom wiped(desk2)
end_variable
begin_variable
var20
-1
2
Atom wiped(kitchen_table)
NegatedAtom wiped(kitchen_table)
end_variable
7
begin_mutex_group
10
2 0
2 1
2 2
2 3
2 4
2 5
2 6
2 7
2 8
2 9
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
5
5 0
5 1
5 2
5 3
5 4
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
5
3 0
4 0
5 0
6 1
13 0
end_mutex_group
begin_mutex_group
5
3 1
4 1
5 1
6 2
14 0
end_mutex_group
begin_state
0
0
2
2
3
3
0
1
1
1
1
1
1
0
0
1
1
1
1
1
1
end_state
begin_goal
14
0 0
1 0
3 4
4 4
5 4
6 0
13 0
14 0
15 0
16 0
17 0
18 0
19 0
20 0
end_goal
1155
begin_operator
arm-to-side left_arm
1
0 1
1
1
0 0 1 0
1
end_operator
begin_operator
arm-to-side right_arm
1
1 1
1
1
0 1 1 0
1
end_operator
begin_operator
attach-sponge left_arm
3
0 0
1 0
6 1
1
3
0 0 0 1
0 6 1 0
0 13 -1 0
1
end_operator
begin_operator
attach-sponge right_arm
3
0 0
1 0
6 2
1
3
0 1 0 1
0 6 2 0
0 14 -1 0
1
end_operator
begin_operator
detach-sponge left_arm
4
0 0
1 0
6 0
13 0
1
3
0 0 0 1
0 6 0 1
0 13 0 1
1
end_operator
begin_operator
detach-sponge right_arm
4
0 0
1 0
6 0
14 0
1
3
0 1 0 1
0 6 0 2
0 14 0 1
1
end_operator
begin_operator
drive corridor k_door_l2 o_door1_l2
3
0 0
1 0
2 4
2
0
1
0 2 4 7
1
end_operator
begin_operator
drive corridor k_door_l2 o_door2_l2
3
0 0
1 0
2 4
2
0
1
0 2 4 9
1
end_operator
begin_operator
drive corridor o_door1_l2 k_door_l2
3
0 0
1 0
2 7
2
0
1
0 2 7 4
1
end_operator
begin_operator
drive corridor o_door1_l2 o_door2_l2
3
0 0
1 0
2 7
2
0
1
0 2 7 9
1
end_operator
begin_operator
drive corridor o_door2_l2 k_door_l2
3
0 0
1 0
2 9
2
0
1
0 2 9 4
1
end_operator
begin_operator
drive corridor o_door2_l2 o_door1_l2
3
0 0
1 0
2 9
2
0
1
0 2 9 7
1
end_operator
begin_operator
drive kitchen init_location k_door_l1
3
0 0
1 0
2 2
2
0
1
0 2 2 3
1
end_operator
begin_operator
drive kitchen init_location k_table_l
3
0 0
1 0
2 2
2
0
1
0 2 2 5
1
end_operator
begin_operator
drive kitchen k_door_l1 init_location
3
0 0
1 0
2 3
2
0
1
0 2 3 2
1
end_operator
begin_operator
drive kitchen k_door_l1 k_table_l
3
0 0
1 0
2 3
2
0
1
0 2 3 5
1
end_operator
begin_operator
drive kitchen k_table_l init_location
3
0 0
1 0
2 5
2
0
1
0 2 5 2
1
end_operator
begin_operator
drive kitchen k_table_l k_door_l1
3
0 0
1 0
2 5
2
0
1
0 2 5 3
1
end_operator
begin_operator
drive office1 desk1_l o_door1_l1
3
0 0
1 0
2 0
2
0
1
0 2 0 6
1
end_operator
begin_operator
drive office1 o_door1_l1 desk1_l
3
0 0
1 0
2 6
2
0
1
0 2 6 0
1
end_operator
begin_operator
drive office2 desk2_l o_door2_l1
3
0 0
1 0
2 1
2
0
1
0 2 1 8
1
end_operator
begin_operator
drive office2 o_door2_l1 desk2_l
3
0 0
1 0
2 8
2
0
1
0 2 8 1
1
end_operator
begin_operator
drive-through-door corridor kitchen kitchen_door k_door_l2 k_door_l1
5
0 0
1 0
2 4
7 0
10 0
2
0
1
0 2 4 3
1
end_operator
begin_operator
drive-through-door corridor office1 o_door1 o_door1_l2 o_door1_l1
5
0 0
1 0
2 7
8 0
11 0
2
0
1
0 2 7 6
1
end_operator
begin_operator
drive-through-door corridor office2 o_door2 o_door2_l2 o_door2_l1
5
0 0
1 0
2 9
9 0
12 0
2
0
1
0 2 9 8
1
end_operator
begin_operator
drive-through-door kitchen corridor kitchen_door k_door_l1 k_door_l2
5
0 0
1 0
2 3
7 0
10 0
2
0
1
0 2 3 4
1
end_operator
begin_operator
drive-through-door office1 corridor o_door1 o_door1_l1 o_door1_l2
5
0 0
1 0
2 6
8 0
11 0
2
0
1
0 2 6 7
1
end_operator
begin_operator
drive-through-door office2 corridor o_door2 o_door2_l1 o_door2_l2
5
0 0
1 0
2 8
9 0
12 0
2
0
1
0 2 8 9
1
end_operator
begin_operator
drive-through-door-untucked corridor kitchen kitchen_door k_door_l2 k_door_l1
7
0 1
1 1
2 4
7 0
10 0
13 0
14 0
2
0
1
0 2 4 3
1
end_operator
begin_operator
drive-through-door-untucked corridor office1 o_door1 o_door1_l2 o_door1_l1
7
0 1
1 1
2 7
8 0
11 0
13 0
14 0
2
0
1
0 2 7 6
1
end_operator
begin_operator
drive-through-door-untucked corridor office2 o_door2 o_door2_l2 o_door2_l1
7
0 1
1 1
2 9
9 0
12 0
13 0
14 0
2
0
1
0 2 9 8
1
end_operator
begin_operator
drive-through-door-untucked kitchen corridor kitchen_door k_door_l1 k_door_l2
7
0 1
1 1
2 3
7 0
10 0
13 0
14 0
2
0
1
0 2 3 4
1
end_operator
begin_operator
drive-through-door-untucked office1 corridor o_door1 o_door1_l1 o_door1_l2
7
0 1
1 1
2 6
8 0
11 0
13 0
14 0
2
0
1
0 2 6 7
1
end_operator
begin_operator
drive-through-door-untucked office2 corridor o_door2 o_door2_l1 o_door2_l2
7
0 1
1 1
2 8
9 0
12 0
13 0
14 0
2
0
1
0 2 8 9
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor kitchen kitchen_door k_door_l2 k_door_l1 cup1 left_arm
5
0 1
2 4
3 0
7 0
10 0
1
2
0 3 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor kitchen kitchen_door k_door_l2 k_door_l1 cup1 right_arm
5
1 1
2 4
3 1
7 0
10 0
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor kitchen kitchen_door k_door_l2 k_door_l1 cup2 left_arm
5
0 1
2 4
4 0
7 0
10 0
1
2
0 4 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor kitchen kitchen_door k_door_l2 k_door_l1 cup2 right_arm
5
1 1
2 4
4 1
7 0
10 0
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor kitchen kitchen_door k_door_l2 k_door_l1 cup3 left_arm
5
0 1
2 4
5 0
7 0
10 0
1
2
0 5 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor kitchen kitchen_door k_door_l2 k_door_l1 cup3 right_arm
5
1 1
2 4
5 1
7 0
10 0
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor kitchen kitchen_door k_door_l2 k_door_l1 sponge left_arm
5
0 1
2 4
6 1
7 0
10 0
1
2
0 6 1 6
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor kitchen kitchen_door k_door_l2 k_door_l1 sponge right_arm
5
1 1
2 4
6 2
7 0
10 0
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor office1 o_door1 o_door1_l2 o_door1_l1 cup1 left_arm
5
0 1
2 7
3 0
8 0
11 0
1
2
0 3 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor office1 o_door1 o_door1_l2 o_door1_l1 cup1 right_arm
5
1 1
2 7
3 1
8 0
11 0
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor office1 o_door1 o_door1_l2 o_door1_l1 cup2 left_arm
5
0 1
2 7
4 0
8 0
11 0
1
2
0 4 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor office1 o_door1 o_door1_l2 o_door1_l1 cup2 right_arm
5
1 1
2 7
4 1
8 0
11 0
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor office1 o_door1 o_door1_l2 o_door1_l1 cup3 left_arm
5
0 1
2 7
5 0
8 0
11 0
1
2
0 5 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor office1 o_door1 o_door1_l2 o_door1_l1 cup3 right_arm
5
1 1
2 7
5 1
8 0
11 0
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor office1 o_door1 o_door1_l2 o_door1_l1 sponge left_arm
5
0 1
2 7
6 1
8 0
11 0
1
2
0 6 1 6
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor office1 o_door1 o_door1_l2 o_door1_l1 sponge right_arm
5
1 1
2 7
6 2
8 0
11 0
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor office2 o_door2 o_door2_l2 o_door2_l1 cup1 left_arm
5
0 1
2 9
3 0
9 0
12 0
1
2
0 3 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor office2 o_door2 o_door2_l2 o_door2_l1 cup1 right_arm
5
1 1
2 9
3 1
9 0
12 0
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor office2 o_door2 o_door2_l2 o_door2_l1 cup2 left_arm
5
0 1
2 9
4 0
9 0
12 0
1
2
0 4 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor office2 o_door2 o_door2_l2 o_door2_l1 cup2 right_arm
5
1 1
2 9
4 1
9 0
12 0
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor office2 o_door2 o_door2_l2 o_door2_l1 cup3 left_arm
5
0 1
2 9
5 0
9 0
12 0
1
2
0 5 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor office2 o_door2 o_door2_l2 o_door2_l1 cup3 right_arm
5
1 1
2 9
5 1
9 0
12 0
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor office2 o_door2 o_door2_l2 o_door2_l1 sponge left_arm
5
0 1
2 9
6 1
9 0
12 0
1
2
0 6 1 6
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying corridor office2 o_door2 o_door2_l2 o_door2_l1 sponge right_arm
5
1 1
2 9
6 2
9 0
12 0
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying kitchen corridor kitchen_door k_door_l1 k_door_l2 cup1 left_arm
5
0 1
2 3
3 0
7 0
10 0
1
2
0 3 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying kitchen corridor kitchen_door k_door_l1 k_door_l2 cup1 right_arm
5
1 1
2 3
3 1
7 0
10 0
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying kitchen corridor kitchen_door k_door_l1 k_door_l2 cup2 left_arm
5
0 1
2 3
4 0
7 0
10 0
1
2
0 4 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying kitchen corridor kitchen_door k_door_l1 k_door_l2 cup2 right_arm
5
1 1
2 3
4 1
7 0
10 0
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying kitchen corridor kitchen_door k_door_l1 k_door_l2 cup3 left_arm
5
0 1
2 3
5 0
7 0
10 0
1
2
0 5 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying kitchen corridor kitchen_door k_door_l1 k_door_l2 cup3 right_arm
5
1 1
2 3
5 1
7 0
10 0
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying kitchen corridor kitchen_door k_door_l1 k_door_l2 sponge left_arm
5
0 1
2 3
6 1
7 0
10 0
1
2
0 6 1 6
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying kitchen corridor kitchen_door k_door_l1 k_door_l2 sponge right_arm
5
1 1
2 3
6 2
7 0
10 0
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying office1 corridor o_door1 o_door1_l1 o_door1_l2 cup1 left_arm
5
0 1
2 6
3 0
8 0
11 0
1
2
0 3 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying office1 corridor o_door1 o_door1_l1 o_door1_l2 cup1 right_arm
5
1 1
2 6
3 1
8 0
11 0
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying office1 corridor o_door1 o_door1_l1 o_door1_l2 cup2 left_arm
5
0 1
2 6
4 0
8 0
11 0
1
2
0 4 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying office1 corridor o_door1 o_door1_l1 o_door1_l2 cup2 right_arm
5
1 1
2 6
4 1
8 0
11 0
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying office1 corridor o_door1 o_door1_l1 o_door1_l2 cup3 left_arm
5
0 1
2 6
5 0
8 0
11 0
1
2
0 5 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying office1 corridor o_door1 o_door1_l1 o_door1_l2 cup3 right_arm
5
1 1
2 6
5 1
8 0
11 0
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying office1 corridor o_door1 o_door1_l1 o_door1_l2 sponge left_arm
5
0 1
2 6
6 1
8 0
11 0
1
2
0 6 1 6
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying office1 corridor o_door1 o_door1_l1 o_door1_l2 sponge right_arm
5
1 1
2 6
6 2
8 0
11 0
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying office2 corridor o_door2 o_door2_l1 o_door2_l2 cup1 left_arm
5
0 1
2 8
3 0
9 0
12 0
1
2
0 3 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying office2 corridor o_door2 o_door2_l1 o_door2_l2 cup1 right_arm
5
1 1
2 8
3 1
9 0
12 0
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying office2 corridor o_door2 o_door2_l1 o_door2_l2 cup2 left_arm
5
0 1
2 8
4 0
9 0
12 0
1
2
0 4 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying office2 corridor o_door2 o_door2_l1 o_door2_l2 cup2 right_arm
5
1 1
2 8
4 1
9 0
12 0
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying office2 corridor o_door2 o_door2_l1 o_door2_l2 cup3 left_arm
5
0 1
2 8
5 0
9 0
12 0
1
2
0 5 0 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying office2 corridor o_door2 o_door2_l1 o_door2_l2 cup3 right_arm
5
1 1
2 8
5 1
9 0
12 0
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying office2 corridor o_door2 o_door2_l1 o_door2_l2 sponge left_arm
5
0 1
2 8
6 1
9 0
12 0
1
2
0 6 1 6
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-carrying office2 corridor o_door2 o_door2_l1 o_door2_l2 sponge right_arm
5
1 1
2 8
6 2
9 0
12 0
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-through-door-untucked-left-arm corridor kitchen kitchen_door k_door_l2 k_door_l1
6
0 1
1 0
2 4
7 0
10 0
13 0
2
0
1
0 2 4 3
1
end_operator
begin_operator
drive-through-door-untucked-left-arm corridor office1 o_door1 o_door1_l2 o_door1_l1
6
0 1
1 0
2 7
8 0
11 0
13 0
2
0
1
0 2 7 6
1
end_operator
begin_operator
drive-through-door-untucked-left-arm corridor office2 o_door2 o_door2_l2 o_door2_l1
6
0 1
1 0
2 9
9 0
12 0
13 0
2
0
1
0 2 9 8
1
end_operator
begin_operator
drive-through-door-untucked-left-arm kitchen corridor kitchen_door k_door_l1 k_door_l2
6
0 1
1 0
2 3
7 0
10 0
13 0
2
0
1
0 2 3 4
1
end_operator
begin_operator
drive-through-door-untucked-left-arm office1 corridor o_door1 o_door1_l1 o_door1_l2
6
0 1
1 0
2 6
8 0
11 0
13 0
2
0
1
0 2 6 7
1
end_operator
begin_operator
drive-through-door-untucked-left-arm office2 corridor o_door2 o_door2_l1 o_door2_l2
6
0 1
1 0
2 8
9 0
12 0
13 0
2
0
1
0 2 8 9
1
end_operator
begin_operator
drive-through-door-untucked-right-arm corridor kitchen kitchen_door k_door_l2 k_door_l1
6
0 0
1 1
2 4
7 0
10 0
14 0
2
0
1
0 2 4 3
1
end_operator
begin_operator
drive-through-door-untucked-right-arm corridor office1 o_door1 o_door1_l2 o_door1_l1
6
0 0
1 1
2 7
8 0
11 0
14 0
2
0
1
0 2 7 6
1
end_operator
begin_operator
drive-through-door-untucked-right-arm corridor office2 o_door2 o_door2_l2 o_door2_l1
6
0 0
1 1
2 9
9 0
12 0
14 0
2
0
1
0 2 9 8
1
end_operator
begin_operator
drive-through-door-untucked-right-arm kitchen corridor kitchen_door k_door_l1 k_door_l2
6
0 0
1 1
2 3
7 0
10 0
14 0
2
0
1
0 2 3 4
1
end_operator
begin_operator
drive-through-door-untucked-right-arm office1 corridor o_door1 o_door1_l1 o_door1_l2
6
0 0
1 1
2 6
8 0
11 0
14 0
2
0
1
0 2 6 7
1
end_operator
begin_operator
drive-through-door-untucked-right-arm office2 corridor o_door2 o_door2_l1 o_door2_l2
6
0 0
1 1
2 8
9 0
12 0
14 0
2
0
1
0 2 8 9
1
end_operator
begin_operator
drive-untucked corridor k_door_l2 o_door1_l2
5
0 1
1 1
2 4
13 0
14 0
2
0
1
0 2 4 7
1
end_operator
begin_operator
drive-untucked corridor k_door_l2 o_door2_l2
5
0 1
1 1
2 4
13 0
14 0
2
0
1
0 2 4 9
1
end_operator
begin_operator
drive-untucked corridor o_door1_l2 k_door_l2
5
0 1
1 1
2 7
13 0
14 0
2
0
1
0 2 7 4
1
end_operator
begin_operator
drive-untucked corridor o_door1_l2 o_door2_l2
5
0 1
1 1
2 7
13 0
14 0
2
0
1
0 2 7 9
1
end_operator
begin_operator
drive-untucked corridor o_door2_l2 k_door_l2
5
0 1
1 1
2 9
13 0
14 0
2
0
1
0 2 9 4
1
end_operator
begin_operator
drive-untucked corridor o_door2_l2 o_door1_l2
5
0 1
1 1
2 9
13 0
14 0
2
0
1
0 2 9 7
1
end_operator
begin_operator
drive-untucked kitchen init_location k_door_l1
5
0 1
1 1
2 2
13 0
14 0
2
0
1
0 2 2 3
1
end_operator
begin_operator
drive-untucked kitchen init_location k_table_l
5
0 1
1 1
2 2
13 0
14 0
2
0
1
0 2 2 5
1
end_operator
begin_operator
drive-untucked kitchen k_door_l1 init_location
5
0 1
1 1
2 3
13 0
14 0
2
0
1
0 2 3 2
1
end_operator
begin_operator
drive-untucked kitchen k_door_l1 k_table_l
5
0 1
1 1
2 3
13 0
14 0
2
0
1
0 2 3 5
1
end_operator
begin_operator
drive-untucked kitchen k_table_l init_location
5
0 1
1 1
2 5
13 0
14 0
2
0
1
0 2 5 2
1
end_operator
begin_operator
drive-untucked kitchen k_table_l k_door_l1
5
0 1
1 1
2 5
13 0
14 0
2
0
1
0 2 5 3
1
end_operator
begin_operator
drive-untucked office1 desk1_l o_door1_l1
5
0 1
1 1
2 0
13 0
14 0
2
0
1
0 2 0 6
1
end_operator
begin_operator
drive-untucked office1 o_door1_l1 desk1_l
5
0 1
1 1
2 6
13 0
14 0
2
0
1
0 2 6 0
1
end_operator
begin_operator
drive-untucked office2 desk2_l o_door2_l1
5
0 1
1 1
2 1
13 0
14 0
2
0
1
0 2 1 8
1
end_operator
begin_operator
drive-untucked office2 o_door2_l1 desk2_l
5
0 1
1 1
2 8
13 0
14 0
2
0
1
0 2 8 1
1
end_operator
begin_operator
drive-untucked-carrying corridor k_door_l2 o_door1_l2 cup1 left_arm
3
0 1
2 4
3 0
1
2
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor k_door_l2 o_door1_l2 cup1 right_arm
3
1 1
2 4
3 1
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor k_door_l2 o_door1_l2 cup2 left_arm
3
0 1
2 4
4 0
1
2
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor k_door_l2 o_door1_l2 cup2 right_arm
3
1 1
2 4
4 1
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor k_door_l2 o_door1_l2 cup3 left_arm
3
0 1
2 4
5 0
1
2
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor k_door_l2 o_door1_l2 cup3 right_arm
3
1 1
2 4
5 1
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor k_door_l2 o_door1_l2 sponge left_arm
3
0 1
2 4
6 1
1
2
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor k_door_l2 o_door1_l2 sponge right_arm
3
1 1
2 4
6 2
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor k_door_l2 o_door2_l2 cup1 left_arm
3
0 1
2 4
3 0
1
2
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor k_door_l2 o_door2_l2 cup1 right_arm
3
1 1
2 4
3 1
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor k_door_l2 o_door2_l2 cup2 left_arm
3
0 1
2 4
4 0
1
2
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor k_door_l2 o_door2_l2 cup2 right_arm
3
1 1
2 4
4 1
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor k_door_l2 o_door2_l2 cup3 left_arm
3
0 1
2 4
5 0
1
2
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor k_door_l2 o_door2_l2 cup3 right_arm
3
1 1
2 4
5 1
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor k_door_l2 o_door2_l2 sponge left_arm
3
0 1
2 4
6 1
1
2
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor k_door_l2 o_door2_l2 sponge right_arm
3
1 1
2 4
6 2
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door1_l2 k_door_l2 cup1 left_arm
3
0 1
2 7
3 0
1
2
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door1_l2 k_door_l2 cup1 right_arm
3
1 1
2 7
3 1
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door1_l2 k_door_l2 cup2 left_arm
3
0 1
2 7
4 0
1
2
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door1_l2 k_door_l2 cup2 right_arm
3
1 1
2 7
4 1
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door1_l2 k_door_l2 cup3 left_arm
3
0 1
2 7
5 0
1
2
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door1_l2 k_door_l2 cup3 right_arm
3
1 1
2 7
5 1
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door1_l2 k_door_l2 sponge left_arm
3
0 1
2 7
6 1
1
2
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door1_l2 k_door_l2 sponge right_arm
3
1 1
2 7
6 2
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door1_l2 o_door2_l2 cup1 left_arm
3
0 1
2 7
3 0
1
2
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door1_l2 o_door2_l2 cup1 right_arm
3
1 1
2 7
3 1
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door1_l2 o_door2_l2 cup2 left_arm
3
0 1
2 7
4 0
1
2
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door1_l2 o_door2_l2 cup2 right_arm
3
1 1
2 7
4 1
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door1_l2 o_door2_l2 cup3 left_arm
3
0 1
2 7
5 0
1
2
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door1_l2 o_door2_l2 cup3 right_arm
3
1 1
2 7
5 1
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door1_l2 o_door2_l2 sponge left_arm
3
0 1
2 7
6 1
1
2
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door1_l2 o_door2_l2 sponge right_arm
3
1 1
2 7
6 2
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door2_l2 k_door_l2 cup1 left_arm
3
0 1
2 9
3 0
1
2
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door2_l2 k_door_l2 cup1 right_arm
3
1 1
2 9
3 1
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door2_l2 k_door_l2 cup2 left_arm
3
0 1
2 9
4 0
1
2
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door2_l2 k_door_l2 cup2 right_arm
3
1 1
2 9
4 1
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door2_l2 k_door_l2 cup3 left_arm
3
0 1
2 9
5 0
1
2
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door2_l2 k_door_l2 cup3 right_arm
3
1 1
2 9
5 1
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door2_l2 k_door_l2 sponge left_arm
3
0 1
2 9
6 1
1
2
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door2_l2 k_door_l2 sponge right_arm
3
1 1
2 9
6 2
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door2_l2 o_door1_l2 cup1 left_arm
3
0 1
2 9
3 0
1
2
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door2_l2 o_door1_l2 cup1 right_arm
3
1 1
2 9
3 1
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door2_l2 o_door1_l2 cup2 left_arm
3
0 1
2 9
4 0
1
2
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door2_l2 o_door1_l2 cup2 right_arm
3
1 1
2 9
4 1
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door2_l2 o_door1_l2 cup3 left_arm
3
0 1
2 9
5 0
1
2
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door2_l2 o_door1_l2 cup3 right_arm
3
1 1
2 9
5 1
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door2_l2 o_door1_l2 sponge left_arm
3
0 1
2 9
6 1
1
2
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying corridor o_door2_l2 o_door1_l2 sponge right_arm
3
1 1
2 9
6 2
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen init_location k_door_l1 cup1 left_arm
3
0 1
2 2
3 0
1
2
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen init_location k_door_l1 cup1 right_arm
3
1 1
2 2
3 1
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen init_location k_door_l1 cup2 left_arm
3
0 1
2 2
4 0
1
2
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen init_location k_door_l1 cup2 right_arm
3
1 1
2 2
4 1
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen init_location k_door_l1 cup3 left_arm
3
0 1
2 2
5 0
1
2
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen init_location k_door_l1 cup3 right_arm
3
1 1
2 2
5 1
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen init_location k_door_l1 sponge left_arm
3
0 1
2 2
6 1
1
2
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen init_location k_door_l1 sponge right_arm
3
1 1
2 2
6 2
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen init_location k_table_l cup1 left_arm
3
0 1
2 2
3 0
1
2
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen init_location k_table_l cup1 right_arm
3
1 1
2 2
3 1
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen init_location k_table_l cup2 left_arm
3
0 1
2 2
4 0
1
2
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen init_location k_table_l cup2 right_arm
3
1 1
2 2
4 1
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen init_location k_table_l cup3 left_arm
3
0 1
2 2
5 0
1
2
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen init_location k_table_l cup3 right_arm
3
1 1
2 2
5 1
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen init_location k_table_l sponge left_arm
3
0 1
2 2
6 1
1
2
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen init_location k_table_l sponge right_arm
3
1 1
2 2
6 2
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_door_l1 init_location cup1 left_arm
3
0 1
2 3
3 0
1
2
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_door_l1 init_location cup1 right_arm
3
1 1
2 3
3 1
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_door_l1 init_location cup2 left_arm
3
0 1
2 3
4 0
1
2
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_door_l1 init_location cup2 right_arm
3
1 1
2 3
4 1
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_door_l1 init_location cup3 left_arm
3
0 1
2 3
5 0
1
2
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_door_l1 init_location cup3 right_arm
3
1 1
2 3
5 1
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_door_l1 init_location sponge left_arm
3
0 1
2 3
6 1
1
2
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_door_l1 init_location sponge right_arm
3
1 1
2 3
6 2
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_door_l1 k_table_l cup1 left_arm
3
0 1
2 3
3 0
1
2
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_door_l1 k_table_l cup1 right_arm
3
1 1
2 3
3 1
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_door_l1 k_table_l cup2 left_arm
3
0 1
2 3
4 0
1
2
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_door_l1 k_table_l cup2 right_arm
3
1 1
2 3
4 1
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_door_l1 k_table_l cup3 left_arm
3
0 1
2 3
5 0
1
2
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_door_l1 k_table_l cup3 right_arm
3
1 1
2 3
5 1
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_door_l1 k_table_l sponge left_arm
3
0 1
2 3
6 1
1
2
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_door_l1 k_table_l sponge right_arm
3
1 1
2 3
6 2
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_table_l init_location cup1 left_arm
3
0 1
2 5
3 0
1
2
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_table_l init_location cup1 right_arm
3
1 1
2 5
3 1
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_table_l init_location cup2 left_arm
3
0 1
2 5
4 0
1
2
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_table_l init_location cup2 right_arm
3
1 1
2 5
4 1
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_table_l init_location cup3 left_arm
3
0 1
2 5
5 0
1
2
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_table_l init_location cup3 right_arm
3
1 1
2 5
5 1
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_table_l init_location sponge left_arm
3
0 1
2 5
6 1
1
2
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_table_l init_location sponge right_arm
3
1 1
2 5
6 2
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_table_l k_door_l1 cup1 left_arm
3
0 1
2 5
3 0
1
2
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_table_l k_door_l1 cup1 right_arm
3
1 1
2 5
3 1
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_table_l k_door_l1 cup2 left_arm
3
0 1
2 5
4 0
1
2
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_table_l k_door_l1 cup2 right_arm
3
1 1
2 5
4 1
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_table_l k_door_l1 cup3 left_arm
3
0 1
2 5
5 0
1
2
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_table_l k_door_l1 cup3 right_arm
3
1 1
2 5
5 1
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_table_l k_door_l1 sponge left_arm
3
0 1
2 5
6 1
1
2
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying kitchen k_table_l k_door_l1 sponge right_arm
3
1 1
2 5
6 2
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office1 desk1_l o_door1_l1 cup1 left_arm
3
0 1
2 0
3 0
1
2
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office1 desk1_l o_door1_l1 cup1 right_arm
3
1 1
2 0
3 1
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office1 desk1_l o_door1_l1 cup2 left_arm
3
0 1
2 0
4 0
1
2
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office1 desk1_l o_door1_l1 cup2 right_arm
3
1 1
2 0
4 1
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office1 desk1_l o_door1_l1 cup3 left_arm
3
0 1
2 0
5 0
1
2
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office1 desk1_l o_door1_l1 cup3 right_arm
3
1 1
2 0
5 1
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office1 desk1_l o_door1_l1 sponge left_arm
3
0 1
2 0
6 1
1
2
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office1 desk1_l o_door1_l1 sponge right_arm
3
1 1
2 0
6 2
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office1 o_door1_l1 desk1_l cup1 left_arm
3
0 1
2 6
3 0
1
2
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office1 o_door1_l1 desk1_l cup1 right_arm
3
1 1
2 6
3 1
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office1 o_door1_l1 desk1_l cup2 left_arm
3
0 1
2 6
4 0
1
2
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office1 o_door1_l1 desk1_l cup2 right_arm
3
1 1
2 6
4 1
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office1 o_door1_l1 desk1_l cup3 left_arm
3
0 1
2 6
5 0
1
2
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office1 o_door1_l1 desk1_l cup3 right_arm
3
1 1
2 6
5 1
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office1 o_door1_l1 desk1_l sponge left_arm
3
0 1
2 6
6 1
1
2
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office1 o_door1_l1 desk1_l sponge right_arm
3
1 1
2 6
6 2
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office2 desk2_l o_door2_l1 cup1 left_arm
3
0 1
2 1
3 0
1
2
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office2 desk2_l o_door2_l1 cup1 right_arm
3
1 1
2 1
3 1
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office2 desk2_l o_door2_l1 cup2 left_arm
3
0 1
2 1
4 0
1
2
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office2 desk2_l o_door2_l1 cup2 right_arm
3
1 1
2 1
4 1
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office2 desk2_l o_door2_l1 cup3 left_arm
3
0 1
2 1
5 0
1
2
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office2 desk2_l o_door2_l1 cup3 right_arm
3
1 1
2 1
5 1
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office2 desk2_l o_door2_l1 sponge left_arm
3
0 1
2 1
6 1
1
2
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office2 desk2_l o_door2_l1 sponge right_arm
3
1 1
2 1
6 2
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office2 o_door2_l1 desk2_l cup1 left_arm
3
0 1
2 8
3 0
1
2
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office2 o_door2_l1 desk2_l cup1 right_arm
3
1 1
2 8
3 1
1
2
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office2 o_door2_l1 desk2_l cup2 left_arm
3
0 1
2 8
4 0
1
2
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office2 o_door2_l1 desk2_l cup2 right_arm
3
1 1
2 8
4 1
1
2
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office2 o_door2_l1 desk2_l cup3 left_arm
3
0 1
2 8
5 0
1
2
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office2 o_door2_l1 desk2_l cup3 right_arm
3
1 1
2 8
5 1
1
2
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office2 o_door2_l1 desk2_l sponge left_arm
3
0 1
2 8
6 1
1
2
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
drive-untucked-carrying office2 o_door2_l1 desk2_l sponge right_arm
3
1 1
2 8
6 2
1
2
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
drive-untucked-left-arm corridor k_door_l2 o_door1_l2
4
0 1
1 0
2 4
13 0
2
0
1
0 2 4 7
1
end_operator
begin_operator
drive-untucked-left-arm corridor k_door_l2 o_door2_l2
4
0 1
1 0
2 4
13 0
2
0
1
0 2 4 9
1
end_operator
begin_operator
drive-untucked-left-arm corridor o_door1_l2 k_door_l2
4
0 1
1 0
2 7
13 0
2
0
1
0 2 7 4
1
end_operator
begin_operator
drive-untucked-left-arm corridor o_door1_l2 o_door2_l2
4
0 1
1 0
2 7
13 0
2
0
1
0 2 7 9
1
end_operator
begin_operator
drive-untucked-left-arm corridor o_door2_l2 k_door_l2
4
0 1
1 0
2 9
13 0
2
0
1
0 2 9 4
1
end_operator
begin_operator
drive-untucked-left-arm corridor o_door2_l2 o_door1_l2
4
0 1
1 0
2 9
13 0
2
0
1
0 2 9 7
1
end_operator
begin_operator
drive-untucked-left-arm kitchen init_location k_door_l1
4
0 1
1 0
2 2
13 0
2
0
1
0 2 2 3
1
end_operator
begin_operator
drive-untucked-left-arm kitchen init_location k_table_l
4
0 1
1 0
2 2
13 0
2
0
1
0 2 2 5
1
end_operator
begin_operator
drive-untucked-left-arm kitchen k_door_l1 init_location
4
0 1
1 0
2 3
13 0
2
0
1
0 2 3 2
1
end_operator
begin_operator
drive-untucked-left-arm kitchen k_door_l1 k_table_l
4
0 1
1 0
2 3
13 0
2
0
1
0 2 3 5
1
end_operator
begin_operator
drive-untucked-left-arm kitchen k_table_l init_location
4
0 1
1 0
2 5
13 0
2
0
1
0 2 5 2
1
end_operator
begin_operator
drive-untucked-left-arm kitchen k_table_l k_door_l1
4
0 1
1 0
2 5
13 0
2
0
1
0 2 5 3
1
end_operator
begin_operator
drive-untucked-left-arm office1 desk1_l o_door1_l1
4
0 1
1 0
2 0
13 0
2
0
1
0 2 0 6
1
end_operator
begin_operator
drive-untucked-left-arm office1 o_door1_l1 desk1_l
4
0 1
1 0
2 6
13 0
2
0
1
0 2 6 0
1
end_operator
begin_operator
drive-untucked-left-arm office2 desk2_l o_door2_l1
4
0 1
1 0
2 1
13 0
2
0
1
0 2 1 8
1
end_operator
begin_operator
drive-untucked-left-arm office2 o_door2_l1 desk2_l
4
0 1
1 0
2 8
13 0
2
0
1
0 2 8 1
1
end_operator
begin_operator
drive-untucked-right-arm corridor k_door_l2 o_door1_l2
4
0 0
1 1
2 4
14 0
2
0
1
0 2 4 7
1
end_operator
begin_operator
drive-untucked-right-arm corridor k_door_l2 o_door2_l2
4
0 0
1 1
2 4
14 0
2
0
1
0 2 4 9
1
end_operator
begin_operator
drive-untucked-right-arm corridor o_door1_l2 k_door_l2
4
0 0
1 1
2 7
14 0
2
0
1
0 2 7 4
1
end_operator
begin_operator
drive-untucked-right-arm corridor o_door1_l2 o_door2_l2
4
0 0
1 1
2 7
14 0
2
0
1
0 2 7 9
1
end_operator
begin_operator
drive-untucked-right-arm corridor o_door2_l2 k_door_l2
4
0 0
1 1
2 9
14 0
2
0
1
0 2 9 4
1
end_operator
begin_operator
drive-untucked-right-arm corridor o_door2_l2 o_door1_l2
4
0 0
1 1
2 9
14 0
2
0
1
0 2 9 7
1
end_operator
begin_operator
drive-untucked-right-arm kitchen init_location k_door_l1
4
0 0
1 1
2 2
14 0
2
0
1
0 2 2 3
1
end_operator
begin_operator
drive-untucked-right-arm kitchen init_location k_table_l
4
0 0
1 1
2 2
14 0
2
0
1
0 2 2 5
1
end_operator
begin_operator
drive-untucked-right-arm kitchen k_door_l1 init_location
4
0 0
1 1
2 3
14 0
2
0
1
0 2 3 2
1
end_operator
begin_operator
drive-untucked-right-arm kitchen k_door_l1 k_table_l
4
0 0
1 1
2 3
14 0
2
0
1
0 2 3 5
1
end_operator
begin_operator
drive-untucked-right-arm kitchen k_table_l init_location
4
0 0
1 1
2 5
14 0
2
0
1
0 2 5 2
1
end_operator
begin_operator
drive-untucked-right-arm kitchen k_table_l k_door_l1
4
0 0
1 1
2 5
14 0
2
0
1
0 2 5 3
1
end_operator
begin_operator
drive-untucked-right-arm office1 desk1_l o_door1_l1
4
0 0
1 1
2 0
14 0
2
0
1
0 2 0 6
1
end_operator
begin_operator
drive-untucked-right-arm office1 o_door1_l1 desk1_l
4
0 0
1 1
2 6
14 0
2
0
1
0 2 6 0
1
end_operator
begin_operator
drive-untucked-right-arm office2 desk2_l o_door2_l1
4
0 0
1 1
2 1
14 0
2
0
1
0 2 1 8
1
end_operator
begin_operator
drive-untucked-right-arm office2 o_door2_l1 desk2_l
4
0 0
1 1
2 8
14 0
2
0
1
0 2 8 1
1
end_operator
begin_operator
open-door k_door_l1 kitchen_door left_arm
6
0 0
1 0
2 3
7 1
10 0
13 0
1
3
0 0 0 1
0 7 1 0
0 10 0 1
1
end_operator
begin_operator
open-door k_door_l1 kitchen_door right_arm
6
0 0
1 0
2 3
7 1
10 0
14 0
1
3
0 1 0 1
0 7 1 0
0 10 0 1
1
end_operator
begin_operator
open-door k_door_l2 kitchen_door left_arm
6
0 0
1 0
2 4
7 1
10 0
13 0
1
3
0 0 0 1
0 7 1 0
0 10 0 1
1
end_operator
begin_operator
open-door k_door_l2 kitchen_door right_arm
6
0 0
1 0
2 4
7 1
10 0
14 0
1
3
0 1 0 1
0 7 1 0
0 10 0 1
1
end_operator
begin_operator
open-door o_door1_l1 o_door1 left_arm
6
0 0
1 0
2 6
8 1
11 0
13 0
1
3
0 0 0 1
0 8 1 0
0 11 0 1
1
end_operator
begin_operator
open-door o_door1_l1 o_door1 right_arm
6
0 0
1 0
2 6
8 1
11 0
14 0
1
3
0 1 0 1
0 8 1 0
0 11 0 1
1
end_operator
begin_operator
open-door o_door1_l2 o_door1 left_arm
6
0 0
1 0
2 7
8 1
11 0
13 0
1
3
0 0 0 1
0 8 1 0
0 11 0 1
1
end_operator
begin_operator
open-door o_door1_l2 o_door1 right_arm
6
0 0
1 0
2 7
8 1
11 0
14 0
1
3
0 1 0 1
0 8 1 0
0 11 0 1
1
end_operator
begin_operator
open-door o_door2_l1 o_door2 left_arm
6
0 0
1 0
2 8
9 1
12 0
13 0
1
3
0 0 0 1
0 9 1 0
0 12 0 1
1
end_operator
begin_operator
open-door o_door2_l1 o_door2 right_arm
6
0 0
1 0
2 8
9 1
12 0
14 0
1
3
0 1 0 1
0 9 1 0
0 12 0 1
1
end_operator
begin_operator
open-door o_door2_l2 o_door2 left_arm
6
0 0
1 0
2 9
9 1
12 0
13 0
1
3
0 0 0 1
0 9 1 0
0 12 0 1
1
end_operator
begin_operator
open-door o_door2_l2 o_door2 right_arm
6
0 0
1 0
2 9
9 1
12 0
14 0
1
3
0 1 0 1
0 9 1 0
0 12 0 1
1
end_operator
begin_operator
pickup-object desk1_l cup1 desk1 left_arm
6
0 0
1 0
2 0
3 2
13 0
15 0
2
4
0 0 0 1
0 3 2 0
0 13 0 1
0 15 0 1
2
0 0 0 1
0 15 0 1
1
end_operator
begin_operator
pickup-object desk1_l cup1 desk1 right_arm
6
0 0
1 0
2 0
3 2
14 0
15 0
2
4
0 1 0 1
0 3 2 1
0 14 0 1
0 15 0 1
2
0 1 0 1
0 15 0 1
1
end_operator
begin_operator
pickup-object desk1_l cup2 desk1 left_arm
6
0 0
1 0
2 0
4 2
13 0
15 0
2
4
0 0 0 1
0 4 2 0
0 13 0 1
0 15 0 1
2
0 0 0 1
0 15 0 1
1
end_operator
begin_operator
pickup-object desk1_l cup2 desk1 right_arm
6
0 0
1 0
2 0
4 2
14 0
15 0
2
4
0 1 0 1
0 4 2 1
0 14 0 1
0 15 0 1
2
0 1 0 1
0 15 0 1
1
end_operator
begin_operator
pickup-object desk1_l cup3 desk1 left_arm
6
0 0
1 0
2 0
5 2
13 0
15 0
2
4
0 0 0 1
0 5 2 0
0 13 0 1
0 15 0 1
2
0 0 0 1
0 15 0 1
1
end_operator
begin_operator
pickup-object desk1_l cup3 desk1 right_arm
6
0 0
1 0
2 0
5 2
14 0
15 0
2
4
0 1 0 1
0 5 2 1
0 14 0 1
0 15 0 1
2
0 1 0 1
0 15 0 1
1
end_operator
begin_operator
pickup-object desk1_l sponge desk1 left_arm
6
0 0
1 0
2 0
6 3
13 0
15 0
2
4
0 0 0 1
0 6 3 1
0 13 0 1
0 15 0 1
2
0 0 0 1
0 15 0 1
1
end_operator
begin_operator
pickup-object desk1_l sponge desk1 right_arm
6
0 0
1 0
2 0
6 3
14 0
15 0
2
4
0 1 0 1
0 6 3 2
0 14 0 1
0 15 0 1
2
0 1 0 1
0 15 0 1
1
end_operator
begin_operator
pickup-object desk2_l cup1 desk2 left_arm
6
0 0
1 0
2 1
3 3
13 0
16 0
2
4
0 0 0 1
0 3 3 0
0 13 0 1
0 16 0 1
2
0 0 0 1
0 16 0 1
1
end_operator
begin_operator
pickup-object desk2_l cup1 desk2 right_arm
6
0 0
1 0
2 1
3 3
14 0
16 0
2
4
0 1 0 1
0 3 3 1
0 14 0 1
0 16 0 1
2
0 1 0 1
0 16 0 1
1
end_operator
begin_operator
pickup-object desk2_l cup2 desk2 left_arm
6
0 0
1 0
2 1
4 3
13 0
16 0
2
4
0 0 0 1
0 4 3 0
0 13 0 1
0 16 0 1
2
0 0 0 1
0 16 0 1
1
end_operator
begin_operator
pickup-object desk2_l cup2 desk2 right_arm
6
0 0
1 0
2 1
4 3
14 0
16 0
2
4
0 1 0 1
0 4 3 1
0 14 0 1
0 16 0 1
2
0 1 0 1
0 16 0 1
1
end_operator
begin_operator
pickup-object desk2_l cup3 desk2 left_arm
6
0 0
1 0
2 1
5 3
13 0
16 0
2
4
0 0 0 1
0 5 3 0
0 13 0 1
0 16 0 1
2
0 0 0 1
0 16 0 1
1
end_operator
begin_operator
pickup-object desk2_l cup3 desk2 right_arm
6
0 0
1 0
2 1
5 3
14 0
16 0
2
4
0 1 0 1
0 5 3 1
0 14 0 1
0 16 0 1
2
0 1 0 1
0 16 0 1
1
end_operator
begin_operator
pickup-object desk2_l sponge desk2 left_arm
6
0 0
1 0
2 1
6 4
13 0
16 0
2
4
0 0 0 1
0 6 4 1
0 13 0 1
0 16 0 1
2
0 0 0 1
0 16 0 1
1
end_operator
begin_operator
pickup-object desk2_l sponge desk2 right_arm
6
0 0
1 0
2 1
6 4
14 0
16 0
2
4
0 1 0 1
0 6 4 2
0 14 0 1
0 16 0 1
2
0 1 0 1
0 16 0 1
1
end_operator
begin_operator
pickup-object k_table_l cup1 kitchen_table left_arm
6
0 0
1 0
2 5
3 4
13 0
17 0
2
4
0 0 0 1
0 3 4 0
0 13 0 1
0 17 0 1
2
0 0 0 1
0 17 0 1
1
end_operator
begin_operator
pickup-object k_table_l cup1 kitchen_table right_arm
6
0 0
1 0
2 5
3 4
14 0
17 0
2
4
0 1 0 1
0 3 4 1
0 14 0 1
0 17 0 1
2
0 1 0 1
0 17 0 1
1
end_operator
begin_operator
pickup-object k_table_l cup2 kitchen_table left_arm
6
0 0
1 0
2 5
4 4
13 0
17 0
2
4
0 0 0 1
0 4 4 0
0 13 0 1
0 17 0 1
2
0 0 0 1
0 17 0 1
1
end_operator
begin_operator
pickup-object k_table_l cup2 kitchen_table right_arm
6
0 0
1 0
2 5
4 4
14 0
17 0
2
4
0 1 0 1
0 4 4 1
0 14 0 1
0 17 0 1
2
0 1 0 1
0 17 0 1
1
end_operator
begin_operator
pickup-object k_table_l cup3 kitchen_table left_arm
6
0 0
1 0
2 5
5 4
13 0
17 0
2
4
0 0 0 1
0 5 4 0
0 13 0 1
0 17 0 1
2
0 0 0 1
0 17 0 1
1
end_operator
begin_operator
pickup-object k_table_l cup3 kitchen_table right_arm
6
0 0
1 0
2 5
5 4
14 0
17 0
2
4
0 1 0 1
0 5 4 1
0 14 0 1
0 17 0 1
2
0 1 0 1
0 17 0 1
1
end_operator
begin_operator
pickup-object k_table_l sponge kitchen_table left_arm
6
0 0
1 0
2 5
6 5
13 0
17 0
2
4
0 0 0 1
0 6 5 1
0 13 0 1
0 17 0 1
2
0 0 0 1
0 17 0 1
1
end_operator
begin_operator
pickup-object k_table_l sponge kitchen_table right_arm
6
0 0
1 0
2 5
6 5
14 0
17 0
2
4
0 1 0 1
0 6 5 2
0 14 0 1
0 17 0 1
2
0 1 0 1
0 17 0 1
1
end_operator
begin_operator
pickup-object-blind desk1_l cup1 desk1 left_arm
6
0 0
1 0
2 0
3 2
13 0
15 1
3
1
0 0 0 1
3
0 0 0 1
0 3 2 0
0 13 0 1
2
0 0 0 1
0 3 2 5
1
end_operator
begin_operator
pickup-object-blind desk1_l cup1 desk1 right_arm
6
0 0
1 0
2 0
3 2
14 0
15 1
3
1
0 1 0 1
3
0 1 0 1
0 3 2 1
0 14 0 1
2
0 1 0 1
0 3 2 5
1
end_operator
begin_operator
pickup-object-blind desk1_l cup2 desk1 left_arm
6
0 0
1 0
2 0
4 2
13 0
15 1
3
1
0 0 0 1
3
0 0 0 1
0 4 2 0
0 13 0 1
2
0 0 0 1
0 4 2 5
1
end_operator
begin_operator
pickup-object-blind desk1_l cup2 desk1 right_arm
6
0 0
1 0
2 0
4 2
14 0
15 1
3
1
0 1 0 1
3
0 1 0 1
0 4 2 1
0 14 0 1
2
0 1 0 1
0 4 2 5
1
end_operator
begin_operator
pickup-object-blind desk1_l cup3 desk1 left_arm
6
0 0
1 0
2 0
5 2
13 0
15 1
3
1
0 0 0 1
3
0 0 0 1
0 5 2 0
0 13 0 1
2
0 0 0 1
0 5 2 5
1
end_operator
begin_operator
pickup-object-blind desk1_l cup3 desk1 right_arm
6
0 0
1 0
2 0
5 2
14 0
15 1
3
1
0 1 0 1
3
0 1 0 1
0 5 2 1
0 14 0 1
2
0 1 0 1
0 5 2 5
1
end_operator
begin_operator
pickup-object-blind desk1_l sponge desk1 left_arm
6
0 0
1 0
2 0
6 3
13 0
15 1
3
1
0 0 0 1
3
0 0 0 1
0 6 3 1
0 13 0 1
2
0 0 0 1
0 6 3 6
1
end_operator
begin_operator
pickup-object-blind desk1_l sponge desk1 right_arm
6
0 0
1 0
2 0
6 3
14 0
15 1
3
1
0 1 0 1
3
0 1 0 1
0 6 3 2
0 14 0 1
2
0 1 0 1
0 6 3 6
1
end_operator
begin_operator
pickup-object-blind desk2_l cup1 desk2 left_arm
6
0 0
1 0
2 1
3 3
13 0
16 1
3
1
0 0 0 1
3
0 0 0 1
0 3 3 0
0 13 0 1
2
0 0 0 1
0 3 3 5
1
end_operator
begin_operator
pickup-object-blind desk2_l cup1 desk2 right_arm
6
0 0
1 0
2 1
3 3
14 0
16 1
3
1
0 1 0 1
3
0 1 0 1
0 3 3 1
0 14 0 1
2
0 1 0 1
0 3 3 5
1
end_operator
begin_operator
pickup-object-blind desk2_l cup2 desk2 left_arm
6
0 0
1 0
2 1
4 3
13 0
16 1
3
1
0 0 0 1
3
0 0 0 1
0 4 3 0
0 13 0 1
2
0 0 0 1
0 4 3 5
1
end_operator
begin_operator
pickup-object-blind desk2_l cup2 desk2 right_arm
6
0 0
1 0
2 1
4 3
14 0
16 1
3
1
0 1 0 1
3
0 1 0 1
0 4 3 1
0 14 0 1
2
0 1 0 1
0 4 3 5
1
end_operator
begin_operator
pickup-object-blind desk2_l cup3 desk2 left_arm
6
0 0
1 0
2 1
5 3
13 0
16 1
3
1
0 0 0 1
3
0 0 0 1
0 5 3 0
0 13 0 1
2
0 0 0 1
0 5 3 5
1
end_operator
begin_operator
pickup-object-blind desk2_l cup3 desk2 right_arm
6
0 0
1 0
2 1
5 3
14 0
16 1
3
1
0 1 0 1
3
0 1 0 1
0 5 3 1
0 14 0 1
2
0 1 0 1
0 5 3 5
1
end_operator
begin_operator
pickup-object-blind desk2_l sponge desk2 left_arm
6
0 0
1 0
2 1
6 4
13 0
16 1
3
1
0 0 0 1
3
0 0 0 1
0 6 4 1
0 13 0 1
2
0 0 0 1
0 6 4 6
1
end_operator
begin_operator
pickup-object-blind desk2_l sponge desk2 right_arm
6
0 0
1 0
2 1
6 4
14 0
16 1
3
1
0 1 0 1
3
0 1 0 1
0 6 4 2
0 14 0 1
2
0 1 0 1
0 6 4 6
1
end_operator
begin_operator
pickup-object-blind k_table_l cup1 kitchen_table left_arm
6
0 0
1 0
2 5
3 4
13 0
17 1
3
1
0 0 0 1
3
0 0 0 1
0 3 4 0
0 13 0 1
2
0 0 0 1
0 3 4 5
1
end_operator
begin_operator
pickup-object-blind k_table_l cup1 kitchen_table right_arm
6
0 0
1 0
2 5
3 4
14 0
17 1
3
1
0 1 0 1
3
0 1 0 1
0 3 4 1
0 14 0 1
2
0 1 0 1
0 3 4 5
1
end_operator
begin_operator
pickup-object-blind k_table_l cup2 kitchen_table left_arm
6
0 0
1 0
2 5
4 4
13 0
17 1
3
1
0 0 0 1
3
0 0 0 1
0 4 4 0
0 13 0 1
2
0 0 0 1
0 4 4 5
1
end_operator
begin_operator
pickup-object-blind k_table_l cup2 kitchen_table right_arm
6
0 0
1 0
2 5
4 4
14 0
17 1
3
1
0 1 0 1
3
0 1 0 1
0 4 4 1
0 14 0 1
2
0 1 0 1
0 4 4 5
1
end_operator
begin_operator
pickup-object-blind k_table_l cup3 kitchen_table left_arm
6
0 0
1 0
2 5
5 4
13 0
17 1
3
1
0 0 0 1
3
0 0 0 1
0 5 4 0
0 13 0 1
2
0 0 0 1
0 5 4 5
1
end_operator
begin_operator
pickup-object-blind k_table_l cup3 kitchen_table right_arm
6
0 0
1 0
2 5
5 4
14 0
17 1
3
1
0 1 0 1
3
0 1 0 1
0 5 4 1
0 14 0 1
2
0 1 0 1
0 5 4 5
1
end_operator
begin_operator
pickup-object-blind k_table_l sponge kitchen_table left_arm
6
0 0
1 0
2 5
6 5
13 0
17 1
3
1
0 0 0 1
3
0 0 0 1
0 6 5 1
0 13 0 1
2
0 0 0 1
0 6 5 6
1
end_operator
begin_operator
pickup-object-blind k_table_l sponge kitchen_table right_arm
6
0 0
1 0
2 5
6 5
14 0
17 1
3
1
0 1 0 1
3
0 1 0 1
0 6 5 2
0 14 0 1
2
0 1 0 1
0 6 5 6
1
end_operator
begin_operator
putdown-object desk1_l cup1 desk1 left_arm
5
0 0
1 0
2 0
3 0
15 0
2
4
0 0 0 1
0 3 0 2
0 13 -1 0
0 15 0 1
2
0 0 0 1
0 15 0 1
1
end_operator
begin_operator
putdown-object desk1_l cup1 desk1 right_arm
5
0 0
1 0
2 0
3 1
15 0
2
4
0 1 0 1
0 3 1 2
0 14 -1 0
0 15 0 1
2
0 1 0 1
0 15 0 1
1
end_operator
begin_operator
putdown-object desk1_l cup2 desk1 left_arm
5
0 0
1 0
2 0
4 0
15 0
2
4
0 0 0 1
0 4 0 2
0 13 -1 0
0 15 0 1
2
0 0 0 1
0 15 0 1
1
end_operator
begin_operator
putdown-object desk1_l cup2 desk1 right_arm
5
0 0
1 0
2 0
4 1
15 0
2
4
0 1 0 1
0 4 1 2
0 14 -1 0
0 15 0 1
2
0 1 0 1
0 15 0 1
1
end_operator
begin_operator
putdown-object desk1_l cup3 desk1 left_arm
5
0 0
1 0
2 0
5 0
15 0
2
4
0 0 0 1
0 5 0 2
0 13 -1 0
0 15 0 1
2
0 0 0 1
0 15 0 1
1
end_operator
begin_operator
putdown-object desk1_l cup3 desk1 right_arm
5
0 0
1 0
2 0
5 1
15 0
2
4
0 1 0 1
0 5 1 2
0 14 -1 0
0 15 0 1
2
0 1 0 1
0 15 0 1
1
end_operator
begin_operator
putdown-object desk1_l sponge desk1 left_arm
5
0 0
1 0
2 0
6 1
15 0
2
4
0 0 0 1
0 6 1 3
0 13 -1 0
0 15 0 1
2
0 0 0 1
0 15 0 1
1
end_operator
begin_operator
putdown-object desk1_l sponge desk1 right_arm
5
0 0
1 0
2 0
6 2
15 0
2
4
0 1 0 1
0 6 2 3
0 14 -1 0
0 15 0 1
2
0 1 0 1
0 15 0 1
1
end_operator
begin_operator
putdown-object desk2_l cup1 desk2 left_arm
5
0 0
1 0
2 1
3 0
16 0
2
4
0 0 0 1
0 3 0 3
0 13 -1 0
0 16 0 1
2
0 0 0 1
0 16 0 1
1
end_operator
begin_operator
putdown-object desk2_l cup1 desk2 right_arm
5
0 0
1 0
2 1
3 1
16 0
2
4
0 1 0 1
0 3 1 3
0 14 -1 0
0 16 0 1
2
0 1 0 1
0 16 0 1
1
end_operator
begin_operator
putdown-object desk2_l cup2 desk2 left_arm
5
0 0
1 0
2 1
4 0
16 0
2
4
0 0 0 1
0 4 0 3
0 13 -1 0
0 16 0 1
2
0 0 0 1
0 16 0 1
1
end_operator
begin_operator
putdown-object desk2_l cup2 desk2 right_arm
5
0 0
1 0
2 1
4 1
16 0
2
4
0 1 0 1
0 4 1 3
0 14 -1 0
0 16 0 1
2
0 1 0 1
0 16 0 1
1
end_operator
begin_operator
putdown-object desk2_l cup3 desk2 left_arm
5
0 0
1 0
2 1
5 0
16 0
2
4
0 0 0 1
0 5 0 3
0 13 -1 0
0 16 0 1
2
0 0 0 1
0 16 0 1
1
end_operator
begin_operator
putdown-object desk2_l cup3 desk2 right_arm
5
0 0
1 0
2 1
5 1
16 0
2
4
0 1 0 1
0 5 1 3
0 14 -1 0
0 16 0 1
2
0 1 0 1
0 16 0 1
1
end_operator
begin_operator
putdown-object desk2_l sponge desk2 left_arm
5
0 0
1 0
2 1
6 1
16 0
2
4
0 0 0 1
0 6 1 4
0 13 -1 0
0 16 0 1
2
0 0 0 1
0 16 0 1
1
end_operator
begin_operator
putdown-object desk2_l sponge desk2 right_arm
5
0 0
1 0
2 1
6 2
16 0
2
4
0 1 0 1
0 6 2 4
0 14 -1 0
0 16 0 1
2
0 1 0 1
0 16 0 1
1
end_operator
begin_operator
putdown-object k_table_l cup1 kitchen_table left_arm
5
0 0
1 0
2 5
3 0
17 0
2
4
0 0 0 1
0 3 0 4
0 13 -1 0
0 17 0 1
2
0 0 0 1
0 17 0 1
1
end_operator
begin_operator
putdown-object k_table_l cup1 kitchen_table right_arm
5
0 0
1 0
2 5
3 1
17 0
2
4
0 1 0 1
0 3 1 4
0 14 -1 0
0 17 0 1
2
0 1 0 1
0 17 0 1
1
end_operator
begin_operator
putdown-object k_table_l cup2 kitchen_table left_arm
5
0 0
1 0
2 5
4 0
17 0
2
4
0 0 0 1
0 4 0 4
0 13 -1 0
0 17 0 1
2
0 0 0 1
0 17 0 1
1
end_operator
begin_operator
putdown-object k_table_l cup2 kitchen_table right_arm
5
0 0
1 0
2 5
4 1
17 0
2
4
0 1 0 1
0 4 1 4
0 14 -1 0
0 17 0 1
2
0 1 0 1
0 17 0 1
1
end_operator
begin_operator
putdown-object k_table_l cup3 kitchen_table left_arm
5
0 0
1 0
2 5
5 0
17 0
2
4
0 0 0 1
0 5 0 4
0 13 -1 0
0 17 0 1
2
0 0 0 1
0 17 0 1
1
end_operator
begin_operator
putdown-object k_table_l cup3 kitchen_table right_arm
5
0 0
1 0
2 5
5 1
17 0
2
4
0 1 0 1
0 5 1 4
0 14 -1 0
0 17 0 1
2
0 1 0 1
0 17 0 1
1
end_operator
begin_operator
putdown-object k_table_l sponge kitchen_table left_arm
5
0 0
1 0
2 5
6 1
17 0
2
4
0 0 0 1
0 6 1 5
0 13 -1 0
0 17 0 1
2
0 0 0 1
0 17 0 1
1
end_operator
begin_operator
putdown-object k_table_l sponge kitchen_table right_arm
5
0 0
1 0
2 5
6 2
17 0
2
4
0 1 0 1
0 6 2 5
0 14 -1 0
0 17 0 1
2
0 1 0 1
0 17 0 1
1
end_operator
begin_operator
putdown-object-blind desk1_l cup1 desk1 left_arm
5
0 0
1 0
2 0
3 0
15 1
3
1
0 0 0 1
3
0 0 0 1
0 3 0 2
0 13 -1 0
3
0 0 0 1
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
putdown-object-blind desk1_l cup1 desk1 right_arm
5
0 0
1 0
2 0
3 1
15 1
3
1
0 1 0 1
3
0 1 0 1
0 3 1 2
0 14 -1 0
3
0 1 0 1
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
putdown-object-blind desk1_l cup2 desk1 left_arm
5
0 0
1 0
2 0
4 0
15 1
3
1
0 0 0 1
3
0 0 0 1
0 4 0 2
0 13 -1 0
3
0 0 0 1
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
putdown-object-blind desk1_l cup2 desk1 right_arm
5
0 0
1 0
2 0
4 1
15 1
3
1
0 1 0 1
3
0 1 0 1
0 4 1 2
0 14 -1 0
3
0 1 0 1
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
putdown-object-blind desk1_l cup3 desk1 left_arm
5
0 0
1 0
2 0
5 0
15 1
3
1
0 0 0 1
3
0 0 0 1
0 5 0 2
0 13 -1 0
3
0 0 0 1
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
putdown-object-blind desk1_l cup3 desk1 right_arm
5
0 0
1 0
2 0
5 1
15 1
3
1
0 1 0 1
3
0 1 0 1
0 5 1 2
0 14 -1 0
3
0 1 0 1
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
putdown-object-blind desk1_l sponge desk1 left_arm
5
0 0
1 0
2 0
6 1
15 1
3
1
0 0 0 1
3
0 0 0 1
0 6 1 3
0 13 -1 0
3
0 0 0 1
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
putdown-object-blind desk1_l sponge desk1 right_arm
5
0 0
1 0
2 0
6 2
15 1
3
1
0 1 0 1
3
0 1 0 1
0 6 2 3
0 14 -1 0
3
0 1 0 1
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
putdown-object-blind desk2_l cup1 desk2 left_arm
5
0 0
1 0
2 1
3 0
16 1
3
1
0 0 0 1
3
0 0 0 1
0 3 0 3
0 13 -1 0
3
0 0 0 1
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
putdown-object-blind desk2_l cup1 desk2 right_arm
5
0 0
1 0
2 1
3 1
16 1
3
1
0 1 0 1
3
0 1 0 1
0 3 1 3
0 14 -1 0
3
0 1 0 1
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
putdown-object-blind desk2_l cup2 desk2 left_arm
5
0 0
1 0
2 1
4 0
16 1
3
1
0 0 0 1
3
0 0 0 1
0 4 0 3
0 13 -1 0
3
0 0 0 1
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
putdown-object-blind desk2_l cup2 desk2 right_arm
5
0 0
1 0
2 1
4 1
16 1
3
1
0 1 0 1
3
0 1 0 1
0 4 1 3
0 14 -1 0
3
0 1 0 1
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
putdown-object-blind desk2_l cup3 desk2 left_arm
5
0 0
1 0
2 1
5 0
16 1
3
1
0 0 0 1
3
0 0 0 1
0 5 0 3
0 13 -1 0
3
0 0 0 1
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
putdown-object-blind desk2_l cup3 desk2 right_arm
5
0 0
1 0
2 1
5 1
16 1
3
1
0 1 0 1
3
0 1 0 1
0 5 1 3
0 14 -1 0
3
0 1 0 1
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
putdown-object-blind desk2_l sponge desk2 left_arm
5
0 0
1 0
2 1
6 1
16 1
3
1
0 0 0 1
3
0 0 0 1
0 6 1 4
0 13 -1 0
3
0 0 0 1
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
putdown-object-blind desk2_l sponge desk2 right_arm
5
0 0
1 0
2 1
6 2
16 1
3
1
0 1 0 1
3
0 1 0 1
0 6 2 4
0 14 -1 0
3
0 1 0 1
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
putdown-object-blind k_table_l cup1 kitchen_table left_arm
5
0 0
1 0
2 5
3 0
17 1
3
1
0 0 0 1
3
0 0 0 1
0 3 0 4
0 13 -1 0
3
0 0 0 1
0 3 0 5
0 13 -1 0
1
end_operator
begin_operator
putdown-object-blind k_table_l cup1 kitchen_table right_arm
5
0 0
1 0
2 5
3 1
17 1
3
1
0 1 0 1
3
0 1 0 1
0 3 1 4
0 14 -1 0
3
0 1 0 1
0 3 1 5
0 14 -1 0
1
end_operator
begin_operator
putdown-object-blind k_table_l cup2 kitchen_table left_arm
5
0 0
1 0
2 5
4 0
17 1
3
1
0 0 0 1
3
0 0 0 1
0 4 0 4
0 13 -1 0
3
0 0 0 1
0 4 0 5
0 13 -1 0
1
end_operator
begin_operator
putdown-object-blind k_table_l cup2 kitchen_table right_arm
5
0 0
1 0
2 5
4 1
17 1
3
1
0 1 0 1
3
0 1 0 1
0 4 1 4
0 14 -1 0
3
0 1 0 1
0 4 1 5
0 14 -1 0
1
end_operator
begin_operator
putdown-object-blind k_table_l cup3 kitchen_table left_arm
5
0 0
1 0
2 5
5 0
17 1
3
1
0 0 0 1
3
0 0 0 1
0 5 0 4
0 13 -1 0
3
0 0 0 1
0 5 0 5
0 13 -1 0
1
end_operator
begin_operator
putdown-object-blind k_table_l cup3 kitchen_table right_arm
5
0 0
1 0
2 5
5 1
17 1
3
1
0 1 0 1
3
0 1 0 1
0 5 1 4
0 14 -1 0
3
0 1 0 1
0 5 1 5
0 14 -1 0
1
end_operator
begin_operator
putdown-object-blind k_table_l sponge kitchen_table left_arm
5
0 0
1 0
2 5
6 1
17 1
3
1
0 0 0 1
3
0 0 0 1
0 6 1 5
0 13 -1 0
3
0 0 0 1
0 6 1 6
0 13 -1 0
1
end_operator
begin_operator
putdown-object-blind k_table_l sponge kitchen_table right_arm
5
0 0
1 0
2 5
6 2
17 1
3
1
0 1 0 1
3
0 1 0 1
0 6 2 5
0 14 -1 0
3
0 1 0 1
0 6 2 6
0 14 -1 0
1
end_operator
begin_operator
sense-door-state k_door_l1 kitchen_door
4
0 0
1 0
2 3
10 1
1
1
0 10 1 0
1
end_operator
begin_operator
sense-door-state k_door_l2 kitchen_door
4
0 0
1 0
2 4
10 1
1
1
0 10 1 0
1
end_operator
begin_operator
sense-door-state o_door1_l1 o_door1
4
0 0
1 0
2 6
11 1
1
1
0 11 1 0
1
end_operator
begin_operator
sense-door-state o_door1_l2 o_door1
4
0 0
1 0
2 7
11 1
1
1
0 11 1 0
1
end_operator
begin_operator
sense-door-state o_door2_l1 o_door2
4
0 0
1 0
2 8
12 1
1
1
0 12 1 0
1
end_operator
begin_operator
sense-door-state o_door2_l2 o_door2
4
0 0
1 0
2 9
12 1
1
1
0 12 1 0
1
end_operator
begin_operator
sense-door-state-untucked k_door_l1 kitchen_door
3
0 1
2 3
10 1
2
0
1
0 10 1 0
1
end_operator
begin_operator
sense-door-state-untucked k_door_l1 kitchen_door
3
1 1
2 3
10 1
2
0
1
0 10 1 0
1
end_operator
begin_operator
sense-door-state-untucked k_door_l2 kitchen_door
3
0 1
2 4
10 1
2
0
1
0 10 1 0
1
end_operator
begin_operator
sense-door-state-untucked k_door_l2 kitchen_door
3
1 1
2 4
10 1
2
0
1
0 10 1 0
1
end_operator
begin_operator
sense-door-state-untucked o_door1_l1 o_door1
3
0 1
2 6
11 1
2
0
1
0 11 1 0
1
end_operator
begin_operator
sense-door-state-untucked o_door1_l1 o_door1
3
1 1
2 6
11 1
2
0
1
0 11 1 0
1
end_operator
begin_operator
sense-door-state-untucked o_door1_l2 o_door1
3
0 1
2 7
11 1
2
0
1
0 11 1 0
1
end_operator
begin_operator
sense-door-state-untucked o_door1_l2 o_door1
3
1 1
2 7
11 1
2
0
1
0 11 1 0
1
end_operator
begin_operator
sense-door-state-untucked o_door2_l1 o_door2
3
0 1
2 8
12 1
2
0
1
0 12 1 0
1
end_operator
begin_operator
sense-door-state-untucked o_door2_l1 o_door2
3
1 1
2 8
12 1
2
0
1
0 12 1 0
1
end_operator
begin_operator
sense-door-state-untucked o_door2_l2 o_door2
3
0 1
2 9
12 1
2
0
1
0 12 1 0
1
end_operator
begin_operator
sense-door-state-untucked o_door2_l2 o_door2
3
1 1
2 9
12 1
2
0
1
0 12 1 0
1
end_operator
begin_operator
sense-table-state desk1_l desk1
4
0 0
1 0
2 0
15 1
1
1
0 15 1 0
1
end_operator
begin_operator
sense-table-state desk2_l desk2
4
0 0
1 0
2 1
16 1
1
1
0 16 1 0
1
end_operator
begin_operator
sense-table-state k_table_l kitchen_table
4
0 0
1 0
2 5
17 1
1
1
0 17 1 0
1
end_operator
begin_operator
sense-table-state-untucked desk1_l desk1
3
0 1
2 0
15 1
2
0
1
0 15 1 0
1
end_operator
begin_operator
sense-table-state-untucked desk1_l desk1
3
1 1
2 0
15 1
2
0
1
0 15 1 0
1
end_operator
begin_operator
sense-table-state-untucked desk2_l desk2
3
0 1
2 1
16 1
2
0
1
0 16 1 0
1
end_operator
begin_operator
sense-table-state-untucked desk2_l desk2
3
1 1
2 1
16 1
2
0
1
0 16 1 0
1
end_operator
begin_operator
sense-table-state-untucked k_table_l kitchen_table
3
0 1
2 5
17 1
2
0
1
0 17 1 0
1
end_operator
begin_operator
sense-table-state-untucked k_table_l kitchen_table
3
1 1
2 5
17 1
2
0
1
0 17 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 0
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 0
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 0
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 0
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 0
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 1
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 1
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 1
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 1
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 1
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 3
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 3
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 3
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 3
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 3
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 4
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 4
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 4
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 4
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 4
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 5
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 5
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 5
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 5
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 0
4 5
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 0
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 0
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 0
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 0
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 0
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 1
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 1
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 1
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 1
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 1
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 3
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 3
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 3
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 3
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 3
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 4
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 4
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 4
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 4
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 4
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 5
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 5
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 5
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 5
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 1
4 5
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 0
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 0
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 0
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 0
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 0
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 1
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 1
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 1
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 1
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 1
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 3
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 3
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 3
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 3
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 3
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 4
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 4
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 4
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 4
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 4
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 5
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 5
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 5
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 5
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 3
4 5
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 0
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 0
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 0
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 0
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 0
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 1
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 1
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 1
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 1
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 1
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 3
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 3
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 3
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 3
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 3
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 4
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 4
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 4
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 4
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 4
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 5
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 5
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 5
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 5
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 4
4 5
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 0
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 0
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 0
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 0
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 0
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 1
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 1
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 1
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 1
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 1
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 3
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 3
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 3
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 3
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 3
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 4
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 4
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 4
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 4
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 4
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 5
5 0
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 5
5 1
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 5
5 3
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 5
5 4
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 left_arm
9
0 0
1 0
2 0
3 5
4 5
5 5
6 1
15 0
18 1
1
2
0 0 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 0
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 0
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 0
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 0
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 0
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 1
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 1
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 1
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 1
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 1
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 3
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 3
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 3
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 3
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 3
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 4
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 4
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 4
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 4
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 4
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 5
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 5
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 5
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 5
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 0
4 5
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 0
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 0
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 0
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 0
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 0
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 1
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 1
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 1
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 1
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 1
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 3
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 3
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 3
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 3
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 3
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 4
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 4
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 4
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 4
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 4
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 5
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 5
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 5
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 5
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 1
4 5
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 0
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 0
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 0
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 0
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 0
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 1
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 1
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 1
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 1
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 1
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 3
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 3
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 3
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 3
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 3
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 4
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 4
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 4
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 4
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 4
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 5
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 5
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 5
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 5
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 3
4 5
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 0
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 0
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 0
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 0
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 0
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 1
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 1
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 1
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 1
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 1
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 3
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 3
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 3
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 3
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 3
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 4
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 4
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 4
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 4
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 4
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 5
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 5
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 5
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 5
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 4
4 5
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 0
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 0
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 0
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 0
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 0
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 1
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 1
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 1
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 1
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 1
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 3
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 3
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 3
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 3
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 3
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 4
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 4
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 4
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 4
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 4
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 5
5 0
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 5
5 1
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 5
5 3
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 5
5 4
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk1_l desk1 right_arm
9
0 0
1 0
2 0
3 5
4 5
5 5
6 2
15 0
18 1
1
2
0 1 0 1
0 18 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 0
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 0
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 0
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 0
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 0
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 1
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 1
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 1
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 1
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 1
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 2
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 2
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 2
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 2
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 2
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 4
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 4
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 4
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 4
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 4
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 5
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 5
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 5
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 5
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 0
4 5
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 0
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 0
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 0
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 0
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 0
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 1
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 1
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 1
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 1
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 1
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 2
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 2
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 2
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 2
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 2
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 4
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 4
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 4
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 4
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 4
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 5
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 5
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 5
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 5
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 1
4 5
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 0
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 0
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 0
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 0
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 0
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 1
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 1
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 1
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 1
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 1
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 2
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 2
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 2
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 2
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 2
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 4
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 4
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 4
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 4
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 4
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 5
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 5
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 5
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 5
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 2
4 5
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 0
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 0
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 0
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 0
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 0
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 1
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 1
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 1
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 1
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 1
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 2
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 2
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 2
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 2
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 2
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 4
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 4
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 4
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 4
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 4
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 5
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 5
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 5
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 5
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 4
4 5
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 0
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 0
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 0
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 0
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 0
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 1
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 1
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 1
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 1
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 1
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 2
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 2
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 2
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 2
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 2
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 4
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 4
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 4
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 4
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 4
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 5
5 0
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 5
5 1
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 5
5 2
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 5
5 4
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 left_arm
9
0 0
1 0
2 1
3 5
4 5
5 5
6 1
16 0
19 1
1
2
0 0 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 0
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 0
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 0
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 0
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 0
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 1
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 1
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 1
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 1
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 1
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 2
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 2
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 2
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 2
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 2
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 4
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 4
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 4
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 4
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 4
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 5
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 5
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 5
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 5
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 0
4 5
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 0
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 0
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 0
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 0
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 0
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 1
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 1
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 1
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 1
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 1
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 2
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 2
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 2
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 2
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 2
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 4
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 4
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 4
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 4
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 4
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 5
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 5
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 5
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 5
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 1
4 5
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 0
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 0
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 0
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 0
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 0
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 1
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 1
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 1
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 1
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 1
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 2
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 2
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 2
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 2
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 2
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 4
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 4
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 4
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 4
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 4
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 5
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 5
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 5
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 5
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 2
4 5
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 0
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 0
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 0
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 0
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 0
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 1
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 1
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 1
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 1
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 1
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 2
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 2
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 2
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 2
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 2
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 4
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 4
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 4
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 4
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 4
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 5
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 5
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 5
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 5
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 4
4 5
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 0
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 0
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 0
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 0
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 0
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 1
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 1
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 1
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 1
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 1
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 2
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 2
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 2
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 2
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 2
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 4
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 4
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 4
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 4
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 4
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 5
5 0
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 5
5 1
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 5
5 2
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 5
5 4
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe desk2_l desk2 right_arm
9
0 0
1 0
2 1
3 5
4 5
5 5
6 2
16 0
19 1
1
2
0 1 0 1
0 19 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 0
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 0
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 0
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 0
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 0
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 1
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 1
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 1
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 1
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 1
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 2
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 2
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 2
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 2
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 2
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 3
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 3
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 3
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 3
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 3
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 5
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 5
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 5
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 5
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 0
4 5
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 0
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 0
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 0
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 0
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 0
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 1
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 1
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 1
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 1
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 1
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 2
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 2
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 2
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 2
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 2
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 3
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 3
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 3
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 3
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 3
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 5
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 5
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 5
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 5
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 1
4 5
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 0
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 0
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 0
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 0
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 0
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 1
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 1
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 1
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 1
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 1
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 2
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 2
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 2
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 2
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 2
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 3
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 3
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 3
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 3
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 3
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 5
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 5
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 5
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 5
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 2
4 5
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 0
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 0
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 0
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 0
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 0
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 1
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 1
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 1
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 1
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 1
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 2
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 2
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 2
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 2
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 2
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 3
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 3
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 3
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 3
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 3
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 5
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 5
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 5
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 5
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 3
4 5
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 0
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 0
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 0
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 0
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 0
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 1
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 1
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 1
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 1
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 1
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 2
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 2
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 2
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 2
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 2
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 3
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 3
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 3
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 3
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 3
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 5
5 0
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 5
5 1
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 5
5 2
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 5
5 3
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table left_arm
9
0 0
1 0
2 5
3 5
4 5
5 5
6 1
17 0
20 1
1
2
0 0 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 0
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 0
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 0
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 0
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 0
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 1
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 1
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 1
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 1
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 1
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 2
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 2
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 2
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 2
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 2
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 3
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 3
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 3
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 3
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 3
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 5
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 5
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 5
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 5
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 0
4 5
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 0
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 0
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 0
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 0
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 0
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 1
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 1
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 1
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 1
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 1
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 2
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 2
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 2
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 2
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 2
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 3
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 3
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 3
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 3
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 3
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 5
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 5
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 5
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 5
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 1
4 5
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 0
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 0
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 0
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 0
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 0
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 1
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 1
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 1
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 1
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 1
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 2
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 2
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 2
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 2
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 2
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 3
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 3
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 3
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 3
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 3
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 5
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 5
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 5
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 5
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 2
4 5
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 0
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 0
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 0
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 0
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 0
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 1
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 1
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 1
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 1
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 1
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 2
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 2
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 2
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 2
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 2
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 3
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 3
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 3
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 3
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 3
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 5
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 5
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 5
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 5
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 3
4 5
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 0
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 0
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 0
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 0
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 0
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 1
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 1
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 1
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 1
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 1
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 2
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 2
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 2
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 2
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 2
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 3
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 3
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 3
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 3
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 3
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 5
5 0
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 5
5 1
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 5
5 2
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 5
5 3
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
begin_operator
wipe k_table_l kitchen_table right_arm
9
0 0
1 0
2 5
3 5
4 5
5 5
6 2
17 0
20 1
1
2
0 1 0 1
0 20 1 0
1
end_operator
0
