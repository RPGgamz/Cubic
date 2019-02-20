//deactivate controllers
instance_deactivate_object(obj_control);
instance_deactivate_object(obj_pz);
instance_deactivate_object(obj_rpg_control);
instance_deactivate_object(obj_game_intro);

//menus
menu_p[0] = "Resume";
menu_p[1] = "Options";
menu_p[2] = "Help";
menu_p[3] = "Exit";

menu_o[0] = "Audio";
menu_o[1] = "Video";
menu_o[2] = "Controls";
menu_o[3] = "Prefferences";
menu_o[4] = "Back";

menu_h[0] = "How to play";
menu_h[1] = "How to play + tutorial";
menu_h[2] = "FAQ";
menu_h[3] = "Back";

current = menu_p;