
//prep for sound
anycubestopped = false;
var anycubecombined = false;

//Exit (obj_door)
for (var i = 0; i < instance_number(obj_door); i++) {
    var this_door = instance_find(obj_door, i);
    if (this_door.alarm[0] != -1) break;
    for (var j = 0; j < ds_list_size(cubes); j++) {
        var this_cube = ds_list_find_value(cubes, j);
        if (position_meeting(this_cube.x, this_cube.y, this_door)) {
            //Hvis der er en block og en dør som står samme sted
            if (this_door.type == "normal") {
                scr_room_goto(this_door.target_room, this_door.target_door, this_cube.lvl);
                instance_destroy(this_cube);
                exit;
            } else if (this_door.type == "start") {
                //skab et fade obj - brug også dette til "esc" af puzzle zones mm.
            //Forest transitions
            } else if (this_door.type == "forest") {
                target_door = this_door.target_door;
                traveling_cube_lvl = this_cube.lvl;
                state = scr_nothing;
                var transobj = instance_create(0,0, obj_forest_transition);
                transobj.next_room = this_door.target_room;
                transobj.transition_dir = this_door.transition_dir;
                transobj.old_cube = this_cube;
                
                with (transobj) {
                    scr_color12_in_transition();
                }
                
                if (this_door.transition_time != -1) transobj.transition_time = this_door.transition_time;
                instance_destroy(this_cube);
                exit;
            }
        }
    }
}

//Combine cubes
for (var i = 0; i < ds_list_size(cubes)-1; i++) {
    var this_cube = ds_list_find_value(cubes, i);
    for (var j = ds_list_size(cubes)-1; j > i ; j--) {
        var other_cube = ds_list_find_value(cubes, j);
        if !(other_cube.lvl == this_cube.lvl) continue;
        if !(other_cube.x == this_cube.x) continue;
        if !(other_cube.y == this_cube.y) continue;
        ds_list_delete(cubes, j);
        with (other_cube) {
            if (instance_exists(combine_an)) {
                combine_an.parent = this_cube;
            }
            instance_destroy();
        }
        with (this_cube) {
            stop = true;
            stop_check_done = true;
            combine_lock = true;
            lvl += 1;
            frozen = false;
            sprite_index = spr_cube;
            image_index = lvl;
            depth = 0;
            combine_an = noone;
        }
        anycubecombined = true;
    }
}

//Do trash things
with (obj_trash) {
    var other_cube = instance_position(x, y, obj_cube);
    if (instance_exists(other_cube)) {
        ds_list_delete(obj_control.cubes, ds_list_find_index(obj_control.cubes, other_cube));
        instance_destroy(other_cube);
    }
    
}

//Collision/stop checks
for (var i = 0; i < ds_list_size(cubes); i++) {
    with (ds_list_find_value(cubes, i)) move = obj_control.movespeed;
}
for (var i = 0; i < ds_list_size(cubes); i++) {
    with (ds_list_find_value(cubes, i)) {
        if (!stop && !stop_check_done) {
            stop = scr_stop_check(id);
            if (stop) obj_control.anycubestopped = true;
        }
    }
}
var rpg_pl = instance_find(obj_rpg_player,0);
if (instance_exists(rpg_pl)) {
	scr_push(rpg_pl);
}

//Queue moves
if (queued_dir = "NOT YET") {
    queued_dir = "still";
} else if (scr_save_dir_key()) {
        alarm[0] = 10;
}

//make sounds
if (anycubestopped) {
    //"Move End" sound
    audio_sound_gain(snd_move_end, .15, 0);
    audio_sound_pitch(snd_move_end, 1+random_range(-0.04, 0.04));
    audio_play_sound(snd_move_end, 1, false);
    
    if (audio_is_playing(snd_move_while)) {
        audio_stop_sound(snd_move_while);
    }
}
if (anycubecombined) {
    //"Combine" sound
    /*
    audio_sound_gain(snd_combine, .2, 0);
    audio_play_sound(snd_combine, 5, false);
    */
}

//Check if all blocks have stopped, end move-state
var stop_move_state = true;
for (var i = 0; i < ds_list_size(cubes); i++) {
    var this_cube = ds_list_find_value(cubes, i);
    if (!this_cube.stop) {
        stop_move_state = false;
        break;
    }
}
/*if (stop_move_state) for (var i = 0; i < instance_number(obj_rpg_character); i++) {
    var this_cube = instance_find(obj_rpg_character, i);
    if (this_cube.step != this_cube.max_steps) {
        stop_move_state = false;
        break;
    }
}*/
if (stop_move_state) {
    state = scr_idle;
    //queue move
    if (alarm[0] > 0) {
        move_queue_timer = 2;
    }
    alarm[0] = move_queue_timer+1;
    //change sprite on zone entrance
    with (obj_zone) if place_meeting(x, y, obj_cube) {
        sprite_index = spr_zone_rdy;
        image_speed = ready_spd;
        
        audio_stop_sound(snd_zone_heavy);
        audio_sound_gain(snd_zone_heavy, 0, 0);
        audio_sound_gain(snd_zone_heavy, 9/100, 510);
        audio_play_sound(snd_zone_heavy, 9, true);
        
        break;
    } else {
        audio_sound_gain(snd_zone_heavy, 0, 300);
    }
    exit;
}

//move cubes
for (var i = 0; i < ds_list_size(cubes); i ++) {
    with (ds_list_find_value(cubes, i)) {
        if (!stop){
            scr_move_me();
            stop_check_done = false;
        }
    }
}
//move pushers
for (var i = 0; i < instance_number(obj_pusher); i++) {
    with (instance_find(obj_pusher, i)) {
        if (stop_check_done && step < max_steps){
            scr_move_me();
            stop_check_done = false;
            step++;
        }
    }
}

/*/move camera (overworld)
if (!instance_exists(obj_pz)) {
    scr_camera_follow();
}

