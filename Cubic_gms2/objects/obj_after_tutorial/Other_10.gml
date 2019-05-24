///@description kinda create. Is called by obj_star_crash_cinematic

door = instance_nearest(x,y,obj_door);

show_debug_message(instance_number(obj_door))
if !instance_exists(door) show_debug_message("lel")
textalpha = 0;
fadealpha = 0;

if (!is_undefined(ds_map_find_value(obj_save_data.doors, string(door.target_room)+" "+string(0)))) instance_destroy();

door.y = -100;