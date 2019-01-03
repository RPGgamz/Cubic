/// @description make bugs
repeat(ceil(sprite_width*sprite_height*bug_density)) {
    instance_create(irandom_range(x_min, x_max), irandom_range(y_min, y_max), choose(obj_flysmooth, obj_flyswoop, obj_flysaw, obj_flypew, obj_worm_arc, obj_worm_outside, obj_worm_outside));
}

