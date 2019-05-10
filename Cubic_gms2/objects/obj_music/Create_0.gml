global_music = audio_emitter_create();
playing = false;
gain = 50/100;

audio_master_gain(obj_control.master_gain);

amb_forest = false;


pz_number = 0;
pz_ost[1] = snd_ost_pz_1;
pz_ost[2] = snd_ost_pz_2;
pz_ost[3] = snd_ost_pz_3;