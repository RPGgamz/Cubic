//reactivate controllers
instance_activate_object(obj_control);
instance_activate_object(obj_pz);
instance_activate_object(obj_rpg_control);
instance_activate_object(obj_game_intro);
instance_activate_object(obj_forest_transition);

//delete font
if (font_exists(FONT)) font_delete(FONT);

if (instance_exists(current_menu)) instance_destroy(current_menu);