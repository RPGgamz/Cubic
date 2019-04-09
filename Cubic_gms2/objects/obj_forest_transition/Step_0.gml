///@description set cam target position

if (obj_control.state == scr_nothing) {
	step++;
	
	end_targ_x = new_camera.targ_x;
	end_targ_y = new_camera.targ_y;
	
	new_camera.targ_x = lerp(start_targ_x, new_camera.targ_x, clamp(step/step_max,0,1)); 
	new_camera.targ_y = lerp(start_targ_y, new_camera.targ_y, clamp(step/step_max,0,1));
	
	if (step >= step_max) {
		with (obj_control) scr_move_only(other.new_cube);
	}
}
progress = sqrt(sqr(new_camera.x-x) + sqr(new_camera.y-y)) / sqrt(sqr(end_targ_x-x) + sqr(end_targ_y-y))


show_debug_message(progress)


if (progress >= 1 ) instance_destroy();



