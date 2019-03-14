/// @description kom ind ad den rigtige dør (overworld)
room_persistent = false;

if (instance_exists(obj_rpg_control)) exit;

var new_cube = noone;

//first room
if (obj_save_data.first_room == true) {
	new_cube = instance_create(obj_save_data.load_x, obj_save_data.load_y, obj_cube_1);
	obj_save_data.first_room = false;
	obj_save_data.load_x = 0;
	obj_save_data.load_y = 0;
}

else if (target_door != -1) {
    var entrance = noone;
    //find døren, hvis den er en dør
    for (var i = 0; i < instance_number(obj_door); i++) {
        var this_door = instance_find(obj_door, i);
        if (this_door.ID == target_door) {
            entrance = this_door;
            break;
        }
    }
    
    //find døren, hvis den er en zone i virkeligheden
    if (entrance == noone) {
        for (var i = 0; i < instance_number(obj_zone); i++) {
            var this_zone = instance_find(obj_zone, i);
            if (this_zone.ID = target_door) {
                entrance = this_zone;
                //find evt. den mur der skal låses op
                for (var j = 0; j < instance_number(obj_locked_wall); j++) {
                    var this_wall = instance_find(obj_locked_wall, j);
                    if (this_zone.target_locked_wall == this_wall.ID && ds_map_find_value(obj_save_data.pzones, this_zone.target_room) == -1) {
                        this_wall.alarm[0] = 1;
                        state = scr_nothing;
                        break;
                    }
                }
                break;
            }
        }
    }
    
    if (entrance != noone) {
        //lav en cube
        new_cube = instance_create(entrance.x, entrance.y, obj_cube);
        new_cube.lvl = traveling_cube_lvl;
        new_cube.image_index = new_cube.lvl;
        
        //move state, men kun for den nye cube. 
        slide_dir = entrance.dir;
        if (instance_exists(obj_forest_transition)) {
            obj_forest_transition.new_cube = new_cube;
        } else if !(slide_dir == "still") {
                scr_move_only(new_cube);
        }
    }
}


//camera follow player
if (!instance_exists(obj_pz) && instance_exists(new_cube)) { // additional conditions: (room_width > 120 || room_height > 108)  && obj_control.target_door != -1 &&
	var f = instance_create(new_cube.x, new_cube.y, obj_camera_follow);
	f.player_cube = new_cube;
	camera_set_view_pos(view_get_camera(1), new_cube.x, new_cube.y);
	show_debug_message("hello? " + string (camera_get_view_x(1)) + " " + string(camera_get_view_y(1)))
}
