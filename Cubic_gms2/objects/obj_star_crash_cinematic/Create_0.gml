
if (is_undefined(ds_map_find_value(obj_save_data.doors, string(room)+" "+string(0)))) {
	instance_deactivate_object(obj_control);
	instance_deactivate_object(obj_door);
	instance_deactivate_object(obj_after_tutorial);
	
	sprite_index = spr_star_crash;
	x = (obj_display_manager.ideal_width-120)/2;
	y = 0;
} else instance_destroy();
