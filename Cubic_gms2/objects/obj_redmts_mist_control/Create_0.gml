
mist_width = sprite_get_width(spr_redmts_mist);

cluster_chance = 3/4; //actually the chance that it does not cluster
cluster_yvar = 3;
cluster_xvar = 10;

min_x = x;
min_y = y;
max_x = x+sprite_width;
max_y = y+sprite_height;

min_dx = 0.04;
max_extra_dx = 0.06
max_dz = 1/600;

mist_creation_xoffset = -((min_dx + max_extra_dx/2)/max_dz) * sprite_width/120;
mists = 25*round(sprite_width*sprite_height/(120*108));

held_mists = -1; //make mists next beginstep