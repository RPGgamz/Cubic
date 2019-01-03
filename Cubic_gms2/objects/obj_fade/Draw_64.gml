/// @description drawing the fade and flash
var bb = (obj_display_manager.ideal_width-120)/2*obj_display_manager.view_zoom;

if (flash_alpha > 0) {
    draw_set_alpha(flash_alpha);
    draw_set_color(c_white);
    draw_rectangle(bb, 0, __view_get( e__VW.WView, 1 )-bb, __view_get( e__VW.HView, 1 ), false);
}

if (fade_out_alpha > 0) {
    draw_set_alpha(fade_out_alpha);
    draw_set_color(c_black);
    draw_rectangle(bb, 0, __view_get( e__VW.WView, 1 )-bb, __view_get( e__VW.HView, 1 ), false);   
}
if (fade_in_alpha > 0) {
    draw_set_alpha(fade_in_alpha);
    draw_set_color(c_black);
    draw_rectangle(bb, 0, __view_get( e__VW.WView, 1 )-bb, __view_get( e__VW.HView, 1 ), false);
}

draw_set_color(c_white);
draw_set_alpha(1);

