/// @description update surf_end

var temp_surf = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
surface_set_target(temp_surf);
with (obj_forest_camera) event_perform(ev_draw,ev_gui_begin);
surface_reset_target();
	
surface_set_target(surf_end);
gpu_set_blendenable(false)
gpu_set_colorwriteenable(true,true,true,false);
draw_surface(temp_surf, -bb, 0);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
surface_reset_target();
surface_free(temp_surf);