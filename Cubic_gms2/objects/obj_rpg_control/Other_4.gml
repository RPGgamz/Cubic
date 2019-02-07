///@description post-create setup, and room setup
obj_control.state = scr_nothing;
player = instance_find(obj_rpg_player, 0);
cam = instance_position(player.x, player.y, obj_rpg_camera_zone);
view_cam = view_get_camera(1);
scr_rpg_cam_focus();
roomsaver = instance_create(0, 0, obj_rpg_roomsave);
with (roomsaver) scr_rpg_room_save();

