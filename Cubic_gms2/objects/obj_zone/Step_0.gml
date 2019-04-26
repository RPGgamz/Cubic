/// @description Switch between idle/ready animation
var ww = sprite_width/2;
if (idle_ready_teleport != "teleport") {
	if (((position_meeting(x+ww, y+ww, obj_cube)) || (position_meeting(x-ww, y-ww, obj_cube))) && (obj_control.state == scr_idle) && (obj_control.queued_dir == "still")) {
		idle_ready_teleport = "ready";	
	} else {
		idle_ready_teleport = "idle";	
	}
}