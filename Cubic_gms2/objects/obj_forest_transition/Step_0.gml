///@description set cam target position

if (obj_control.state == scr_nothing) {
	step++;
	
	progress = sqrt(sqr(new_camera.x-start_targ_x) + sqr(new_camera.y-start_targ_y)) / sqrt(sqr(new_camera.targ_x-start_targ_x) + sqr(new_camera.targ_y-start_targ_y))
	
	new_camera.targ_x = lerp(start_targ_x, new_camera.targ_x, clamp(step/step_max,0,1)); 
	new_camera.targ_y = lerp(start_targ_y, new_camera.targ_y, clamp(step/step_max,0,1));
	
	if (step >= step_max) {
		end_targ_x = new_camera.targ_x;
		end_targ_y = new_camera.targ_y;
		with (obj_control) scr_move_only(other.new_cube);
	}
} else progress = sqrt(sqr(new_camera.x-start_targ_x) + sqr(new_camera.y-start_targ_y)) / sqrt(sqr(end_targ_x-start_targ_x) + sqr(end_targ_y-start_targ_y))

if (progress >= 0.98 ) instance_destroy();



