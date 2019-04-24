
//local enum
e_x = 0;
e_y = 1;
e_label = 2;

e = 0;
entries = [];

var E = -1;

entries[++E, e_label] = "AUDIO";
entries[E, e_x] = 39;
entries[E, e_y] = 37;
entries[++E, e_label] = "VIDEO";
entries[E, e_x] = 39;
entries[E, e_y] = 44;
entries[++E, e_label] = "CONTROLS";
entries[E, e_x] = 39;
entries[E, e_y] = 51;
entries[++E, e_label] = "PREFERENCES";
entries[E, e_x] = 39;
entries[E, e_y] = 58;
entries[++E, e_label] = "BACK";
entries[E, e_x] = 39;
entries[E, e_y] = 69;
