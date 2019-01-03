/// @description update surf_end

surface_set_target(surf_end);
draw_enable_alphablend(false);
draw_set_colour_write_enable(true,true,true,false);
draw_clear(c_black);
draw_surface(application_surface, -bb, 0);
draw_enable_alphablend(true);
draw_set_colour_write_enable(true,true,true,true);
surface_reset_target();



