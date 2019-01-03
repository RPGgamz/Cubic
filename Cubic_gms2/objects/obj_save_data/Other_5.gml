/// @description Save

//pzones
if instance_exists(obj_pz) {
    ds_map_replace(pzones, room, obj_pz.solved_pzs);
}

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

