/// @description start animation
audio_sound_gain(snd_star, .5, 0);
audio_play_sound(snd_star, 9, false);
    
audio_sound_gain(snd_star_bass, 1, 0);
audio_play_sound(snd_star_bass, 9, false);
    
image_index = 0;
image_speed = 10/60;
sprite_index = spr_star_absorb;

with (obj_save_data) event_user(0);