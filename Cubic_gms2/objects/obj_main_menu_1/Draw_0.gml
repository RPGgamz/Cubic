/// @description drawing the cube, text, etc.

//cube
draw_sprite_ext(spr_test, 0, room_width/2, room_height/2-6+hd, zoom_x, zoom_y, rotation, c_white, 1);

//text
if (alpha_pulse > 0) {
    draw_set_alpha(alpha_pulse);
    draw_sprite(spr_press_to_start, 0, 0, 0);
}

//flash
if (alpha_flash > 0) {
    draw_set_alpha(alpha_flash);
    draw_set_color(c_white);
    draw_rectangle(0, 0, room_width, room_height, false);
}

//resetting
draw_set_alpha(1);

