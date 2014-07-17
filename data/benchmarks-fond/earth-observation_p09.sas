begin_version
3.FOND
end_version
begin_metric
1
end_metric
12
begin_variable
var0
-1
20
Atom is-focal-point(p11)
Atom is-focal-point(p12)
Atom is-focal-point(p13)
Atom is-focal-point(p14)
Atom is-focal-point(p15)
Atom is-focal-point(p21)
Atom is-focal-point(p22)
Atom is-focal-point(p23)
Atom is-focal-point(p24)
Atom is-focal-point(p25)
Atom is-focal-point(p31)
Atom is-focal-point(p32)
Atom is-focal-point(p33)
Atom is-focal-point(p34)
Atom is-focal-point(p35)
Atom is-focal-point(p41)
Atom is-focal-point(p42)
Atom is-focal-point(p43)
Atom is-focal-point(p44)
Atom is-focal-point(p45)
end_variable
begin_variable
var1
-1
2
Atom is-target(p13)
NegatedAtom is-target(p13)
end_variable
begin_variable
var2
-1
2
Atom is-target(p14)
NegatedAtom is-target(p14)
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
Atom is-target(p24)
NegatedAtom is-target(p24)
end_variable
begin_variable
var5
-1
2
Atom is-target(p25)
NegatedAtom is-target(p25)
end_variable
begin_variable
var6
-1
2
Atom is-target(p32)
NegatedAtom is-target(p32)
end_variable
begin_variable
var7
-1
2
Atom is-target(p34)
NegatedAtom is-target(p34)
end_variable
begin_variable
var8
-1
2
Atom is-target(p35)
NegatedAtom is-target(p35)
end_variable
begin_variable
var9
-1
2
Atom is-target(p41)
NegatedAtom is-target(p41)
end_variable
begin_variable
var10
-1
2
Atom is-target(p44)
NegatedAtom is-target(p44)
end_variable
begin_variable
var11
-1
2
Atom is-target(p45)
NegatedAtom is-target(p45)
end_variable
1
begin_mutex_group
20
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
end_mutex_group
begin_state
2
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
0
end_state
begin_goal
11
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
11 1
end_goal
63
begin_operator
slew p11 p21
1
0 0
1
1
0 0 0 5
0
end_operator
begin_operator
slew p11 p22 north-east
1
0 0
1
1
0 0 0 6
1
end_operator
begin_operator
slew p12 p21 south-east
1
0 1
1
1
0 0 1 5
1
end_operator
begin_operator
slew p12 p22
1
0 1
1
1
0 0 1 6
0
end_operator
begin_operator
slew p12 p23 north-east
1
0 1
1
1
0 0 1 7
1
end_operator
begin_operator
slew p13 p22 south-east
1
0 2
1
1
0 0 2 6
1
end_operator
begin_operator
slew p13 p23
1
0 2
1
1
0 0 2 7
0
end_operator
begin_operator
slew p13 p24 north-east
1
0 2
1
1
0 0 2 8
1
end_operator
begin_operator
slew p14 p23 south-east
1
0 3
1
1
0 0 3 7
1
end_operator
begin_operator
slew p14 p24
1
0 3
1
1
0 0 3 8
0
end_operator
begin_operator
slew p14 p25 north-east
1
0 3
1
1
0 0 3 9
1
end_operator
begin_operator
slew p15 p24 south-east
1
0 4
1
1
0 0 4 8
1
end_operator
begin_operator
slew p15 p25
1
0 4
1
1
0 0 4 9
0
end_operator
begin_operator
slew p21 p31
1
0 5
1
1
0 0 5 10
0
end_operator
begin_operator
slew p21 p32 north-east
1
0 5
1
1
0 0 5 11
1
end_operator
begin_operator
slew p22 p31 south-east
1
0 6
1
1
0 0 6 10
1
end_operator
begin_operator
slew p22 p32
1
0 6
1
1
0 0 6 11
0
end_operator
begin_operator
slew p22 p33 north-east
1
0 6
1
1
0 0 6 12
1
end_operator
begin_operator
slew p23 p32 south-east
1
0 7
1
1
0 0 7 11
1
end_operator
begin_operator
slew p23 p33
1
0 7
1
1
0 0 7 12
0
end_operator
begin_operator
slew p23 p34 north-east
1
0 7
1
1
0 0 7 13
1
end_operator
begin_operator
slew p24 p33 south-east
1
0 8
1
1
0 0 8 12
1
end_operator
begin_operator
slew p24 p34
1
0 8
1
1
0 0 8 13
0
end_operator
begin_operator
slew p24 p35 north-east
1
0 8
1
1
0 0 8 14
1
end_operator
begin_operator
slew p25 p34 south-east
1
0 9
1
1
0 0 9 13
1
end_operator
begin_operator
slew p25 p35
1
0 9
1
1
0 0 9 14
0
end_operator
begin_operator
slew p31 p41
1
0 10
1
1
0 0 10 15
0
end_operator
begin_operator
slew p31 p42 north-east
1
0 10
1
1
0 0 10 16
1
end_operator
begin_operator
slew p32 p41 south-east
1
0 11
1
1
0 0 11 15
1
end_operator
begin_operator
slew p32 p42
1
0 11
1
1
0 0 11 16
0
end_operator
begin_operator
slew p32 p43 north-east
1
0 11
1
1
0 0 11 17
1
end_operator
begin_operator
slew p33 p42 south-east
1
0 12
1
1
0 0 12 16
1
end_operator
begin_operator
slew p33 p43
1
0 12
1
1
0 0 12 17
0
end_operator
begin_operator
slew p33 p44 north-east
1
0 12
1
1
0 0 12 18
1
end_operator
begin_operator
slew p34 p43 south-east
1
0 13
1
1
0 0 13 17
1
end_operator
begin_operator
slew p34 p44
1
0 13
1
1
0 0 13 18
0
end_operator
begin_operator
slew p34 p45 north-east
1
0 13
1
1
0 0 13 19
1
end_operator
begin_operator
slew p35 p44 south-east
1
0 14
1
1
0 0 14 18
1
end_operator
begin_operator
slew p35 p45
1
0 14
1
1
0 0 14 19
0
end_operator
begin_operator
slew p41 p11
1
0 15
1
1
0 0 15 0
0
end_operator
begin_operator
slew p41 p12 north-east
1
0 15
1
1
0 0 15 1
1
end_operator
begin_operator
slew p42 p11 south-east
1
0 16
1
1
0 0 16 0
1
end_operator
begin_operator
slew p42 p12
1
0 16
1
1
0 0 16 1
0
end_operator
begin_operator
slew p42 p13 north-east
1
0 16
1
1
0 0 16 2
1
end_operator
begin_operator
slew p43 p12 south-east
1
0 17
1
1
0 0 17 1
1
end_operator
begin_operator
slew p43 p13
1
0 17
1
1
0 0 17 2
0
end_operator
begin_operator
slew p43 p14 north-east
1
0 17
1
1
0 0 17 3
1
end_operator
begin_operator
slew p44 p13 south-east
1
0 18
1
1
0 0 18 2
1
end_operator
begin_operator
slew p44 p14
1
0 18
1
1
0 0 18 3
0
end_operator
begin_operator
slew p44 p15 north-east
1
0 18
1
1
0 0 18 4
1
end_operator
begin_operator
slew p45 p14 south-east
1
0 19
1
1
0 0 19 3
1
end_operator
begin_operator
slew p45 p15
1
0 19
1
1
0 0 19 4
0
end_operator
begin_operator
take-image p13 p23
2
0 2
1 0
2
1
0 0 2 7
2
0 0 2 7
0 1 0 1
1
end_operator
begin_operator
take-image p14 p24
2
0 3
2 0
2
1
0 0 3 8
2
0 0 3 8
0 2 0 1
1
end_operator
begin_operator
take-image p22 p32
2
0 6
3 0
2
1
0 0 6 11
2
0 0 6 11
0 3 0 1
1
end_operator
begin_operator
take-image p24 p34
2
0 8
4 0
2
1
0 0 8 13
2
0 0 8 13
0 4 0 1
1
end_operator
begin_operator
take-image p25 p35
2
0 9
5 0
2
1
0 0 9 14
2
0 0 9 14
0 5 0 1
1
end_operator
begin_operator
take-image p32 p42
2
0 11
6 0
2
1
0 0 11 16
2
0 0 11 16
0 6 0 1
1
end_operator
begin_operator
take-image p34 p44
2
0 13
7 0
2
1
0 0 13 18
2
0 0 13 18
0 7 0 1
1
end_operator
begin_operator
take-image p35 p45
2
0 14
8 0
2
1
0 0 14 19
2
0 0 14 19
0 8 0 1
1
end_operator
begin_operator
take-image p41 p11
2
0 15
9 0
2
1
0 0 15 0
2
0 0 15 0
0 9 0 1
1
end_operator
begin_operator
take-image p44 p14
2
0 18
10 0
2
1
0 0 18 3
2
0 0 18 3
0 10 0 1
1
end_operator
begin_operator
take-image p45 p15
2
0 19
11 0
2
1
0 0 19 4
2
0 0 19 4
0 11 0 1
1
end_operator
0
