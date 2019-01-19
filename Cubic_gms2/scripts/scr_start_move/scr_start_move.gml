

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
//reset pushers
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

