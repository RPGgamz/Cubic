//deactivate controllers
instance_deactivate_object(obj_control);
instance_deactivate_object(obj_pz);
instance_deactivate_object(obj_rpg_control);
instance_deactivate_object(obj_game_intro);
instance_deactivate_object(obj_forest_transition);

x = (obj_display_manager.ideal_width-120)/2


//font
FONT = font_add_sprite(spr_font, ord(" "), true, 1);
draw_set_font(FONT);

current_menu = instance_create(x, 0, obj_pause_MAIN);
next_menu = noone;