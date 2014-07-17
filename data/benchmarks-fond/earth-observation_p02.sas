begin_version
3.FOND
end_version
begin_metric
1
end_metric
2
begin_variable
var0
-1
15
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
end_variable
begin_variable
var1
-1
2
Atom is-target(p15)
NegatedAtom is-target(p15)
end_variable
1
begin_mutex_group
15
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
end_mutex_group
begin_state
2
0
end_state
begin_goal
1
1 1
end_goal
40
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
slew p31 p11
1
0 10
1
1
0 0 10 0
0
end_operator
begin_operator
slew p31 p12 north-east
1
0 10
1
1
0 0 10 1
1
end_operator
begin_operator
slew p32 p11 south-east
1
0 11
1
1
0 0 11 0
1
end_operator
begin_operator
slew p32 p12
1
0 11
1
1
0 0 11 1
0
end_operator
begin_operator
slew p32 p13 north-east
1
0 11
1
1
0 0 11 2
1
end_operator
begin_operator
slew p33 p12 south-east
1
0 12
1
1
0 0 12 1
1
end_operator
begin_operator
slew p33 p13
1
0 12
1
1
0 0 12 2
0
end_operator
begin_operator
slew p33 p14 north-east
1
0 12
1
1
0 0 12 3
1
end_operator
begin_operator
slew p34 p13 south-east
1
0 13
1
1
0 0 13 2
1
end_operator
begin_operator
slew p34 p14
1
0 13
1
1
0 0 13 3
0
end_operator
begin_operator
slew p34 p15 north-east
1
0 13
1
1
0 0 13 4
1
end_operator
begin_operator
slew p35 p14 south-east
1
0 14
1
1
0 0 14 3
1
end_operator
begin_operator
slew p35 p15
1
0 14
1
1
0 0 14 4
0
end_operator
begin_operator
take-image p15 p25
2
0 4
1 0
2
1
0 0 4 9
2
0 0 4 9
0 1 0 1
1
end_operator
0
