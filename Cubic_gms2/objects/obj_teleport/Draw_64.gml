if (flash) {
    draw_set_color(c_white);
    draw_set_alpha(flash_alpha);
    draw_rectangle(0, 0, room_width*3, room_height*3, false);
} else {
    draw_set_color(c_black);
    draw_set_alpha(fade_alpha);
    draw_rectangle(0, 0, room_width*3, room_height*3, false);
}
draw_set_alpha(1);

