/// @description set cam target position
step++;
obj_forest_camera.targ_x = lerp(start_targ_x, obj_forest_camera.targ_x, step/step_max); 
obj_forest_camera.targ_y = lerp(start_targ_y, obj_forest_camera.targ_y, step/step_max);

if (step >= step_max) instance_destroy();