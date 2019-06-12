/// @description scr_room_goto(room, door, cube_lvl, [dx], [dy])
/// @param  room
/// @param  door
/// @param  cube_lvl

if (argument_count == 5) {
	obj_control.target_dx = argument[3];
	obj_control.target_dy = argument[4];
} else {
	obj_control.target_dx = 0;
	obj_control.target_dy = 0;
}

obj_control.target_door = argument[1];
obj_control.traveling_cube_lvl = argument[2];
obj_control.state = scr_idle;
room_goto(argument[0]);
