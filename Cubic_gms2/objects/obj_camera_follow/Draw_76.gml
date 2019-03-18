///@description initiate surf
if !surface_exists(surf) {
	surf = surface_create(room_width, room_height);
	view_set_surface_id(2, surf);
}