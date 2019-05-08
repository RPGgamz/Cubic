/// @description Save overworld



//doors
for (var i = instance_number(obj_locked_wall)-1; -1<i; i--) {
    var this_door = instance_find(obj_locked_wall, i);
    var save_val;
    if (this_door.sprite_index == -1) {
        save_val = -1;
    } else {
        if (this_door.sprite_index == spr_wall_unlock_h || this_door.alarm[0] != -1) {
            save_val = 0;
        } else save_val = 1;
    }
    ds_map_replace(doors, string(room)+" "+string(i), save_val);
}

//stars
for (var i = instance_number(obj_star)-1; -1<i; i--) {
    var this_star = instance_find(obj_star, i);
    var save_val;
    if (this_star.sprite_index == -1) {
        save_val = -1;
    } else {
        if (this_star.sprite_index == spr_star_absorb) {
            save_val = 0;
        } else save_val = 1;
    }
    ds_map_replace(stars, string(room)+" "+string(i), save_val);
}

//items
for (var i = instance_number(obj_item_parent)-1; -1<i; i--) {
    var this_item = instance_find(obj_item_parent, i);
    var save_val;
    if (this_item.sprite_index == -1) {
        save_val = -1;
    } else {
        save_val = 1;
    }
    ds_map_replace(items, this_item.object_index, save_val);
}