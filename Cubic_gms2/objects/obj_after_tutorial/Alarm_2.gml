/// @description go to the next room

obj_control.state = scr_move;
var fademan = instance_create(0, 0, obj_fade);
fademan.fade_in_alpha = 1;
fademan.alarm[2] = 1;