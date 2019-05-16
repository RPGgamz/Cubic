/// @description draw surfaces

if (instance_exists(bg) && surface_exists(bg.surf)) draw_surface(bg.surf, (obj_display_manager.ideal_width-120)/2, 0);
else draw_clear(obj_pz.bg_color);
draw_surface(obj_pz.tilesurf, -x, -y);

if (surface_exists(surf_room))
    {
    draw_surface(surf_room, -x, -y);
	}
	
