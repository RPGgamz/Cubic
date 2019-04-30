/// @description destroy maps
ds_map_destroy(pzones);
ds_map_destroy(doors);
ds_map_destroy(stars);

/*ini_open("savedata.ini");
	ini_section_delete("save1");
	ini_section_delete("save2");
	ini_section_delete("save3");
	ini_section_delete("save4");
	ini_section_delete("global");
ini_close();