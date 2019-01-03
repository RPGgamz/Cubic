#define scr_move

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

#define scr_stop_check
///scr_stop_check(obj)
with (argument0) {
    //collide with solid
    while (scr_collide_with_solid() && move > 0) {
        /*/wallhit animation
        if (wallhit_an == noone) {
            wallhit_an = instance_create(x, y, obj_cube_wallhit)
            wallhit_an.parent = id;
            switch (obj_control.slide_dir)
                {
                case "right":
                    wallhit_an.image_angle = 0;
                    break;
                case "up":
                    wallhit_an.image_angle = 90;
                    break;
                case "left":
                    wallhit_an.image_angle = 180;
                    break;
                case "down":
                    wallhit_an.image_angle = 270;
                    break;
                }
        }*/
        move -= 1;
    }
    if (move != obj_control.movespeed) {
        scr_move_me();
        stop_check_done = true;
        return(true);
    }
    
    //collide with other blocks
    var other_cube = instance_place(x+scr_dx(2), y+scr_dy(2), obj_cube);
    //if there is another block
    if (instance_exists(other_cube)) {
        //make sure it has done a stop check
        with (other_cube) if (stop_check_done = false) stop = scr_stop_check(id);
        
        //if it is not moving
        if (other_cube.stop) {
            //if i can't pass through it
            if (other_cube.lvl != lvl or other_cube.combine_lock or lvl = 0) {
                //move up behind it
                while (place_meeting(x+scr_dx(2), y+scr_dy(2), other_cube) && move > 0) {
                    move -= 1;
                }
                if (move != obj_control.movespeed) {
                    scr_move_me();
                    stop_check_done = true;
                    return(true);
                }
            //but if i can pass through it
            } else {
                //draw it over me
                other_cube.depth = -1
                //play the combine animation
                if (other_cube.combine_an == noone) with (other_cube) {
                    combine_an = instance_create(other_cube.x, other_cube.y, obj_cube_combine);
                    combine_an.parent = id;
                }
                //if it is frozen, play the icebreak animation
                if (other_cube.sprite_index == spr_frozen && other_cube.frozen) {
                    with (other_cube){
                        sprite_index = spr_cube;
                        image_index = lvl;
                    }
                    instance_create(other_cube.x, other_cube.y, obj_icebreak);
                }
            }
        }
    }
    
    //collide with pushers
    var pusher = instance_place(x+scr_dx(2), y+scr_dy(2), obj_pusher);
    if (instance_exists(pusher)) {
        with (pusher) if (stop_check_done = false) scr_push(id);
        if (pusher.step == pusher.max_steps) {
            while (place_meeting(x+scr_dx(2), y+scr_dy(2), pusher) && move > 0) {
                move -= 1;
            }
            if (move != obj_control.movespeed) {
                scr_move_me();
                stop_check_done = true;
                return(true);
            }
        }
    }
    
    //the code reached this line, so we didnt collide with anything
    stop_check_done = true;
    return (false);
}


















#define scr_push
///scr_push(instance id)
//this is like stop_check for pushed objects


