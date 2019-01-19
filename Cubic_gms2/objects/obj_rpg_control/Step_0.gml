///@description state

switch (state) {
	case idle:
		#region
		scr_save_dir_key();
		if (queued_dir = "left" || queued_dir = "right" || queued_dir = "up"|| queued_dir = "down") {
			slide_dir = queued_dir;
				
			/*
			audio_sound_gain(snd_move, .21, 0);
			audio_sound_pitch(snd_move, 1 + random_range(-0.04, 0.04) - .05);
			audio_play_sound(snd_move, 10, false);*/
        
			state = playermove
			//ready player to move
			player.step = 0;
			player.stop_check_done = false;
		}
		#endregion
		break;
	case playermove:
		#region
		//ready enemies to move
		for (var i = 0; i < instance_number(obj_pusher); i++) {
			    var pusher = instance_find(obj_pusher, i);
			    pusher.step = 0;
			    pusher.stop_check_done = false;
			}
		#endregion
		break;
	case enemymove:
		#region
		#endregion
		break;
}