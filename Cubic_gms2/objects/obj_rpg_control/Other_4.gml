///@description post-create setup, and room setup
obj_control.state = scr_nothing;
player = instance_find(obj_rpg_player, 0);
view_cam = view_get_camera(1);
roomsaver = instance_create(0, 0, obj_rpg_roomsave);
with (roomsaver) scr_rpg_room_save();

camera_set_view_pos(view_cam, -(obj_display_manager.ideal_width-120)/2, 0);

