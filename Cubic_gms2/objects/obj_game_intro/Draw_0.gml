draw_set_color(c_white);

draw_set_alpha(alpha_title);
if (alpha_title > 0) {
    draw_sprite(spr_title_2, 0, __view_get( e__VW.XView, 1 )+__view_get( e__VW.WView, 1 )/2, 6);
}
draw_set_alpha(alpha_tutorial);
if (alpha_tutorial > 0) {
    draw_sprite(spr_tutorial, 0, __view_get( e__VW.XView, 1 )+__view_get( e__VW.WView, 1 )/2, __view_get( e__VW.HView, 1 )-14);
}
draw_set_alpha(alpha_flash);
if (alpha_flash > 0) {
    draw_rectangle(__view_get( e__VW.XView, 1 ), __view_get( e__VW.YView, 1 ), __view_get( e__VW.WView, 1 ), __view_get( e__VW.HView, 1 ), false);
}
draw_set_alpha(alpha_fade);
if (alpha_fade > 0) {
    draw_set_color(c_black);
    draw_rectangle(__view_get( e__VW.XView, 1 ), __view_get( e__VW.YView, 1 ), __view_get( e__VW.WView, 1 ), __view_get( e__VW.HView, 1 ), false);
}

draw_set_alpha(1);

