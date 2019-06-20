/// @description start unlocking
//wait till fade is over, then start the animation
if (sprite_index != -1) {
    if (!instance_exists(obj_fade) && round(image_index) == 1) {
        switch (sprite_index) {
            case spr_wall_locked_h:
				sprite_index = spr_wall_unlock_h;
                break;
            case spr_wall_locked_v:
				sprite_index = spr_wall_unlock_v;
                break;
        }
        image_speed = unlock_spd;
        
        audio_sound_pitch(snd_unlock, 1.5);
        audio_sound_gain(snd_unlock, .2, 0);
        audio_play_sound(snd_unlock, 6, false);
    } else alarm[0]++;
} else obj_control.state = scr_idle;

