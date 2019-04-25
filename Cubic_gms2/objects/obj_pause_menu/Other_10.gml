/// @description switch menu
instance_destroy(current_menu);
current_menu = instance_create_depth(x, 0, depth-1, next_menu);
current_menu.FONT = FONT;