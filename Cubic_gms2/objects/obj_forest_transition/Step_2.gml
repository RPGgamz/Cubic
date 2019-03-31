if (room != next_room) {
	instance_destroy(obj_forest_camera);
	room_goto(next_room);
}