//with pusher blocks, do this
with (argument0) {
    move = obj_control.movespeed;
    
    //track step-number
    if (step == max_steps) {
        stop_check_done = true;
        exit;
    }
    
    //collide with solids
    while (scr_collide_with_solid() && move > 0) {
        move -= 1;
    }
    if (move != obj_control.movespeed) {
        scr_move_me();
        stop_check_done = true;
        step = max_steps;
        exit;
    }
    
    //collide with other pushers
    var col_p = instance_place(x+scr_dx(2), y+scr_dy(2), obj_pusher)
    if (instance_exists(col_p)) {
        //make sure it has done a stop check
        with (col_p) if (stop_check_done = false) scr_push(id);
        if (col_p.step == col_p.max_steps) {
            //be stopped by it, if it is not moving
            while (place_meeting(x+scr_dx(2), y+scr_dy(2), col_p) && move > 0) {
                move -= 1;
            }
            if (move != obj_control.movespeed) {
                scr_move_me();
                stop_check_done = true;
                step = max_steps;
                exit;
            }
        }
    }
    
    //collide with cubes
    var col_c = instance_place(x+scr_dx(2), y+scr_dy(2), obj_cube)
    if (instance_exists(col_c)) {
        //make sure it has done a stop check
        with (col_c) if (stop_check_done = false) stop = scr_stop_check(id);
        //be stopped by it, if it is not moving
        if (col_c.stop) {
            while (place_meeting(x+scr_dx(2), y+scr_dy(2), col_c) && move > 0) {
                move -= 1;
            }
            if (move != obj_control.movespeed) {
                scr_move_me();
                stop_check_done = true;
                step = max_steps;
                exit;
            }
        }
    }
    
    stop_check_done = true;
}

#define scr_collide_with_solid
///returns whether there'd be a collision with a solid, if calling instance were to move by scr_move_me
var temp_blocked = false
var blocker = instance_place(x+scr_dx(0), y+scr_dy(0), obj_solid);
if (instance_exists(blocker)) {
    if (blocker.lvl != lvl) {
        scr_wrong_color_stop(blocker, id);
        temp_blocked = true;
    } else {
        blocker.x += 1000;
        var blocker2 = instance_place(x+scr_dx(0), y+scr_dy(0), obj_solid);
        if (instance_exists(blocker2)) {
            if (blocker2.lvl != lvl) {
                scr_wrong_color_stop(blocker2, id);
                temp_blocked = true;
            } else {
                blocker2.x += 1000;
                var blocker3 = instance_place(x+scr_dx(0), y+scr_dy(0), obj_solid);
                if (instance_exists(blocker3)) {
                    if (blocker3.lvl != lvl) {
                        scr_wrong_color_stop(blocker3, id);
                        temp_blocked = true;
                    }
                }
                blocker2.x -= 1000;
            }
        }
        blocker.x -= 1000;
    }
}
return(temp_blocked);

#define scr_wrong_color_stop
///scr_wrong_color_stop(blocker, cube)
with (argument0)
    {
    if (lvl != -1 && object_get_parent(object_index) == obj_trash && object_get_parent(argument1.object_index) == obj_cube)
        {
        var wcs = instance_create(x, y, obj_wrong_color_stop);
        switch (obj_control.slide_dir)
            {
            case "right":
                wcs.image_angle = 0
                break;
            case "up":
                wcs.image_angle = 90
                break;
            case "left":
                wcs.image_angle = 180
                break;
            case "down":
                wcs.image_angle = 270
                break;
            }
        //destroy wcs again if it is a duplicate
        with (wcs)
            {
            for (var i = 0; i < instance_number(obj_wrong_color_stop); i++)
                {
                var other_wcs = instance_find(obj_wrong_color_stop, i)
                if (id != other_wcs && other_wcs.x == x && other_wcs.y == y && other_wcs.image_angle == image_angle && other_wcs.disappear == false) instance_destroy();
                else my_cube = argument1;
                }
            }
        }
    }

#define scr_dx
///scr_dx(extra_size)
switch (obj_control.slide_dir) {
    case "left":
        return(-(move+argument0));
        break;
    case "right":
        return(move+argument0);
        break;
}
return(0);

#define scr_dy
///scr_dy(extra_size)
switch (obj_control.slide_dir) {
    case "up":
        return(-(move+argument0));
        break;
    case "down":
        return(move+argument0);
        break;
}
return(0);

#define scr_move_me
switch (obj_control.slide_dir) {
    case "left":
        x -= move;
        break;
    case "right":
        x += move;
        break;
    case "up":
        y -= move;
        break;
    case "down":
        y += move;
        break;
}
#define scr_camera_follow

show_debug_message("scr_camera_follow gør ingenting, for koden er flyttet til control.roomstart")