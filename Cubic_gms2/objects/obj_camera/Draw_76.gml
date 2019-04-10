///@description initiate surface
if !surface_exists(surf_room) {
	surf_room = surface_create(room_width, room_height);
	view_set_surface_id(2, surf_room);
}