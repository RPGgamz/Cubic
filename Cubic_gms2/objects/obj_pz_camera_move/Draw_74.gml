/// @description draw surf_room to the GUI layer
if (surface_exists(surf_room))
    {
    draw_enable_alphablend(false);
    draw_set_colour_write_enable(true,true,true,false);
    draw_surface(surf_room, -x, -y);
    draw_enable_alphablend(true);
    draw_set_colour_write_enable(true,true,true,true);
    }

