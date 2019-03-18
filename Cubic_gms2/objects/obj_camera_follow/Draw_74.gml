/// @description draw surf to the GUI layer
if (surface_exists(surf))
    {
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(true,true,true,false);
    draw_surface(surf, camera_get_view_width(cam)/2-x, camera_get_view_height(cam)/2-y);
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
	}