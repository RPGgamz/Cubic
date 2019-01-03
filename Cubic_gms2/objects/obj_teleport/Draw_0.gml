if (flash) {
    draw_set_color(c_white);
    draw_set_alpha(flash_alpha);
    draw_rectangle(0, 0, room_width, room_height, false);
} else {
    draw_set_color(c_black);
    draw_set_alpha(fade_alpha);
    draw_rectangle(0, 0, room_width, room_height, false);
}
draw_set_alpha(1);

