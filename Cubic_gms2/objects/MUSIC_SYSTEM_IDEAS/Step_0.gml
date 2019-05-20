if (audio_is_playing(snd_amb_birds_long_1) && audio_sound_get_gain(snd_amb_birds_long_1) <= 0) {
	audio_stop_sound(snd_amb_birds_long_1);
	show_debug_message("sound stopped naturally");
}
if (audio_is_playing(snd_ost_forest_1) && audio_sound_get_gain(snd_ost_forest_1) <= 0) {
	audio_stop_sound(snd_ost_forest_1);
	show_debug_message("sound stopped naturally");
}

//MUST CUT OFF IF NOT STOPPED NATURALLY