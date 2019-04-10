
//working variables
bb = (obj_display_manager.ideal_width-120)/2
surf_room = -1;
w_screen = obj_display_manager.view_zoom*(display_get_gui_width()/2 - bb);
h_screen = obj_display_manager.view_zoom*display_get_gui_height()/2;

//views
view_set_visible(1, false);
view_set_visible(2, true);
camera_set_view_size(view_get_camera(2), room_width, room_height);

//settings
border_hardness = 1;
speed_pr_dist = 0.08; //camera speed (pixels/sec) is proportional by this number to distance to target (pixels)

//set start pos
if (object_index != obj_forest_camera) {
	if			(x > room_width - w_screen)		x = lerp(x, room_width - w_screen, border_hardness);
	else if		(x < w_screen)					x = lerp(x, w_screen, border_hardness);
	if			(y > room_height - h_screen)	y = lerp(y, room_height - h_screen, border_hardness);
	else if		(y < h_screen)					y = lerp(y, h_screen, border_hardness);
	targ_x = x;
	targ_y = y;
}