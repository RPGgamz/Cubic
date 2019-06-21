
mist_width = sprite_get_width(spr_redmts_mist);

cluster_chance = 1/2;
cluster_yvar = 3;
cluster_xvar = 10;

min_dx = 0.04;
max_extra_dx = 0.06
max_dz = 1/600;

mist_creation_xoffset = -(min_dx + max_extra_dx/2)/max_dz;
held_mists = -1;
mists = 25*round(room_height*room_width/(120*108));
