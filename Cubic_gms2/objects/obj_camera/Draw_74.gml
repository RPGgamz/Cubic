/// @description draw surf_room to the GUI layer, and draw treetop

if (surface_exists(surf_room)) {
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(true,true,true,false);
    draw_surface_stretched(surf_room, w_screen+bb-x, h_screen-y, surface_get_width(surf_room)/obj_display_manager.view_zoom, surface_get_height(surf_room)/obj_display_manager.view_zoom);
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
}

