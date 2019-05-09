/// @description create 
if (!surface_exists(view_surf)) {
	view_surf = surface_create(__view_get( e__VW.WView, 1 ), __view_get( e__VW.HView, 1 ));
	view_surface_id[1] = view_surf;
}