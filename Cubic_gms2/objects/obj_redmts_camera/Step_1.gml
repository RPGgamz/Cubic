/// @description set target position
if (!instance_exists(player_cube)) {show_debug_message("camera object self destruct! :D"); instance_destroy();}


if (first_frame) { #region
	first_frame = false;
	
	//get the view zoom
	view_zoom = obj_display_manager.view_zoom;
	
	//these are the halved dimensions of the screen in terms of in-game pixels...
	//so basically the halved dimensions of the "window" inside the room, which is squished onto the screen
	w_screen = obj_display_manager.view_zoom*(display_get_gui_width()/2 - bb); 
	h_screen = obj_display_manager.view_zoom*display_get_gui_height()/2;
	
	//get borders and parallax origo
	if (instance_number(obj_camera_borders) == 1) {
		right_bor	= obj_camera_borders.x + obj_camera_borders.sprite_width/2;
		left_bor	= obj_camera_borders.x - obj_camera_borders.sprite_width/2;
		bottom_bor	= obj_camera_borders.y + obj_camera_borders.sprite_height/2;
		top_bor		= obj_camera_borders.y - obj_camera_borders.sprite_height/2;
		
		if (obj_camera_borders.right_border_hardness != -1) right_border_hardness = obj_camera_borders.right_border_hardness;
		if (obj_camera_borders.left_border_hardness != -1) left_border_hardness = obj_camera_borders.left_border_hardness;
		if (obj_camera_borders.top_border_hardness != -1) top_border_hardness = obj_camera_borders.top_border_hardness;
		if (obj_camera_borders.bottom_border_hardness != -1) bottom_border_hardness = obj_camera_borders.bottom_border_hardness;
		
		var i = 0;
		repeat(array_length_1d(obj_camera_borders.cloud_layers)) {
			if (obj_camera_borders.cloud_layers[i] == true) cloud_layers[i] = true;
			i++;
		}
		
		instance_destroy(obj_camera_borders);
	} else {
		right_bor	= room_width;
		left_bor	= 0;
		bottom_bor	= room_height;
		top_bor		= 0;
	}
	//put parallax origo in targ variables first, so we can use event0 to get the origo for the camera, rather than cube.
	if (instance_number(obj_parallax_origo) == 1) {
		targ_x = obj_parallax_origo.x;
		targ_y = obj_parallax_origo.y;
		instance_destroy(obj_parallax_origo);
	} else {
		targ_x = (right_bor-left_bor)/2;
		targ_y = (bottom_bor-top_bor)/2;
	}
	event_user(0);
	parallax_origo_x = targ_x;
	parallax_origo_y = targ_y;
	
	//mist
	if (!instance_exists(obj_redmts_mist_control)) {
		var mist = instance_create(0,0,obj_redmts_mist_control);
		mist.image_xscale = room_width/mist.sprite_width;
		mist.image_yscale = room_height/mist.sprite_height;
	}
	
	//start pos
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
	
	#endregion
} else {
	targ_x = player_cube.x;
	targ_y = player_cube.y;
	event_user(0);
	
	if (anyclouds) {
		if (++cloud_time >= (room_width/view_zoom)/cloud_speed) cloud_time = 0;
	}
}