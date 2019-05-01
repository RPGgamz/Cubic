
image_speed = 0;

x_0 = 5;

selected = false;

e = 1;
e2 = 1;
e_max = 0;
e2_max = 2;

var any_empty_file = false;

ini_open("savedata.ini");
repeat (obj_save_data.highest_save) {
	e_max++;
	if (ini_section_exists("save" + string(e_max))) {
		if (e_max == obj_save_data.save_current) s_date[e_max] = "RIGHT NOW";
		else s_date[e_max] = ini_read_string("save" + string(e_max), "date", "1/1/111BC")+"\n"+ini_read_string("save" + string(e_max), "time", "-11:11:11");
	} else {
		s_date[e_max] = "";
		any_empty_file = true;
	}
}
ini_close();

if (!any_empty_file) s_date[++e_max] = "";