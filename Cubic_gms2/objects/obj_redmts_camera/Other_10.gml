/// @description set start pos

if			(x > room_width - w_screen)		x = lerp(x, room_width - w_screen, x_border_hardness);
else if		(x < w_screen)					x = lerp(x, w_screen, x_border_hardness);
if			(y > room_height - h_screen)	y = lerp(y, room_height - h_screen, y_border_hardness);
else if		(y < h_screen)					y = lerp(y, h_screen, y_border_hardness);
targ_x = x;
targ_y = y;