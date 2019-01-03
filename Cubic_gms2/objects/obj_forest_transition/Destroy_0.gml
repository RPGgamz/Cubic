/// @description destroy the surfaces
surface_free(surf_start);
surface_free(surf_end);

with (obj_control) scr_move_only(other.new_cube);




///bush sound
/*
audio_sound_gain(snd_bush_short, 13/100, 0);
audio_sound_pitch(snd_bush_short, 1 - .1); //+ random_range(-.1, .1));
audio_sound_gain(snd_bush_short, 0, 1210);
audio_play_sound(snd_bush_short, 10, false);

audio_sound_pitch(snd_bush_long, .98);
audio_sound_gain(snd_bush_long, 23/100, 0);
audio_sound_gain(snd_bush_long, 0, 860);
audio_play_sound(snd_bush_long, 10, false);


/* */
/*  */
