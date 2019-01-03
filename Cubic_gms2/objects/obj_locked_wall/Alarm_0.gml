/// @description start unlocking
//wait till fade is over, then start the animation
if (sprite_index != -1) {
    if (!instance_exists(obj_fade)) {
        switch (dir) {
            case "up":
                image_angle = 0;
                break;
            case "left":
                image_angle = 90;
                break;
            case "down":
                image_angle = 180;
                break;
            case "right":
                image_angle = 270;
                break;
        }
            
        sprite_index = spr_wall_unlock_h;
        image_speed = unlock_spd;
        
        audio_sound_pitch(snd_unlock, 1.5);
        audio_sound_gain(snd_unlock, .2, 0);
        audio_play_sound(snd_unlock, 6, false);
    } else alarm[0]++;
} else obj_control.state = scr_idle;

