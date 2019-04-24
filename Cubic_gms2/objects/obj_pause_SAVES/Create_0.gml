
x_0 = 5;
x_1 = 36;

selected = false;

e = 1;
e_max = 1;

ini_open("savedata.ini");
while(ini_section_exists("save" + string(e_max))) {
	e_max++;
}
ini_close();



