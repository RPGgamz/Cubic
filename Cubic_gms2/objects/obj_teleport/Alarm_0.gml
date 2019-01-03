/// @description flash -> fade out -> room change -> fade in

alarm[0]++;

if (flash) { //flash
    if (flash_alpha >= last_alpha) {
        last_alpha = flash_alpha;
        flash_alpha += flash_speed;
        flash_speed += flash_speed_incr;
        
        if (flash_alpha >= flash_alpha_max) {
            flash_alpha = flash_alpha_max;
            last_alpha = flash_alpha_max+1;
            flash_speed = flash_speed_start*2;
            
            alarm[0] = 3; //hvor længe "max alpha" varer
        }
    } else {
        last_alpha = flash_alpha;
        flash_alpha -= flash_speed;
        flash_speed -= flash_speed_incr/4;
        
        if (flash_alpha <= flash_alpha_min) {
            flash_alpha = flash_alpha_min;
            last_alpha = 0; //vigtigt at den er 0, bruger den i fade out/in
            flash_speed = flash_speed_start;
            alarm[0] = 30; //hvor længe der går før fade begynder
            
            flash = false;
        }
    }
} else { //fade out
    if (fade_alpha >= last_alpha) {
        last_alpha = fade_alpha;
        fade_alpha += fade_speed;
        
        if (fade_alpha >= 1) {
            fade_alpha = 1;
            last_alpha = 1+1;
            
            //SKIFT ROOM
            alarm[0] = 12;
        }
    } else { //fade in
        if (into_pz) {
            scr_room_goto(target_room, -1, cube_lvl);
            instance_destroy(cube);
            into_pz = false;
        }
        if (from_pz) {
            scr_room_goto(target_room, target_door, cube_lvl);
            from_pz = false;
        }    
        last_alpha = fade_alpha;
        fade_alpha -= fade_speed;
        
        if (fade_alpha <= 0) {
            instance_destroy();
        }
    }
}

