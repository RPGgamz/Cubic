instance_activate_object(obj_control);
instance_activate_object(obj_door);
with (obj_control) event_perform(ev_other, 4);
with (obj_door) event_perform(ev_other, 4);
with (obj_zone) image_index = 6;
instance_destroy();