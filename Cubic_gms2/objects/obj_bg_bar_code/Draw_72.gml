
if (!surface_exists(surf)) surf = surface_create(120*surf_scaler,108*surf_scaler);

surface_set_target(surf);
draw_clear(make_color_hsv(bg_hue, bg_sat, bg_val));


var i = 0;
repeat(instance_number(obj_bg_barcodebar)) {
	var bar = instance_find(obj_bg_barcodebar, i);
	
	draw_set_color(make_color_hsv(bg_hue, 100, bar.y));
	gpu_set_blendmode_ext_sepalpha(bm_one, bm_one,bm_one,bm_zero);
	draw_rectangle(bar.x*surf_scaler, 0, (bar.x + bar.width)*surf_scaler, surface_get_height(surf), false);
	gpu_set_blendmode(bm_normal);
	
	i++;
}
surface_reset_target();
draw_set_color(c_white)