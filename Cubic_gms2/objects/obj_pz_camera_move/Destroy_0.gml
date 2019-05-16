/// @description clean up
obj_control.state = scr_idle;

obj_pz.x = x;
obj_pz.y = y;

//stop animation
if (instance_exists(obj_pz_complete_animation)) instance_destroy(obj_pz_complete_animation);

