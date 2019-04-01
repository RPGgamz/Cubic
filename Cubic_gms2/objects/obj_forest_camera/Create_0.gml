
//working variables
bb = (obj_display_manager.ideal_width-120)/2
w_screen = camera_get_view_width(view_get_camera(1))/2 - bb;
h_screen = camera_get_view_height(view_get_camera(1))/2;
surf_room = -1;
surf_treetop = -1;
treetop_color = -1;

//views
view_set_visible(1, false);
view_set_visible(2, true);
camera_set_view_size(view_get_camera(2), room_width, room_height);

//get treetop sprite, and its shadow
var lay_id = layer_get_id("Compatibility_Tiles_Depth_-1000");
if (!layer_exists(lay_id)) lay_id = layer_get_id("Tree_Top");
var treetop_array = layer_get_all_elements(lay_id);
if (layer_get_element_type(treetop_array[0]) == layerelementtype_sprite) treetop_sprite = layer_sprite_get_sprite(treetop_array[0]);
else if (layer_get_element_type(treetop_array[0]) == layerelementtype_tile) treetop_sprite = layer_tile_get_sprite(treetop_array[0]); //gms1 import compatibility. tiles can not be added rnow.
layer_destroy(lay_id);
shadow_sprite = asset_get_index(sprite_get_name(treetop_sprite) + "shadow");

//settings
border_hardness = 0.9;
speed_pr_dist = 0.92; //camera speed is proportional (by this number) to distance to target

//set start pos
if			(x > room_width - w_screen)		x = lerp(x, room_width - w_screen, border_hardness);
else if		(x < w_screen)					x = lerp(x, w_screen, border_hardness);
if			(y > room_height - h_screen)	y = lerp(y, room_height - h_screen, border_hardness);
else if		(y < h_screen)					y = lerp(y, h_screen, border_hardness);
targ_x = x;
targ_y = y;