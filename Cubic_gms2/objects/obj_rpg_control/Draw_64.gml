/// @description draw overlay
//draw health
var bb = (obj_display_manager.ideal_width-120)/2;
var xx = 5;
var dxx = sprite_get_width(spr_rpg_hp) + 1;
repeat (hp) {
	draw_sprite(spr_rpg_hp, 0, bb + xx, 10)
	xx += dxx;
}
repeat (max_hp - hp) {
	draw_sprite(spr_rpg_hp, 1, bb + xx, 10)
	xx += dxx;
}

//draw enemy health
with (obj_rpg_enemy) {
	if (!visible) continue;
	
	var dxx = 3;
	var xx = x-floor((dxx*max_hp)/2)-camera_get_view_x(other.view_cam);
	var yy = y+floor(sprite_height/2)-camera_get_view_y(other.view_cam)-1;
	draw_set_color(c_red)
	repeat (hp) {
		draw_rectangle(xx, yy, xx+1, yy+1, false);
		xx += dxx;
	}
	draw_set_color(c_maroon)
	repeat (max_hp-hp) {
		draw_rectangle(xx, yy, xx+1, yy+1, false);
		xx += dxx;
	}
	draw_set_color(c_white);
}

//draw coin count
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(bb+120-10, 108-15, string(coins));
draw_sprite(spr_rpg_ui_coin, 0, bb+120-12, 108-10)

//draw keys
var xx = bb+120-27;
var dxx = 5;
repeat (keys) {
	draw_sprite_ext(spr_rpg_key, 0, xx, 108-14, 1.2, 1.2, 315, c_white, 1);
	xx -= dxx;
}
repeat (bigkeys) {
	draw_sprite_ext(spr_rpg_bigkey, 0, xx, 108-14, 1.2, 1.2, 315, c_white, 1);
	xx -= dxx;
}
