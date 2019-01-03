#define scr_idle
//enter zones
if (keyboard_check_pressed(vk_space)) scr_enter_zone();

//use queued moves
scr_save_dir_key();
if (move_queue_timer <= 1) {
    move_queue_timer = 0
    if (queued_dir = "left" || queued_dir = "right" || queued_dir = "up"|| queued_dir = "down") {
        slide_dir = queued_dir;
        
        audio_sound_gain(snd_move, .21, 0);
        audio_sound_pitch(snd_move, 1 + random_range(-0.04, 0.04) - .05);
        audio_play_sound(snd_move, 10, false);
        
        scr_start_move();
    }
} else move_queue_timer --;

#define scr_start_move


/*
audio_sound_gain(snd_move_while, .1, 0);
audio_play_sound(snd_move_while, 5, true);
*/

//list the cubes
ds_list_clear(cubes);
for (var i = 0; i < instance_number(obj_cube); i++) {
    var this_cube = instance_find(obj_cube, i);
    if (!instance_exists(obj_pz) || position_meeting(this_cube.x, this_cube.y, obj_pz.pz[obj_pz.current_puzzle,0])) {
        ds_list_add(cubes, this_cube);
        //init move variables
        with (this_cube){
            stop = frozen;
            combine_lock = false;
            stop_check_done = frozen;
        }
    }
}
//list the pushers
for (var i = 0; i < instance_number(obj_pusher); i++) {
    var pusher = instance_find(obj_pusher, i);
    pusher.step = 0;
    pusher.stop_check_done = false;
}

queued_dir = "NOT YET";
alarm[0] = -1; // [potential optimisation] vi ku sætt den til 0, for så gør vi "NOT YET" overflødig
move_queue_timer = -1;
state = scr_move;
scr_move();

#define scr_enter_zone
for (var i = 0; i < instance_number(obj_zone); i++)
    {
    var this_zone = instance_find(obj_zone, i);
    for (var j = 0; j < instance_number(obj_cube); j++)
        {
        var this_cube = instance_find(obj_cube, j);
        if (this_cube.x = this_zone.x && this_cube.y = this_zone.y)
            {
            //Go through the zone object
            if !(instance_exists(obj_fade))
                {
                //play "teleport" sound
                audio_sound_gain(snd_teleport, .72, 0);
                audio_play_sound(snd_teleport, 9, false);
                
                //stop "zone" sounds
                audio_sound_gain(snd_zone_heavy, 0, 420);
                audio_sound_gain(snd_zone_light, 0, 420);
                with (obj_music) {alarm[0] = 420;}
                
                //creating the flash/fade
                var teleport = instance_create(0,0,obj_teleport);
                    teleport.alarm[0] = 12;
                    teleport.target_room = this_zone.target_room;

                //exiting a puzzle zone
                if (this_zone.object_index = obj_zone_exit)
                    {
                    teleport.from_pz = true;
                    teleport.target_door = this_zone.target_zone;
                    teleport.cube_lvl = traveling_cube_lvl;
                    
                    obj_pz.solved_pzs = -1;
                    }
                //entering a puzzle zone
                else
                    {
                    teleport.into_pz = true;
                    teleport.cube = this_cube;
                    teleport.cube_lvl = this_cube.lvl;
                    
                    state = scr_nothing;
                    }
                
                //change sprite for the zone
                with (this_zone)
                    {
                    sprite_index = spr_zone_start;
                    image_speed = start_spd;
                    image_index = 0;
                    fade = false;
                    alpha = 1;
                    }
                this_cube.visible = false;
                }
            exit;
            }
        }
    }