/// @description cooldown after entering room
alarm[0] = floor(sprite_width/obj_control.movespeed);

if instance_exists(obj_forest_transition) alarm[0] += obj_forest_transition.transition_time;


