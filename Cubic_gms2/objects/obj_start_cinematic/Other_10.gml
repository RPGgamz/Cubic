/// @description End animation
instance_activate_object(obj_control);
obj_save_data.first_room = false;
scr_room_goto(room_next(room), 1, 1)