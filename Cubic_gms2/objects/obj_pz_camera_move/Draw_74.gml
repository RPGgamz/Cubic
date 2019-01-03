/// @description draw surf_room to the GUI layer
if (surface_exists(surf_room))
    {
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,false);
    draw_surface(surf_room, -x, -y);
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(true,true,true,true);
	}