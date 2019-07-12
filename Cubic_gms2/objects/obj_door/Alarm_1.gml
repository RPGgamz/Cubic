/// @description start alarm0

alarm[0] = floor(sprite_width/obj_control.movespeed);

var done = false;
if (instance_exists(obj_control)) if (obj_control.state == scr_move) {
	done = true;
}

if (!done) alarm[1]++;