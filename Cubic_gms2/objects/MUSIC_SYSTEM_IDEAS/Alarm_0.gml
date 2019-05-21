if (audio_is_playing(snd_amb_birds_long_1) && audio_sound_get_gain(snd_amb_birds_long_1) == 0) {
	audio_stop_sound(snd_amb_birds_long_1);
	show_debug_message("sound stopped naturally");
}
if (audio_is_playing(snd_ost_forest_1) && audio_sound_get_gain(snd_ost_forest_1) == 0) {
	audio_stop_sound(snd_ost_forest_1);
	show_debug_message("sound stopped naturally");
}
if (audio_is_playing(snd_ost_forest_star) && audio_sound_get_gain(snd_ost_forest_star) == 0) {
	audio_stop_sound(snd_ost_forest_star);
	show_debug_message("sound stopped naturally");
}
if (audio_is_playing(snd_ost_pz_1) && audio_sound_get_gain(snd_ost_pz_1) == 0) {
	audio_stop_sound(snd_ost_pz_1);
	show_debug_message("sound stopped naturally");
}
if (audio_is_playing(snd_ost_pz_2) && audio_sound_get_gain(snd_ost_pz_2) == 0) {
	audio_stop_sound(snd_ost_pz_2);
	show_debug_message("sound stopped naturally");
}
if (audio_is_playing(snd_ost_pz_3) && audio_sound_get_gain(snd_ost_pz_3) == 0) {
	audio_stop_sound(snd_ost_pz_3);
	show_debug_message("sound stopped naturally");
}
if (audio_is_playing(snd_ost_op_pt_1) && audio_sound_get_gain(snd_ost_op_pt_1) == 0) {
	audio_stop_sound(snd_ost_op_pt_1);
	show_debug_message("sound stopped naturally");
}
if (audio_is_playing(snd_ost_op_pt_2) && audio_sound_get_gain(snd_ost_op_pt_2) == 0) {
	audio_stop_sound(snd_ost_op_pt_2);
	show_debug_message("sound stopped naturally");
}
alarm[0]++;