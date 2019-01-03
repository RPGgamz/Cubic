/// @description stop zone when gain = 0
if (!instance_exists(obj_zone)) {
    audio_stop_sound(snd_zone_heavy);
    audio_stop_sound(snd_zone_light);
}

