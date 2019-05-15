/// @description initiate
//puzzles
/*
--FORMAT--
solved_pzs = number of solved puzzles (updated in obj_pz_camera_move)
- if this is -1, the zone has been completed

pz[puzzle-number, object]
objects:
0 - id - camera
1 - id - puzzle exit
*/
solved_pzs = 0;

with(obj_camera_zone)
    {
    obj_pz.pz[number-1,0] = id;
    obj_pz.pz[number-1,1] = instance_nearest(x, y, obj_puzzle);
    }
pz[array_height_2d(pz)-1,1] = noone;

//tiles to tilesurf
tilesurf = -1;
obj_pz.bg_color = c_gray; //overwrite after create in each specific zone
layer_destroy(layer_get_id("Compatibility_Colour"));
layer_script_begin("Grid_Asset_Layer", scr_pz_target_tilesurf);
layer_script_end("Grid_Asset_Layer", scr_pz_finish_tilesurf);

//background
bg = noone;

//settings
pz_complete_pause = 60;

c_next = ord("E");
c_prev = ord("Q");

//visible walls
with (obj_wall_h)
    {
    visible = true
    sprite_index = spr_wall_h
    }
with (obj_wall_v)
    {
    visible = true
    sprite_index = spr_wall_v
    }
//initiate mini-map
//settings
map_margin = 1;
tile_size = sprite_get_width(spr_pz_map_unsolved); //mb ugly if not factor of height and width of spr_pz_map_tile?
map_alpha = 0.75;

//size ratios between room and map
map_rx = sprite_get_width(spr_camera_zone)/tile_size;
map_ry = sprite_get_height(spr_camera_zone)/tile_size;

//map size
map_width = room_width/map_rx;
map_height = room_height/map_ry;

//top left corner of the map on gui
map_x0 = __view_get( e__VW.WView, 1 )-(map_width+map_margin+(obj_display_manager.ideal_width-120)/2);
map_y0 = __view_get( e__VW.HView, 1 )-(map_height+map_margin);

map_surf = surface_create(map_width, map_height);

/* */
///sound variables
one_to_four = 1;
volume = 33/100;

/* */
/*  */
