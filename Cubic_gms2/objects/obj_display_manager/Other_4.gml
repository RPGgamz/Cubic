/// @description resizing the view/resolution by view_zoom + make a camera_follow object

//var prev_view_room = view_zoom;

//determine view_zoom. The default is based on room size, other zooms can be set as case sta
switch (room) {
	//case [Room name]: view_zoom = [val]; break;
	default: view_zoom = max(room_width div 120, room_height div 108);
}

//adjust appsurface resolution
__view_set( e__VW.HView, 1, ideal_height*view_zoom );
__view_set( e__VW.WView, 1, ideal_width*view_zoom );
	
surface_resize(application_surface, ideal_width*view_zoom, ideal_height*view_zoom);


///make a camera_follow object
if ( (room_width > 120 || room_height > 108)  && obj_control.target_door != -1 && !instance_exists(obj_pz)) {
    instance_create(0, 0, obj_camera_follow);
}