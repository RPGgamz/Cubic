/// @description update surf_end

surface_set_target(surf_end);
gpu_set_blendenable(false);
gpu_set_colorwriteenable(true,true,true,false);
draw_clear(c_black);
draw_surface(application_surface, -bb, 0);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
surface_reset_target();



