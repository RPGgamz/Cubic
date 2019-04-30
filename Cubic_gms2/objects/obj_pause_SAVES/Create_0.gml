
image_speed = 0;

x_0 = 5;

selected = false;

e = 1;
e2 = 1;
e_max = 1;
e2_max = 2;

ini_open("savedata.ini");
repeat (obj_save_data.highest_save) {
	if (ini_section_exists("save" + string(e_max))) {
		s_date[e_max] = "21/02/2019\n" + string(e_max);
	} else s_date[e_max] = "";
	e_max++;
}
ini_close();
s_date[e_max] = "";



