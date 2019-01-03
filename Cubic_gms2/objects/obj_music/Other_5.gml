/// @description ensuring zone sounds aren't played when entering af zone-room
if (!instance_exists(obj_zone)) {
    audio_stop_sound(snd_zone_heavy);
    audio_stop_sound(snd_zone_light);
    alarm[0] = -1;
}

