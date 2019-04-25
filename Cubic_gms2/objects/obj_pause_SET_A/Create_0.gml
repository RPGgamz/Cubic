
//numbers
slider_max = 22;
scroll_dir = 0;
scroll_pause = 8;
scroll_spd = 4;


//local enum
e_x = 0;
e_y = 1;
e_label = 2;
e_value = 3;

e = 0;
entries = [];

var E = -1;

entries[++E, e_label] = "MASTER";
entries[E, e_value] = slider_max;
entries[E, e_x] = 61;
entries[E, e_y] = 40;
entries[++E, e_label] = "MUSIC";
entries[E, e_value] = slider_max;
entries[E, e_x] = 61;
entries[E, e_y] = 47;
entries[++E, e_label] = "SFX";
entries[E, e_value] = slider_max;
entries[E, e_x] = 61;
entries[E, e_y] = 54;
entries[++E, e_label] = "PUZZLE-MUSIC";
entries[E, e_value] = true;
entries[E, e_x] = 61;
entries[E, e_y] = 64;
entries[++E, e_label] = "BACK";
entries[E, e_x] = 39;
entries[E, e_y] = 78;
