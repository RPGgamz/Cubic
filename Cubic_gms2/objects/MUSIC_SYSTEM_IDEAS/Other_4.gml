//music system

var fade_out_time = 600;
var fade_in_time = 2000;
var fade_in_time_amb = 800;
var vol_ost = 30/100;
var vol_amb = 30/100;

//fade old music/ambience
if (global.sound[1] != c_sound[1] && c_sound[1] != -1) {
	var fading_music = music[c_sound[0], c_sound[1]];
	if (audio_is_playing(fading_music)) {
		audio_sound_gain(fading_music, 0, fade_out_time)
		fade_out[a] = fading_music;
		a++; // MOVE ALLE FADE_OUT EN FREM? LETTERE STEP EVENT SÅ??
		show_debug_message("fading old soundtrack");
	}
}
if (global.sound[2] != c_sound[2] && c_sound[2] != -1) {
	var fading_ambience = ambience[c_sound[2]];
	if (audio_is_playing(fading_ambience)) {
		audio_sound_gain(fading_ambience, 0, fade_out_time)
		fade_out[a] = fading_ambience;
		a++; // MOVE ALLE FADE_OUT EN FREM? LETTERE STEP EVENT SÅ??
		show_debug_message("fading old ambience");
	}
}

//change in music/ambience
if (global.sound[0] != c_sound[0] or global.sound[1] != c_sound[1] or global.sound[2] != c_sound[2]) {
	if (global.sound[0] != c_sound[0]) {
		//new type and track
		if (global.sound[1] != -1) {
			var soundtrack = music[global.sound[0],global.sound[1]];
			audio_sound_gain(soundtrack, 0, 0);
			audio_sound_gain(soundtrack, vol_ost, fade_in_time);
			audio_play_sound(soundtrack, 10, true);
			show_debug_message("new soundtrack playing!");
		}
		c_sound[0] = global.sound[0];
		c_sound[1] = global.sound[1];
	} else if (global.sound[1] != c_sound[1]) {
		//new track
		if (global.sound[1] != -1) {
			var soundtrack = music[global.sound[0], global.sound[1]];
			audio_sound_gain(soundtrack, 0, 0);
			audio_sound_gain(soundtrack, vol_ost, fade_in_time);
			audio_play_sound(soundtrack, 10, true);
			show_debug_message("new soundtrack playing!");
			
		}
		c_sound[1] = global.sound[1];
	}
	if (global.sound[2] != c_sound[2]) {
		//new ambience
		if (global.sound[2] != -1) {
			var amb = ambience[global.sound[2]];
			audio_sound_gain(amb, 0, 0);
			audio_sound_gain(amb, vol_amb, fade_in_time_amb);
			audio_play_sound(amb, 10, true);
			show_debug_message("new ambience playing!");
		}
		c_sound[2] = global.sound[2];
	}

}











