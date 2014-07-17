begin_version
3.FOND
end_version
begin_metric
1
end_metric
11
begin_variable
var0
-1
24
Atom is-focal-point(p11)
Atom is-focal-point(p12)
Atom is-focal-point(p13)
Atom is-focal-point(p21)
Atom is-focal-point(p22)
Atom is-focal-point(p23)
Atom is-focal-point(p31)
Atom is-focal-point(p32)
Atom is-focal-point(p33)
Atom is-focal-point(p41)
Atom is-focal-point(p42)
Atom is-focal-point(p43)
Atom is-focal-point(p51)
Atom is-focal-point(p52)
Atom is-focal-point(p53)
Atom is-focal-point(p61)
Atom is-focal-point(p62)
Atom is-focal-point(p63)
Atom is-focal-point(p71)
Atom is-focal-point(p72)
Atom is-focal-point(p73)
Atom is-focal-point(p81)
Atom is-focal-point(p82)
Atom is-focal-point(p83)
end_variable
begin_variable
var1
-1
2
Atom is-target(p11)
NegatedAtom is-target(p11)
end_variable
begin_variable
var2
-1
2
Atom is-target(p12)
NegatedAtom is-target(p12)
end_variable
begin_variable
var3
-1
2
Atom is-target(p22)
NegatedAtom is-target(p22)
end_variable
begin_variable
var4
-1
2
Atom is-target(p42)
NegatedAtom is-target(p42)
end_variable
begin_variable
var5
-1
2
Atom is-target(p43)
NegatedAtom is-target(p43)
end_variable
begin_variable
var6
-1
2
Atom is-target(p51)
NegatedAtom is-target(p51)
end_variable
begin_variable
var7
-1
2
Atom is-target(p61)
NegatedAtom is-target(p61)
end_variable
begin_variable
var8
-1
2
Atom is-target(p62)
NegatedAtom is-target(p62)
end_variable
begin_variable
var9
-1
2
Atom is-target(p81)
NegatedAtom is-target(p81)
end_variable
begin_variable
var10
-1
2
Atom is-target(p83)
NegatedAtom is-target(p83)
end_variable
1
begin_mutex_group
24
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
0 10
0 11
0 12
0 13
0 14
0 15
0 16
0 17
0 18
0 19
0 20
0 21
0 22
0 23
end_mutex_group
begin_state
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
0
end_state
begin_goal
10
1 1
2 1
3 1
4 1
5 1
6 1
7 1
8 1
9 1
10 1
end_goal
66
begin_operator
slew p11 p21
1
0 0
1
1
0 0 0 3
0
end_operator
begin_operator
slew p11 p22 north-east
1
0 0
1
1
0 0 0 4
1
end_operator
begin_operator
slew p12 p21 south-east
1
0 1
1
1
0 0 1 3
1
end_operator
begin_operator
slew p12 p22
1
0 1
1
1
0 0 1 4
0
end_operator
begin_operator
slew p12 p23 north-east
1
0 1
1
1
0 0 1 5
1
end_operator
begin_operator
slew p13 p22 south-east
1
0 2
1
1
0 0 2 4
1
end_operator
begin_operator
slew p13 p23
1
0 2
1
1
0 0 2 5
0
end_operator
begin_operator
slew p21 p31
1
0 3
1
1
0 0 3 6
0
end_operator
begin_operator
slew p21 p32 north-east
1
0 3
1
1
0 0 3 7
1
end_operator
begin_operator
slew p22 p31 south-east
1
0 4
1
1
0 0 4 6
1
end_operator
begin_operator
slew p22 p32
1
0 4
1
1
0 0 4 7
0
end_operator
begin_operator
slew p22 p33 north-east
1
0 4
1
1
0 0 4 8
1
end_operator
begin_operator
slew p23 p32 south-east
1
0 5
1
1
0 0 5 7
1
end_operator
begin_operator
slew p23 p33
1
0 5
1
1
0 0 5 8
0
end_operator
begin_operator
slew p31 p41
1
0 6
1
1
0 0 6 9
0
end_operator
begin_operator
slew p31 p42 north-east
1
0 6
1
1
0 0 6 10
1
end_operator
begin_operator
slew p32 p41 south-east
1
0 7
1
1
0 0 7 9
1
end_operator
begin_operator
slew p32 p42
1
0 7
1
1
0 0 7 10
0
end_operator
begin_operator
slew p32 p43 north-east
1
0 7
1
1
0 0 7 11
1
end_operator
begin_operator
slew p33 p42 south-east
1
0 8
1
1
0 0 8 10
1
end_operator
begin_operator
slew p33 p43
1
0 8
1
1
0 0 8 11
0
end_operator
begin_operator
slew p41 p51
1
0 9
1
1
0 0 9 12
0
end_operator
begin_operator
slew p41 p52 north-east
1
0 9
1
1
0 0 9 13
1
end_operator
begin_operator
slew p42 p51 south-east
1
0 10
1
1
0 0 10 12
1
end_operator
begin_operator
slew p42 p52
1
0 10
1
1
0 0 10 13
0
end_operator
begin_operator
slew p42 p53 north-east
1
0 10
1
1
0 0 10 14
1
end_operator
begin_operator
slew p43 p52 south-east
1
0 11
1
1
0 0 11 13
1
end_operator
begin_operator
slew p43 p53
1
0 11
1
1
0 0 11 14
0
end_operator
begin_operator
slew p51 p61
1
0 12
1
1
0 0 12 15
0
end_operator
begin_operator
slew p51 p62 north-east
1
0 12
1
1
0 0 12 16
1
end_operator
begin_operator
slew p52 p61 south-east
1
0 13
1
1
0 0 13 15
1
end_operator
begin_operator
slew p52 p62
1
0 13
1
1
0 0 13 16
0
end_operator
begin_operator
slew p52 p63 north-east
1
0 13
1
1
0 0 13 17
1
end_operator
begin_operator
slew p53 p62 south-east
1
0 14
1
1
0 0 14 16
1
end_operator
begin_operator
slew p53 p63
1
0 14
1
1
0 0 14 17
0
end_operator
begin_operator
slew p61 p71
1
0 15
1
1
0 0 15 18
0
end_operator
begin_operator
slew p61 p72 north-east
1
0 15
1
1
0 0 15 19
1
end_operator
begin_operator
slew p62 p71 south-east
1
0 16
1
1
0 0 16 18
1
end_operator
begin_operator
slew p62 p72
1
0 16
1
1
0 0 16 19
0
end_operator
begin_operator
slew p62 p73 north-east
1
0 16
1
1
0 0 16 20
1
end_operator
begin_operator
slew p63 p72 south-east
1
0 17
1
1
0 0 17 19
1
end_operator
begin_operator
slew p63 p73
1
0 17
1
1
0 0 17 20
0
end_operator
begin_operator
slew p71 p81
1
0 18
1
1
0 0 18 21
0
end_operator
begin_operator
slew p71 p82 north-east
1
0 18
1
1
0 0 18 22
1
end_operator
begin_operator
slew p72 p81 south-east
1
0 19
1
1
0 0 19 21
1
end_operator
begin_operator
slew p72 p82
1
0 19
1
1
0 0 19 22
0
end_operator
begin_operator
slew p72 p83 north-east
1
0 19
1
1
0 0 19 23
1
end_operator
begin_operator
slew p73 p82 south-east
1
0 20
1
1
0 0 20 22
1
end_operator
begin_operator
slew p73 p83
1
0 20
1
1
0 0 20 23
0
end_operator
begin_operator
slew p81 p11
1
0 21
1
1
0 0 21 0
0
end_operator
begin_operator
slew p81 p12 north-east
1
0 21
1
1
0 0 21 1
1
end_operator
begin_operator
slew p82 p11 south-east
1
0 22
1
1
0 0 22 0
1
end_operator
begin_operator
slew p82 p12
1
0 22
1
1
0 0 22 1
0
end_operator
begin_operator
slew p82 p13 north-east
1
0 22
1
1
0 0 22 2
1
end_operator
begin_operator
slew p83 p12 south-east
1
0 23
1
1
0 0 23 1
1
end_operator
begin_operator
slew p83 p13
1
0 23
1
1
0 0 23 2
0
end_operator
begin_operator
take-image p11 p21
2
0 0
1 0
2
1
0 0 0 3
2
0 0 0 3
0 1 0 1
1
end_operator
begin_operator
take-image p12 p22
2
0 1
2 0
2
1
0 0 1 4
2
0 0 1 4
0 2 0 1
1
end_operator
begin_operator
take-image p22 p32
2
0 4
3 0
2
1
0 0 4 7
2
0 0 4 7
0 3 0 1
1
end_operator
begin_operator
take-image p42 p52
2
0 10
4 0
2
1
0 0 10 13
2
0 0 10 13
0 4 0 1
1
end_operator
begin_operator
take-image p43 p53
2
0 11
5 0
2
1
0 0 11 14
2
0 0 11 14
0 5 0 1
1
end_operator
begin_operator
take-image p51 p61
2
0 12
6 0
2
1
0 0 12 15
2
0 0 12 15
0 6 0 1
1
end_operator
begin_operator
take-image p61 p71
2
0 15
7 0
2
1
0 0 15 18
2
0 0 15 18
0 7 0 1
1
end_operator
begin_operator
take-image p62 p72
2
0 16
8 0
2
1
0 0 16 19
2
0 0 16 19
0 8 0 1
1
end_operator
begin_operator
take-image p81 p11
2
0 21
9 0
2
1
0 0 21 0
2
0 0 21 0
0 9 0 1
1
end_operator
begin_operator
take-image p83 p13
2
0 23
10 0
2
1
0 0 23 2
2
0 0 23 2
0 10 0 1
1
end_operator
0
