if (room != next_room) {
	instance_destroy(obj_camera);
	room_goto(next_room);
}