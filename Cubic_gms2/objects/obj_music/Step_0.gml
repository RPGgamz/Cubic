audio_emitter_gain(global_music, gain);

/*
if (amb_forest) {
    if (!audio_is_playing(snd_amb_birds_1) or !audio_is_playing(snd_amb_birds_2) or !audio_is_playing(snd_amb_birds_3)) {
        if (!audio_is_playing(snd_amb_birds_long_1)) {
            if (irandom_range(0, 1)) {
                audio_sound_gain(snd_amb_birds_1, .5, 0);
                show_debug_message("1");
                audio_play_sound(snd_amb_birds_1, 10, false);
            } else if (irandom_range(0, 1)) {
                audio_sound_gain(snd_amb_birds_2, .5, 0);
                show_debug_message("2");
                audio_play_sound(snd_amb_birds_2, 10, false);
            } else {
                audio_sound_gain(snd_amb_birds_3, .5, 0);
                show_debug_message("3");
                audio_play_sound(snd_amb_birds_3, 10, false);
            }
        }
    }
}

/* */
/*  */
