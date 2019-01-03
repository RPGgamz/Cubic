/// @description flash + spinning and zooming

alarm[1]++;

//spinning and zooming
if (flash_done) {
    rotation_speed += .021;
    rotation += rotation_speed;
    
    zoom_speed += .00022;
    zoom_x += zoom_speed;
    zoom_y += zoom_speed;
    
    if (hd < 6) {
        hd += .1;
    
        if (hd >= 6) {
            hd = 6;
        }
    }
} else {
    //flash
    alarm[0] = -1;
    if (alpha_pulse > 0) {
        alpha_pulse -= pulse_speed*10;
        if (alpha_pulse <= 0) {
            alpha_pulse = 0;
        }
    }
    if (last_flash <= alpha_flash) {
        last_flash = alpha_flash;
        alpha_flash += flash_speed;
        
        if (alpha_flash >= 1) {
            alpha_flash = 1;
            last_flash = 2;
            
            //how long alpha = 1 lasts
            alarm[1] = 6;
        }
    } else {
        last_flash = alpha_flash;
        flash_speed -= 0.005;
        alpha_flash -= flash_speed;
        
        if (alpha_flash <= 0) {
            alpha_flash = 0;
            last_flash = -1;
            
            flash_done = true;
            //how long before spinning and zoom
            alarm[1] = 3;
        }
    }
//CHANGING THESE MAGIC NUMBERS MAY CAUSE PROBLEMS:
//flash_speed, the decrease of flash_speed, pulse_speed*10   
}

