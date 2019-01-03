/// @description complete animation
if (complete_animation) {
    alarm[2]++;
    animation++;
    
    var bb = (obj_display_manager.ideal_width-120)/2*obj_display_manager.view_zoom;
    
    if (animation >= (120-(2*bb))) {
        complete_animation = false;
        animation = 0;
    }
}

