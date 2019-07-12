/// @description start alarm0


var done = false;
if (instance_exists(obj_control)) if (obj_control.state == scr_move) {
	done = true;
	alarm[0] = floor(sprite_width/obj_control.movespeed);
}

if (!done) {
	alarm[1]++;
	alarm[0] = 2;
}