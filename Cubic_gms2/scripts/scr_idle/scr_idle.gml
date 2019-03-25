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
		scr_move();
    }
} else move_queue_timer --;

