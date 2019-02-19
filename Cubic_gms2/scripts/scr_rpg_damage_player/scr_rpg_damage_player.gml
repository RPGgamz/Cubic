
with (obj_rpg_control) {
	with (cam) scr_rpg_cam_load();
	hp--;
	if (hp == 0) {
		with (roomsaver) scr_rpg_room_load();
	}
	state = idle;
	player.move = 0;
}