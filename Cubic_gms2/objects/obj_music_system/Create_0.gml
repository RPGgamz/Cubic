
//VARIABLES
/*
c_sound[0] = -1; //"last" area type
c_sound[1] = -1; //"last" song index
c_sound[2] = -1; //"last" ambience index
global.sound[0] = -1; //"new" area type
global.sound[1] = -1; //"new" song index
global.sound[2] = -1; //"new" ambience index
*/
c_snd[0] = -1; //current song index
c_snd[1] = -1; //current ambience index
n_snd[0] = -1; //new song index
n_snd[1] = -1; //new ambience index


fade_out[10] = 0;

master_gain = 50/100;
audio_master_gain(master_gain);


//MUSIC and AMBIENCE index and volume
var a = 0;
var b = 0;

//ambience
ambience[a  , 0] = snd_amb_birds_long_1;
ambience[a++, 1] = 30/100;

//music
//puzzle zones
music[b  , 0] = snd_ost_pz_1;
music[b++, 1] = 46/100;
music[b  , 0] = snd_ost_pz_2;
music[b++, 1] = 33/100;
music[b  , 0] = snd_ost_pz_3;
music[b++, 1] = 56/100;
//intro
music[b  , 0] = snd_ost_op_pt_1;
music[b++, 1] = 45/100;
music[b  , 0] = snd_ost_op_pt_2;
music[b++, 1] = 45/100;
//forest
music[b  , 0] = snd_ost_forest_1;
music[b++, 1] = 29/100;
music[b  , 0] = snd_ost_forest_star;
music[b++, 1] = 33/100;


/*
//puzzle soundtracks
music[0, 0] = snd_ost_pz_1;
music[0, 1] = snd_ost_pz_2;
music[0, 2] = snd_ost_pz_3;
//intro soundtracks
music[1, 0] = snd_ost_op_pt_1;
music[1, 1] = snd_ost_op_pt_2;
//green forest soundtracks
music[2, 0] = snd_ost_forest_1; //normal 1
music[2, 1] = snd_ost_forest_star; //star
//red mountains soundtracks
//city soundtracks
/*
c_sound[0] = array_height_2d(music)+1;
c_sound[2] = array_length_1d(ambience)+1;