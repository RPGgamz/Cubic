/// @description set target position
if (!instance_exists(player_cube)) {show_debug_message("camera object self destruct! :D"); instance_destroy();}


if (first_frame) {
	first_frame = false;
	
	//view zoom based setup
	w_screen = obj_display_manager.view_zoom*(display_get_gui_width()/2 - bb); //these are actually      00
	h_screen = obj_display_manager.view_zoom*display_get_gui_height()/2;	   //the halved dimensions  <__>
	
	//get borders and parallax origo
	if (instance_number(obj_camera_borders) == 1) {
		right_bor	= obj_camera_borders.x + obj_camera_borders.sprite_width/2;
		left_bor	= obj_camera_borders.x - obj_camera_borders.sprite_width/2;
		bottom_bor	= obj_camera_borders.y + obj_camera_borders.sprite_height/2;
		top_bor		= obj_camera_borders.y - obj_camera_borders.sprite_height/2;
		instance_destroy(obj_camera_borders);
	} else {
		right_bor	= room_width;
		left_bor	= 0;
		bottom_bor	= room_height;
		top_bor		= 0;
	}
	if (instance_number(obj_parallax_origo) == 1) {
		parallax_origo_x = obj_parallax_origo.x;
		parallax_origo_y = obj_parallax_origo.y;
		instance_destroy(obj_parallax_origo);
	} else {
		parallax_origo_x = room_width/2;
		parallax_origo_y = room_height/2;
	}
	
	//mist
	if (!instance_exists(obj_redmts_mist_control)) instance_create(0,0,obj_redmts_mist_control);
	
	targ_x = x;
	targ_y = y;
	event_user(0);
	x = targ_x;
	y = targ_y;
	
	//cloud layers
	var i = 0;
	anyclouds = false;
	repeat(array_length_1d(cloud_layers)) {
		if (cloud_layers[i++]) {
			anyclouds = true;
			cloud_speed = 0.02;
			cloud_time = irandom(room_width/cloud_speed);
			break;
		}
	}
	
} else {
	targ_x = player_cube.x;
	targ_y = player_cube.y;
	event_user(0);
	
	if (anyclouds) {
		if (++cloud_time >= room_width/cloud_speed) cloud_time = 0;
	}
}