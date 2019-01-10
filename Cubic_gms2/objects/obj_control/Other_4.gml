/// @description kom ind ad den rigtige dør (overworld)
/// @param overworld
room_persistent = false;

if (target_door != -1) {
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
        var new_cube = instance_create(entrance.x, entrance.y, obj_cube);
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
if (instance_exists(obj_camera_follow)) {
	obj_camera_follow.player_cube = new_cube;
}

bb = (obj_display_manager.ideal_width-120)/2*obj_display_manager.view_zoom;
if (__view_get( e__VW.XView, 1 ) < -bb) __view_set( e__VW.XView, 1, -bb );
if (__view_get( e__VW.XView, 1 ) > room_width-120*obj_display_manager.view_zoom-bb) __view_set( e__VW.XView, 1, room_width-120*obj_display_manager.view_zoom-bb );
if (__view_get( e__VW.YView, 1 ) < 0) __view_set( e__VW.YView, 1, 0 );
if (__view_get( e__VW.YView, 1 ) > room_height-108*obj_display_manager.view_zoom) __view_set( e__VW.YView, 1, room_height-108*obj_display_manager.view_zoom );