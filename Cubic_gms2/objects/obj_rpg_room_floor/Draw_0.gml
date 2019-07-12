/// @description self and tiles and walls
draw_self();

//walls
var w = sprite_width-2;
var h = sprite_height-2;
draw_set_color(make_color_rgb(104, 163, 94));
draw_line(x, y, x-y, 0);
draw_line(x+w, y, x+w+y, 0);
draw_line(x, y+h, x+y+h-108, 108);
draw_line(x+w, y+h, 108-(y+h)+x+w, 108);
draw_set_color(c_white);

//tiles
var w = sprite_width div 12;
var h = sprite_height div 12;
var i = 0;
repeat(w*h) {
	draw_sprite(spr_rpg_floor_tile, 0, x+ (i mod w)*12, y+ (i div w)*12)
	i++;
}

