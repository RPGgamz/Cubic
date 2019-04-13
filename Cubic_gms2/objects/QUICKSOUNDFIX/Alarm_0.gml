/// @description Insert description here
// You can write your code in this editor
audio_sound_pitch(snd_bush_short, 1 + random_range(-.05, .05));
audio_sound_gain(snd_bush_short, 27/100, 0);
audio_sound_gain(snd_bush_short, 0, 360);
audio_play_sound(snd_bush_short, 10, false);