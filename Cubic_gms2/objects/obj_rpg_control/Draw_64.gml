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

//draw coin count
draw_set_colour(c_white)
draw_text(bb+120 -10, 108-10, string(coins))
draw_sprite(spr_rpg_ui_coin, 0, bb+120 - 12, 108-10)