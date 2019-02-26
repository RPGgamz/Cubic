/// @description Load

//start-of-game place player
if (first_room == true) {
	show_debug_message("lol?")
	instance_create(load_x, load_y, obj_cube_1);
	first_room = false;
	load_x = 0;
	load_y = 0;
}

//pzones
var savedvalue = ds_map_find_value(pzones, room)
if (instance_exists(obj_pz) && !is_undefined(savedvalue)) {
    obj_pz.solved_pzs = savedvalue;
}

//doors
for (var i = instance_number(obj_locked_wall)-1; -1<i; i--) {
    var this_door = instance_find(obj_locked_wall, i);
    var savedvalue = ds_map_find_value(doors, string(room)+" "+string(i));
    if (savedvalue == -1) with(this_door) {
        sprite_index = -1;
        image_speed = 0;
    } else if (savedvalue == 0) with(this_door) {
        alarm[0] = 30;
    }
}

