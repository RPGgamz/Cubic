/// @description Switch between idle/ready animation
var ww = sprite_width/2;
if (idle_ready_teleport != "teleport") {
	idle_ready_teleport = "";
	if ((position_meeting(x+ww, y+ww, obj_cube)) || (position_meeting(x-ww, y-ww, obj_cube))) {
		if (instance_exists(obj_pause_menu)) idle_ready_teleport = "ready";
		else if ((obj_control.state != scr_move) && (obj_control.queued_dir == "still")) idle_ready_teleport = "ready";
	} 
	if (idle_ready_teleport == "") idle_ready_teleport = "idle";
}