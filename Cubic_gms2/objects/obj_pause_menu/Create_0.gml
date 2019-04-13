//deactivate controllers
instance_deactivate_object(obj_control);
instance_deactivate_object(obj_pz);
instance_deactivate_object(obj_rpg_control);
instance_deactivate_object(obj_game_intro);
instance_deactivate_object(obj_forest_transition);

//font
FONT = font_add_sprite(spr_font, ord(" "), true, 1);
//draw_set_font(FONT);

//local enum
label = 0;
function = 1;
target = 2;

//menus
var i;

i = -1;
menu_p[++i, label] = "RESUME"; menu_p[i, function] = scr_exit_pause;
menu_p[++i, label] = "OPTIONS"; menu_p[i, function] = scr_goto_menu;	menu_p[i, target] = "o";
menu_p[++i, label] = "help"; menu_p[i, function] = scr_goto_menu;	menu_p[i, target] = "h";
menu_p[++i, label] = "Reset save file"; menu_p[i, function] = scr_reset_save;
menu_p[++i, label] = "Load"; menu_p[i, function] = scr_load_game;
menu_p[++i, label] = "Exit"; menu_p[i, function] = scr_game_end;

i = -1;
menu_o[++i, label] = "Audio"; menu_o[i, function] = scr_nothing;
menu_o[++i, label] = "Video"; menu_o[i, function] = scr_nothing;
menu_o[++i, label] = "Controls"; menu_o[i, function] = scr_nothing;
menu_o[++i, label] = "Prefferences"; menu_o[i, function] = scr_nothing;
menu_o[++i, label] = "Back"; menu_o[i, function] = scr_goto_menu;	menu_o[i, target] = "p";

i = -1;
menu_h[++i, label] = "How to play"; menu_h[i, function] = scr_nothing;
menu_h[++i, label] = "Tutorial"; menu_h[i, function] = scr_nothing;
menu_h[++i, label] = "FAQ"; menu_h[i, function] = scr_nothing;
menu_h[++i, label] = "Back"; menu_h[i, function] = scr_goto_menu;	menu_h[i, target] = "p";

menu_current = menu_p;
selected = 0;