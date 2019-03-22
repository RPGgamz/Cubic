
//numbers
vel = 0;
bb = (obj_display_manager.ideal_width-120)/2
w_screen = camera_get_view_width(view_get_camera(1))/2;
h_screen = camera_get_view_height(view_get_camera(1))/2;

//views
view_set_visible(1, false);
view_set_visible(2, true);
camera_set_view_size(view_get_camera(2), room_width, room_height);

//treetop get sprite
var lay_id = layer_get_id("Compatibility_Tiles_Depth_-1000");
var treetop_array = layer_get_all_elements(lay_id);
if (layer_get_element_type(treetop_array[0]) == layerelementtype_sprite) treetop_sprite = layer_sprite_get_sprite(treetop_array[0]);
else if (layer_get_element_type(treetop_array[0]) == layerelementtype_tile) treetop_sprite = layer_tile_get_sprite(treetop_array[0]); //gms1 import compatibility. tiles can not be added rnow.
layer_destroy(lay_id);

//surfaces
surf_room = -1;
surf_treetop = -1;

//settings
w_bor = w_screen/2;
h_bor = h_screen/2;
a = 1/20; //acceleration
weight_bor = 4;