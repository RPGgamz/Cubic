//deactivate controllers
instance_deactivate_object(obj_control);
instance_deactivate_object(obj_pz);
instance_deactivate_object(obj_rpg_control);
instance_deactivate_object(obj_game_intro);

//local enum
label = 0;
function = 1;
target = 2;

//menus

menu_p[0, label] = "Resume"; menu_p[0, function] = scr_exit_pause;
menu_p[1, label] = "Options"; menu_p[1, function] = scr_goto_menu;	menu_p[1, target] = "o";
menu_p[2, label] = "Help"; menu_p[2, function] = scr_goto_menu;	menu_p[2, target] = "h";
menu_p[3, label] = "Exit"; menu_p[3, function] = scr_game_end;

menu_o[0, label] = "Audio"; menu_o[0, function] = scr_nothing;
menu_o[1, label] = "Video"; menu_o[1, function] = scr_nothing;
menu_o[2, label] = "Controls"; menu_o[2, function] = scr_nothing;
menu_o[3, label] = "Prefferences"; menu_o[3, function] = scr_nothing;
menu_o[4, label] = "Back"; menu_o[4, function] = scr_goto_menu;	menu_o[4, target] = "p";

menu_h[0, label] = "How to play"; menu_h[0, function] = scr_nothing;
menu_h[1, label] = "Tutorial"; menu_h[1, function] = scr_nothing;
menu_h[2, label] = "FAQ"; menu_h[2, function] = scr_nothing;
menu_h[3, label] = "Back"; menu_h[3, function] = scr_goto_menu;	menu_h[3, target] = "p";

menu_current = menu_p;
selected = 0;