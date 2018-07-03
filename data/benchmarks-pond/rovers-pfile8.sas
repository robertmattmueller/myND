begin_version
3.POND
end_version
begin_metric
0
end_metric
21
begin_variable
var0
-1
6
Atom at(rover0, waypoint0)
Atom at(rover0, waypoint1)
Atom at(rover0, waypoint2)
Atom at(rover0, waypoint3)
Atom at(rover0, waypoint4)
Atom at(rover0, waypoint5)
end_variable
begin_variable
var1
-1
2
Atom at_rock_sample(waypoint2)
Atom have_rock_analysis(rover0)
end_variable
begin_variable
var2
-1
2
Atom at_soil_sample(waypoint4)
NegatedAtom at_soil_sample(waypoint4)
end_variable
begin_variable
var3
-1
2
Atom at_soil_sample(waypoint5)
NegatedAtom at_soil_sample(waypoint5)
end_variable
begin_variable
var4
-1
2
Atom calibrated(camera0, rover0, waypoint0, objective1)
NegatedAtom calibrated(camera0, rover0, waypoint0, objective1)
end_variable
begin_variable
var5
-1
2
Atom calibrated(camera0, rover0, waypoint1, objective1)
NegatedAtom calibrated(camera0, rover0, waypoint1, objective1)
end_variable
begin_variable
var6
-1
2
Atom calibrated(camera0, rover0, waypoint2, objective1)
NegatedAtom calibrated(camera0, rover0, waypoint2, objective1)
end_variable
begin_variable
var7
-1
2
Atom calibrated(camera0, rover0, waypoint3, objective1)
NegatedAtom calibrated(camera0, rover0, waypoint3, objective1)
end_variable
begin_variable
var8
-1
2
Atom calibrated(camera0, rover0, waypoint4, objective1)
NegatedAtom calibrated(camera0, rover0, waypoint4, objective1)
end_variable
begin_variable
var9
-1
2
Atom calibrated(camera0, rover0, waypoint5, objective1)
NegatedAtom calibrated(camera0, rover0, waypoint5, objective1)
end_variable
begin_variable
var10
-1
2
Atom communicated_image_data(objective1, colour)
NegatedAtom communicated_image_data(objective1, colour)
end_variable
begin_variable
var11
-1
2
Atom communicated_image_data(objective1, high_res)
NegatedAtom communicated_image_data(objective1, high_res)
end_variable
begin_variable
var12
-1
2
Atom communicated_rock_data()
NegatedAtom communicated_rock_data()
end_variable
begin_variable
var13
-1
2
Atom communicated_soil_data()
NegatedAtom communicated_soil_data()
end_variable
begin_variable
var14
-1
2
Atom empty(rover0store)
NegatedAtom empty(rover0store)
end_variable
begin_variable
var15
-1
2
Atom full(rover0store)
NegatedAtom full(rover0store)
end_variable
begin_variable
var16
-1
2
Atom have_image(rover0, objective1, colour)
NegatedAtom have_image(rover0, objective1, colour)
end_variable
begin_variable
var17
-1
2
Atom have_image(rover0, objective1, high_res)
NegatedAtom have_image(rover0, objective1, high_res)
end_variable
begin_variable
var18
-1
2
Atom have_soil_analysis(rover0)
NegatedAtom have_soil_analysis(rover0)
end_variable
begin_variable
var19
-1
2
Atom visible_from(objective1, waypoint0)
NegatedAtom visible_from(objective1, waypoint0)
end_variable
begin_variable
var20
-1
2
Atom visible_from(objective1, waypoint4)
NegatedAtom visible_from(objective1, waypoint4)
end_variable
2
begin_mutex_group
6
0 0
0 1
0 2
0 3
0 4
0 5
end_mutex_group
begin_mutex_group
2
1 0
1 1
end_mutex_group
begin_state
17
0 3
14 0
1 0
4 1
5 1
6 1
7 1
8 1
9 1
10 1
11 1
12 1
13 1
15 1
16 1
17 1
18 1
2
19 0 20 0
2 0 3 0
0
end_state
begin_goal
3
11 0
12 0
13 0
end_goal
41
begin_operator
calibrate rover0 camera0 objective1 waypoint0
1
0 0
1
1
0 4 -1 0
0
0
end_operator
begin_operator
calibrate rover0 camera0 objective1 waypoint1
1
0 1
1
1
0 5 -1 0
0
0
end_operator
begin_operator
calibrate rover0 camera0 objective1 waypoint2
1
0 2
1
1
0 6 -1 0
0
0
end_operator
begin_operator
calibrate rover0 camera0 objective1 waypoint3
1
0 3
1
1
0 7 -1 0
0
0
end_operator
begin_operator
calibrate rover0 camera0 objective1 waypoint4
1
0 4
1
1
0 8 -1 0
0
0
end_operator
begin_operator
calibrate rover0 camera0 objective1 waypoint5
1
0 5
1
1
0 9 -1 0
0
0
end_operator
begin_operator
communicate_image_data rover0 general objective1 colour waypoint1 waypoint0
2
0 1
16 0
1
1
0 10 -1 0
0
0
end_operator
begin_operator
communicate_image_data rover0 general objective1 colour waypoint2 waypoint0
2
0 2
16 0
1
1
0 10 -1 0
0
0
end_operator
begin_operator
communicate_image_data rover0 general objective1 colour waypoint3 waypoint0
2
0 3
16 0
1
1
0 10 -1 0
0
0
end_operator
begin_operator
communicate_image_data rover0 general objective1 high_res waypoint1 waypoint0
2
0 1
17 0
1
1
0 11 -1 0
0
0
end_operator
begin_operator
communicate_image_data rover0 general objective1 high_res waypoint2 waypoint0
2
0 2
17 0
1
1
0 11 -1 0
0
0
end_operator
begin_operator
communicate_image_data rover0 general objective1 high_res waypoint3 waypoint0
2
0 3
17 0
1
1
0 11 -1 0
0
0
end_operator
begin_operator
communicate_rock_data rover0 general waypoint1 waypoint0
2
0 1
1 1
1
1
0 12 -1 0
0
0
end_operator
begin_operator
communicate_rock_data rover0 general waypoint2 waypoint0
2
0 2
1 1
1
1
0 12 -1 0
0
0
end_operator
begin_operator
communicate_rock_data rover0 general waypoint3 waypoint0
2
0 3
1 1
1
1
0 12 -1 0
0
0
end_operator
begin_operator
communicate_soil_data rover0 general waypoint1 waypoint0
2
0 1
18 0
1
1
0 13 -1 0
0
0
end_operator
begin_operator
communicate_soil_data rover0 general waypoint2 waypoint0
2
0 2
18 0
1
1
0 13 -1 0
0
0
end_operator
begin_operator
communicate_soil_data rover0 general waypoint3 waypoint0
2
0 3
18 0
1
1
0 13 -1 0
0
0
end_operator
begin_operator
drop rover0 rover0store
0
1
2
0 14 -1 0
0 15 -1 1
0
0
end_operator
begin_operator
navigate rover0 waypoint0 waypoint3 camera0 objective1
1
0 0
1
2
0 0 0 3
0 7 -1 1
0
0
end_operator
begin_operator
navigate rover0 waypoint1 waypoint2 camera0 objective1
1
0 1
1
2
0 0 1 2
0 6 -1 1
0
0
end_operator
begin_operator
navigate rover0 waypoint1 waypoint3 camera0 objective1
1
0 1
1
2
0 0 1 3
0 7 -1 1
0
0
end_operator
begin_operator
navigate rover0 waypoint1 waypoint4 camera0 objective1
1
0 1
1
2
0 0 1 4
0 8 -1 1
0
0
end_operator
begin_operator
navigate rover0 waypoint2 waypoint1 camera0 objective1
1
0 2
1
2
0 0 2 1
0 5 -1 1
0
0
end_operator
begin_operator
navigate rover0 waypoint3 waypoint0 camera0 objective1
1
0 3
1
2
0 0 3 0
0 4 -1 1
0
0
end_operator
begin_operator
navigate rover0 waypoint3 waypoint1 camera0 objective1
1
0 3
1
2
0 0 3 1
0 5 -1 1
0
0
end_operator
begin_operator
navigate rover0 waypoint4 waypoint1 camera0 objective1
1
0 4
1
2
0 0 4 1
0 5 -1 1
0
0
end_operator
begin_operator
navigate rover0 waypoint4 waypoint5 camera0 objective1
1
0 4
1
2
0 0 4 5
0 9 -1 1
0
0
end_operator
begin_operator
navigate rover0 waypoint5 waypoint4 camera0 objective1
1
0 5
1
2
0 0 5 4
0 8 -1 1
0
0
end_operator
begin_operator
sample_rock rover0 rover0store waypoint2
3
0 2
1 0
14 0
1
3
0 1 0 1
0 14 0 1
0 15 -1 0
0
0
end_operator
begin_operator
sample_soil rover0 rover0store waypoint4
4
0 4
2 0
14 0
15 1
1
4
0 2 0 1
0 14 0 1
0 15 1 0
0 18 -1 0
0
0
end_operator
begin_operator
sample_soil rover0 rover0store waypoint5
4
0 5
3 0
14 0
15 1
1
4
0 3 0 1
0 14 0 1
0 15 1 0
0 18 -1 0
0
0
end_operator
begin_operator
sense_rock rover0 objective1 waypoint2
1
0 2
1
0
0
1
1 0
end_operator
begin_operator
sense_soil rover0 objective1 waypoint4
1
0 4
1
0
0
1
2 0
end_operator
begin_operator
sense_soil rover0 objective1 waypoint5
1
0 5
1
0
0
1
3 0
end_operator
begin_operator
sense_vis rover0 objective1 waypoint0
1
0 0
1
0
0
1
19 0
end_operator
begin_operator
sense_vis rover0 objective1 waypoint4
1
0 4
1
0
0
1
20 0
end_operator
begin_operator
take_image rover0 waypoint0 objective1 camera0 colour
3
0 0
4 0
19 0
1
2
0 4 0 1
0 16 -1 0
0
0
end_operator
begin_operator
take_image rover0 waypoint0 objective1 camera0 high_res
3
0 0
4 0
19 0
1
2
0 4 0 1
0 17 -1 0
0
0
end_operator
begin_operator
take_image rover0 waypoint4 objective1 camera0 colour
3
0 4
8 0
20 0
1
2
0 8 0 1
0 16 -1 0
0
0
end_operator
begin_operator
take_image rover0 waypoint4 objective1 camera0 high_res
3
0 4
8 0
20 0
1
2
0 8 0 1
0 17 -1 0
0
0
end_operator
0
