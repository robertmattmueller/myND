begin_version
3.POND
end_version
begin_metric
0
end_metric
9
begin_variable
var0
-1
4
Atom at(rover0, waypoint0)
Atom at(rover0, waypoint1)
Atom at(rover0, waypoint2)
Atom at(rover0, waypoint3)
end_variable
begin_variable
var1
-1
2
Atom calibrated(camera0, rover0, waypoint0, objective1)
NegatedAtom calibrated(camera0, rover0, waypoint0, objective1)
end_variable
begin_variable
var2
-1
2
Atom calibrated(camera0, rover0, waypoint1, objective1)
NegatedAtom calibrated(camera0, rover0, waypoint1, objective1)
end_variable
begin_variable
var3
-1
2
Atom calibrated(camera0, rover0, waypoint2, objective1)
NegatedAtom calibrated(camera0, rover0, waypoint2, objective1)
end_variable
begin_variable
var4
-1
2
Atom calibrated(camera0, rover0, waypoint3, objective1)
NegatedAtom calibrated(camera0, rover0, waypoint3, objective1)
end_variable
begin_variable
var5
-1
2
Atom communicated_image_data(objective1, colour)
NegatedAtom communicated_image_data(objective1, colour)
end_variable
begin_variable
var6
-1
2
Atom communicated_image_data(objective1, high_res)
NegatedAtom communicated_image_data(objective1, high_res)
end_variable
begin_variable
var7
-1
2
Atom have_image(rover0, objective1, colour)
NegatedAtom have_image(rover0, objective1, colour)
end_variable
begin_variable
var8
-1
2
Atom have_image(rover0, objective1, high_res)
NegatedAtom have_image(rover0, objective1, high_res)
end_variable
1
begin_mutex_group
4
0 0
0 1
0 2
0 3
end_mutex_group
begin_state
9
0 3
1 1
2 1
3 1
4 1
5 1
6 1
7 1
8 1
0
0
end_state
begin_goal
1
6 0
end_goal
18
begin_operator
calibrate rover0 camera0 objective1 waypoint0
1
0 0
1
1
0 1 -1 0
0
0
end_operator
begin_operator
calibrate rover0 camera0 objective1 waypoint1
1
0 1
1
1
0 2 -1 0
0
0
end_operator
begin_operator
calibrate rover0 camera0 objective1 waypoint2
1
0 2
1
1
0 3 -1 0
0
0
end_operator
begin_operator
calibrate rover0 camera0 objective1 waypoint3
1
0 3
1
1
0 4 -1 0
0
0
end_operator
begin_operator
communicate_image_data rover0 general objective1 colour waypoint1 waypoint0
2
0 1
7 0
1
1
0 5 -1 0
0
0
end_operator
begin_operator
communicate_image_data rover0 general objective1 colour waypoint2 waypoint0
2
0 2
7 0
1
1
0 5 -1 0
0
0
end_operator
begin_operator
communicate_image_data rover0 general objective1 colour waypoint3 waypoint0
2
0 3
7 0
1
1
0 5 -1 0
0
0
end_operator
begin_operator
communicate_image_data rover0 general objective1 high_res waypoint1 waypoint0
2
0 1
8 0
1
1
0 6 -1 0
0
0
end_operator
begin_operator
communicate_image_data rover0 general objective1 high_res waypoint2 waypoint0
2
0 2
8 0
1
1
0 6 -1 0
0
0
end_operator
begin_operator
communicate_image_data rover0 general objective1 high_res waypoint3 waypoint0
2
0 3
8 0
1
1
0 6 -1 0
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
0 4 -1 1
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
0 3 -1 1
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
0 4 -1 1
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
0 2 -1 1
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
0 1 -1 1
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
0 2 -1 1
0
0
end_operator
begin_operator
take_image rover0 waypoint0 objective1 camera0 colour
2
0 0
1 0
1
2
0 1 0 1
0 7 -1 0
0
0
end_operator
begin_operator
take_image rover0 waypoint0 objective1 camera0 high_res
2
0 0
1 0
1
2
0 1 0 1
0 8 -1 0
0
0
end_operator
0
