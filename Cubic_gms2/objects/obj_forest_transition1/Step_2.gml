// [ONCE] calculate gb (actual thickness) and transition_time
#region


if (gb == -1) {
    switch (transition_dir) {
        case "left":
        case "right":
            gb = gb_thickness*width/100;
        break;
        case "up":
        case "down":
            gb = gb_thickness*height/100;
        break;
    }
    
    transition_time = gb/obj_control.movespeed;
}


#endregion

//cam movement(calculate surface positions)
#region


timer = step/transition_time;

/* FORSKELLIGE TYPER OVERGANG
--------------konstant hastighed:
progress = timer;

--------------lineært aftagende hastighed:
progress = 2*timer - timer*timer;

--------------hastighed voksende og aftagende som et andengradspolinomium
progress = 3*timer*timer - 2*timer*timer*timer;

--------------blanding af ovenstående (k0=konstant, k1= lineær, k2 = andengrads)
var k0 = 50
var k1 = 25
var k2 = 25
progress = (timer*(k0+2*k1+timer*(-k1+3*k2-2*k2*timer)))/(k2+k1+k0);
*/
var k0 = 0
var k1 = 0
var k2 = 1
progress = (timer*(k0+2*k1+timer*(-k1+3*k2-2*k2*timer)))/(k2+k1+k0);

var last_rem; // how big a portion of the last room is remaining on screen
switch (transition_dir) {
    case "left": //push right to "move the camera" left
        x2 = (progress -1)*(width+gb); y2 = 0;
        x1 = (progress)*(width+gb); y1 = 0;
        last_rem = 1 - (width - (progress)*(width+gb))/width;
    break;
    case "right"://push left to "move the camera" right
        x2 = (1 -progress)*(width+gb); y2 = 0;
        x1 = (0 -progress)*(width+gb); y1 = 0;
        last_rem = 1 - (width - (progress)*(width+gb))/width;
    break;
    case "up": //push down to "move the camera" up
        x2 = 0; y2 = (progress -1)*(height+gb);
        x1 = 0; y1 = (progress)*(height+gb);
        last_rem = 1 - (height - (progress)*(height+gb))/height;
    break;
    case "down": //push up to "move the camera" down
        x2 = 0; y2 = (1 -progress)*(height+gb);
        x1 = 0; y1 = (0 -progress)*(height+gb);
        last_rem = 1 - (height - (progress)*(height+gb))/height;
    break;
}
x1 += bb; x2 += bb;

//turn surface_start green
tran_alpha = clamp(last_rem*3/2, 0, 1)


#endregion

//bird & bush-exit sounds
#region


if (progress > .65 && progress < .69) {
    var birds_flying = false;
    
    if (irandom_range(0, 8) >= 7) {
        //many or few
        var vol = irandom_range(-9, 0)/100;
    
        //crow/owl
        if (irandom_range(0, 3) >= 3) {
            audio_sound_pitch(snd_crow_1, 1 + random_range(-.1, .15));
            audio_sound_gain(snd_crow_1, 58/100 + (vol/1.5), 0);
            audio_sound_gain(snd_crow_1, 0, 1680);
            audio_play_sound(snd_crow_1, 10, false);
            birds_flying = true;
        } else if (irandom_range(0, 3) >= 3) {
            audio_sound_pitch(snd_owls_short_1, 1 + random_range(-.1, .1));
            audio_sound_gain(snd_owls_short_1, 50/100 + (vol/1.5), 0);
            audio_sound_gain(snd_owls_short_1, 0, 2000);
            audio_play_sound(snd_owls_short_1, 10, false);
            birds_flying = true;
        }
        if (birds_flying) {
            //birds flying away
            audio_sound_gain(snd_wing_flaps_1, 26/100 + vol, 0);
            audio_sound_gain(snd_wing_flaps_1, 0, 2100);
            audio_play_sound(snd_wing_flaps_1, 10, false);
            
            audio_sound_gain(snd_wing_flaps_2, 26/100 + vol, 0);
            audio_sound_gain(snd_wing_flaps_2, 0, 2100);
            audio_play_sound(snd_wing_flaps_2, 10, false);
        
            if (irandom_range(0, 1)) {
                audio_sound_gain(snd_great_wing_flap_1, 32/100 + vol/100, 0);
                audio_sound_gain(snd_great_wing_flap_1, 0, 2100);
                audio_play_sound(snd_great_wing_flap_1, 10, false);
            } else {
                audio_sound_gain(snd_great_wing_flap_2, 32/100+vol, 0);
                audio_sound_gain(snd_great_wing_flap_2, 0, 2100);
                audio_play_sound(snd_great_wing_flap_2, 10, false);
            }
        }
    }
}
//bush exit
if (progress > .96 && progress < .98) {
    audio_sound_pitch(snd_bush_short, 1 - .1 + random_range(-.05, .05));
    audio_sound_gain(snd_bush_short, 10/100, 0);
    audio_sound_gain(snd_bush_short, 0, 1210);
    audio_play_sound(snd_bush_short, 10, false);
    
    audio_sound_pitch(snd_bush_long, .98 + random_range(-.05, .05));
    audio_sound_gain(snd_bush_long, 23/100, 0);
    audio_sound_gain(snd_bush_long, 0, 860);
    audio_play_sound(snd_bush_long, 10, false);
}


#endregion