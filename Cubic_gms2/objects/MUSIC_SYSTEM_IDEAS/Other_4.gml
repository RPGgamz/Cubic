//music system

var fade_out_time = 3000;
var vol_ost = 30/100;
var vol_amb = 30/100;

//no music/ambience
if (global.sound[1] = -1 or global.sound[2] = -1) {
	if (global.sound[1] = -1) {
		var fading_music = music[c_sound[0], c_sound[1]];
		if (audio_is_playing(fading_music)) {
			audio_sound_gain(fading_music, 0, fade_out_time)
			fade_out[a] = fading_music;
			a--;
		}
	}
	if (global.sound[2] = -1) {
		var fading_ambience = ambience[c_sound[2]];
		
		if (audio_is_playing(fading_ambience)) {
			audio_sound_gain(fading_ambience, 0, fade_out_time)
			fade_out[a] = fading_ambience;
			a--;
		}
	}
	exit;
}

//change in music/ambience
if (global.sound[0] != c_sound[0] or global.sound[1] != c_sound[1] or global.sound[2] != c_sound[2]) {

}











