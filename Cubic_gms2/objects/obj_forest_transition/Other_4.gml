//coordinate calculations

new_camera = obj_forest_camera;

old_x0 = 0;
old_y0 = 0;
switch (transition_dir) {
    case "left":
        gb = width*gb_thickness/100;
		old_x0 += width + gb;
		break;
		
    case "right":
        gb = width*gb_thickness/100;
		old_x0 -= width + gb;
		break;
		
    case "up":
        gb = height*gb_thickness/100;
		old_y0 += height + gb;
		break;
		
    case "down":
        gb = height*gb_thickness/100;
		old_y0 -= height + gb;
		break;
}
x += old_x0;
start_cube_x += old_x0;
start_targ_x += old_x0;
y += old_y0;
start_cube_y += old_y0;
start_targ_y += old_y0;

new_camera.x = x;
new_camera.y = y;

//timing
switch (transition_dir) {
    case "left":
    case "right":
		step_max = abs(start_cube_x-new_cube.x)/obj_control.movespeed;
		break;
		
    case "up":
    case "down":
		step_max = abs(start_cube_y-new_cube.y)/obj_control.movespeed;
		break;
}
with (obj_door) alarm[0] += other.step_max;

