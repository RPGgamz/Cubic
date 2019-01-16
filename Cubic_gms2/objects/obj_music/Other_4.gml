/// @description zone sound
if (instance_exists(obj_zone)) {
    if !(room == pz_tutorial or room == pz_green_forest_6a or room == pz_green_forest_9a or room == pz_green_forest_11a or room == pz_green_forest_7c or room == pz_green_forest_4d or room == pz_green_forest_9d or room == pz_red_mountains_2b or room == pz_red_mountains_3d or room == pz_red_mountains_4e or room == pz_red_mountains_4ea) {
        if (audio_is_playing(snd_zone_light)) {
            audio_stop_sound(snd_zone_light);
        }
        audio_sound_gain(snd_zone_light, 0, 0);
        audio_sound_gain(snd_zone_light, 6/100, 1420);
        audio_play_sound(snd_zone_light, 9, true);
    }
} else if (room != pz_tutorial or room != pz_green_forest_6a or room != pz_green_forest_9a or room != pz_green_forest_11a or room != pz_green_forest_7c or room != pz_green_forest_4d or room != pz_green_forest_9d) {
    audio_sound_gain(snd_zone_heavy, 0, 400);
    audio_sound_gain(snd_zone_light, 0, 400);
    with (obj_music) {alarm[0] = 400;}
}

///forest music
/*
if (room == rm_green_forest_3a) {
    audio_play_sound_on(global_music, snd_ost_entering_green, false, 12);
}

/* */
///forest ambience
var vol = 30/100;
if (room == rm_green_forest_3a && !amb_forest) {
    amb_forest = true;
    
    audio_sound_gain(snd_amb_birds_long_1, 0, 0);
    audio_sound_gain(snd_amb_birds_long_1, vol, 2100);
    audio_play_sound(snd_amb_birds_long_1, 10, true);
} else if (room == pz_green_forest_6a or room == pz_green_forest_9a or room == pz_green_forest_11a or room == pz_green_forest_7c or room == pz_green_forest_4d or room == pz_green_forest_9d or room == rm_green_forest_12a or room == rm_green_forest_11d) {
    audio_sound_gain(snd_amb_birds_long_1, 6/100, 600);
} else if (amb_forest) {
    audio_sound_gain(snd_amb_birds_long_1, vol, 600);
}

/* */
/*  */
