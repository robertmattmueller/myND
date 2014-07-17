begin_version
3.POND
end_version
begin_metric
0
end_metric
13
begin_variable
var0
-1
10
Atom current-loc(loc1)
Atom current-loc(loc10)
Atom current-loc(loc2)
Atom current-loc(loc3)
Atom current-loc(loc4)
Atom current-loc(loc5)
Atom current-loc(loc6)
Atom current-loc(loc7)
Atom current-loc(loc8)
Atom current-loc(loc9)
end_variable
begin_variable
var1
-1
2
Atom passable-from-agents-view(loc2, loc4)
NegatedAtom passable-from-agents-view(loc2, loc4)
end_variable
begin_variable
var2
-1
2
Atom passable-from-agents-view(loc3, loc4)
NegatedAtom passable-from-agents-view(loc3, loc4)
end_variable
begin_variable
var3
-1
2
Atom passable-from-agents-view(loc3, loc5)
NegatedAtom passable-from-agents-view(loc3, loc5)
end_variable
begin_variable
var4
-1
2
Atom passable-from-agents-view(loc4, loc5)
NegatedAtom passable-from-agents-view(loc4, loc5)
end_variable
begin_variable
var5
-1
2
Atom passable-from-agents-view(loc4, loc6)
NegatedAtom passable-from-agents-view(loc4, loc6)
end_variable
begin_variable
var6
-1
2
Atom passable-from-agents-view(loc4, loc8)
NegatedAtom passable-from-agents-view(loc4, loc8)
end_variable
begin_variable
var7
-1
2
Atom passable-from-agents-view(loc5, loc8)
NegatedAtom passable-from-agents-view(loc5, loc8)
end_variable
begin_variable
var8
-1
2
Atom passable-from-agents-view(loc6, loc10)
NegatedAtom passable-from-agents-view(loc6, loc10)
end_variable
begin_variable
var9
-1
2
Atom passable-from-agents-view(loc6, loc7)
NegatedAtom passable-from-agents-view(loc6, loc7)
end_variable
begin_variable
var10
-1
2
Atom passable-from-agents-view(loc7, loc9)
NegatedAtom passable-from-agents-view(loc7, loc9)
end_variable
begin_variable
var11
-1
2
Atom passable-from-agents-view(loc8, loc9)
NegatedAtom passable-from-agents-view(loc8, loc9)
end_variable
begin_variable
var12
-1
2
Atom passable-from-agents-view(loc9, loc10)
NegatedAtom passable-from-agents-view(loc9, loc10)
end_variable
1
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
begin_state
1
0 0
0
0
end_state
begin_goal
1
0 1
end_goal
46
begin_operator
move-backward loc10 loc8
1
0 1
1
1
0 0 1 8
0
0
end_operator
begin_operator
move-backward loc10 loc9
2
0 1
12 0
1
1
0 0 1 9
0
0
end_operator
begin_operator
move-backward loc2 loc1
1
0 2
1
1
0 0 2 0
0
0
end_operator
begin_operator
move-backward loc3 loc1
1
0 3
1
1
0 0 3 0
0
0
end_operator
begin_operator
move-backward loc4 loc3
2
0 4
2 0
1
1
0 0 4 3
0
0
end_operator
begin_operator
move-backward loc5 loc1
1
0 5
1
1
0 0 5 0
0
0
end_operator
begin_operator
move-backward loc5 loc3
2
0 5
3 0
1
1
0 0 5 3
0
0
end_operator
begin_operator
move-backward loc6 loc2
1
0 6
1
1
0 0 6 2
0
0
end_operator
begin_operator
move-backward loc6 loc4
2
0 6
5 0
1
1
0 0 6 4
0
0
end_operator
begin_operator
move-backward loc7 loc4
1
0 7
1
1
0 0 7 4
0
0
end_operator
begin_operator
move-backward loc8 loc7
1
0 8
1
1
0 0 8 7
0
0
end_operator
begin_operator
move-forward loc1 loc2
1
0 0
1
1
0 0 0 2
0
0
end_operator
begin_operator
move-forward loc1 loc3
1
0 0
1
1
0 0 0 3
0
0
end_operator
begin_operator
move-forward loc1 loc5
1
0 0
1
1
0 0 0 5
0
0
end_operator
begin_operator
move-forward loc2 loc6
1
0 2
1
1
0 0 2 6
0
0
end_operator
begin_operator
move-forward loc3 loc4
2
0 3
2 0
1
1
0 0 3 4
0
0
end_operator
begin_operator
move-forward loc3 loc5
2
0 3
3 0
1
1
0 0 3 5
0
0
end_operator
begin_operator
move-forward loc4 loc6
2
0 4
5 0
1
1
0 0 4 6
0
0
end_operator
begin_operator
move-forward loc4 loc7
1
0 4
1
1
0 0 4 7
0
0
end_operator
begin_operator
move-forward loc7 loc8
1
0 7
1
1
0 0 7 8
0
0
end_operator
begin_operator
move-forward loc8 loc10
1
0 8
1
1
0 0 8 1
0
0
end_operator
begin_operator
move-forward loc9 loc10
2
0 9
12 0
1
1
0 0 9 1
0
0
end_operator
begin_operator
sense-backward-a loc10 loc9
1
0 1
1
1
0 12 -1 0
0
0
end_operator
begin_operator
sense-backward-a loc4 loc3
1
0 4
1
1
0 2 -1 0
0
0
end_operator
begin_operator
sense-backward-a loc5 loc3
1
0 5
1
1
0 3 -1 0
0
0
end_operator
begin_operator
sense-backward-a loc6 loc4
1
0 6
1
1
0 5 -1 0
0
0
end_operator
begin_operator
sense-backward-b loc10 loc6
1
0 1
1
1
0 8 -1 1
0
0
end_operator
begin_operator
sense-backward-b loc4 loc2
1
0 4
1
1
0 1 -1 1
0
0
end_operator
begin_operator
sense-backward-b loc5 loc4
1
0 5
1
1
0 4 -1 1
0
0
end_operator
begin_operator
sense-backward-b loc7 loc6
1
0 7
1
1
0 9 -1 1
0
0
end_operator
begin_operator
sense-backward-b loc8 loc4
1
0 8
1
1
0 6 -1 1
0
0
end_operator
begin_operator
sense-backward-b loc8 loc5
1
0 8
1
1
0 7 -1 1
0
0
end_operator
begin_operator
sense-backward-b loc9 loc7
1
0 9
1
1
0 10 -1 1
0
0
end_operator
begin_operator
sense-backward-b loc9 loc8
1
0 9
1
1
0 11 -1 1
0
0
end_operator
begin_operator
sense-forward_a loc3 loc4
1
0 3
1
1
0 2 -1 0
0
0
end_operator
begin_operator
sense-forward_a loc3 loc5
1
0 3
1
1
0 3 -1 0
0
0
end_operator
begin_operator
sense-forward_a loc4 loc6
1
0 4
1
1
0 5 -1 0
0
0
end_operator
begin_operator
sense-forward_a loc9 loc10
1
0 9
1
1
0 12 -1 0
0
0
end_operator
begin_operator
sense-forward_b loc2 loc4
1
0 2
1
1
0 1 -1 1
0
0
end_operator
begin_operator
sense-forward_b loc4 loc5
1
0 4
1
1
0 4 -1 1
0
0
end_operator
begin_operator
sense-forward_b loc4 loc8
1
0 4
1
1
0 6 -1 1
0
0
end_operator
begin_operator
sense-forward_b loc5 loc8
1
0 5
1
1
0 7 -1 1
0
0
end_operator
begin_operator
sense-forward_b loc6 loc10
1
0 6
1
1
0 8 -1 1
0
0
end_operator
begin_operator
sense-forward_b loc6 loc7
1
0 6
1
1
0 9 -1 1
0
0
end_operator
begin_operator
sense-forward_b loc7 loc9
1
0 7
1
1
0 10 -1 1
0
0
end_operator
begin_operator
sense-forward_b loc8 loc9
1
0 8
1
1
0 11 -1 1
0
0
end_operator
0
