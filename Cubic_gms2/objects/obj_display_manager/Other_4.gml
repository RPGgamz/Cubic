/// @description resizing the view/resolution by view_zoom + make a camera_follow object

if (instance_exists(obj_rpg_control)) exit;
//var prev_view_room = view_zoom;

//determine view_zoom. The default is based on room size, other zooms can be set as case sta
if (!instance_exists(obj_pz)) switch (room) {
	//case [Room name]: view_zoom = [val]; break;
	default: view_zoom = max(room_width div 120, room_height div 108);
}

//adjust appsurface resolution
__view_set( e__VW.HView, 1, ideal_height*view_zoom );
__view_set( e__VW.WView, 1, ideal_width*view_zoom );
	
surface_resize(application_surface, ideal_width*view_zoom, ideal_height*view_zoom);
