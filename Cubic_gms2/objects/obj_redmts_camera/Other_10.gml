/// @description set targ pos

if		(targ_x > right_bor - w_screen)		targ_x = lerp(targ_x, right_bor - w_screen, right_border_hardness);
else if	(targ_x < left_bor + w_screen)		targ_x = lerp(targ_x, left_bor + w_screen, left_border_hardness);
if		(targ_y > bottom_bor - h_screen)	targ_y = lerp(targ_y, bottom_bor - h_screen, bottom_border_hardness);
else if	(targ_y < top_bor  + h_screen)		targ_y = lerp(targ_y, top_bor + h_screen, top_border_hardness);

