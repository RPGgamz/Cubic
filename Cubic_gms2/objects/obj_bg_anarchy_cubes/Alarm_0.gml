///@description get the real color

//legacy!
//alle bg's havde denne alarm, og det virkede pointless, så jeg slettede den alle andre steder end her. alarmen blev kun sat 1 gang. I create. Sat til =1.
//den bliver ikke kaldt her heller. Gemmer bare på den, in case den havde en funktion


bg_hue = color_get_hue(obj_pz.bg_color);
bg_sat = color_get_saturation(obj_pz.bg_color);
bg_val = color_get_value(obj_pz.bg_color);