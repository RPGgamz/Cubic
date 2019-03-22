/// @description draw surf_room to the GUI layer, and draw treetop
if (surface_exists(surf_room)) {
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(true,true,true,false);
    draw_surface(surf_room, w_screen-x, h_screen-y);
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
}





var xl = bb+lerp(15,0, 2*x/room_width)
var yl = lerp(15,0, 2*y/room_height)
draw_sprite(treetop_sprite, 0, xl, yl)
/*
var xl = bb+lerp(15,0, 2*x/room_width)-room_width
var yl = lerp(15,0, 2*y/room_height)-room_height
draw_surface(surf_treetop, xl, yl);