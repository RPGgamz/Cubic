
//working variables
bb = (obj_display_manager.ideal_width-120)/2
surf_room = -1;
w_screen = obj_display_manager.view_zoom*(display_get_gui_width()/2 - bb);
h_screen = obj_display_manager.view_zoom*display_get_gui_height()/2;


//views
view_set_visible(1, false);
view_set_visible(2, true);
camera_set_view_size(view_get_camera(2), room_width, room_height);

//room surfaces
var i = 0;
par_ls = [];
while(true) {
	var this_layer = layer_get_id("parallax_" + string(i));
	if layer_exists(this_layer) {
		par_ls[i] = this_layer
		layer_script_begin(this_layer, scr_layer_targ_surf);
		layer_script_end(this_layer, scr_layer_reset_targ);
	} else break;
	i++;
}
par_ls_surfs = array_create(array_length_1d(par_ls));


//mist
instance_create(0,0,obj_redmts_mist_control);

//settings
x_border_hardness = 0.9;
y_border_hardness = 0.9;
speed_pr_dist = 0.08; //camera speed (pixels/sec) is proportional by this number to distance to target (pixels)

//set start pos
event_user(0);