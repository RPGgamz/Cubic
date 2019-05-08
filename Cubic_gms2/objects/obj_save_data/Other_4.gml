/// @description Load

//pzones
var savedvalue = ds_map_find_value(pzones, room)
if (instance_exists(obj_pz) && !is_undefined(savedvalue)) {
    obj_pz.solved_pzs = savedvalue;
}

//doors
for (var i = instance_number(obj_locked_wall)-1; i>-1; i--) {
    var this_door = instance_find(obj_locked_wall, i);
    var savedvalue = ds_map_find_value(doors, string(room)+" "+string(i));
    if (savedvalue == -1) with(this_door) {
        sprite_index = -1;
        image_speed = 0;
    } else if (savedvalue == 0) with(this_door) {
        alarm[0] = 30;
    }
}

//stars
for (var i = instance_number(obj_star)-1; -1<i; i--) {
    var this_star = instance_find(obj_star, i);
    var savedvalue = ds_map_find_value(stars, string(room)+" "+string(i));
    if (savedvalue == -1) with(this_star) {
        sprite_index = -1;
        image_speed = 0;
    } else if (savedvalue == 0) with(this_star) {
        event_user(0);
    }
}

//items
for (var i = instance_number(obj_item_parent)-1; -1<i; i--) {
    var this_item = instance_find(obj_item_parent, i);
    var savedvalue = ds_map_find_value(items, this_item.object_index);
    if (savedvalue == -1) with(this_item) {
        sprite_index = -1;
        image_speed = 0;
    }
}


