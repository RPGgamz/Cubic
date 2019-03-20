/// @description draw surf to the GUI layer
if (surface_exists(surf)) {
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(true,true,true,false);
    draw_surface(surf, w_screen-x, h_screen-y);
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
}