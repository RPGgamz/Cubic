/// @description scr_room_goto(room, door, cube_lvl)
/// @param room
/// @param  door
/// @param  cube_lvl
obj_control.target_door = argument1;
obj_control.traveling_cube_lvl = argument2;
obj_control.state = scr_idle;
room_goto(argument0);
