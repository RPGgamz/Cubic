/// @description draw surfaces

if (instance_exists(bg) && surface_exists(bg.surf)) draw_surface_stretched(bg.surf, (obj_display_manager.ideal_width-120)/2, 0, 120, 108);
else draw_clear(obj_pz.bg_color);
if (surface_exists(tilesurf)) draw_surface(tilesurf, -x, -y);

if (surface_exists(surf_room))
    {
    draw_surface(surf_room, -x, -y);
	}
	
