/// @description redo the light setup

for (var i = 0; i < sunbeams; i++) {
    alpha[i, 0] = random_range(0, 0.12); //alpha set to random
    alpha[i, 1] = choose(0.000125, 0.0002, 0.00025, 0.0005, 0.00075); //random alpha_incr
    alpha[i, 2] = false; //max set to 0
    alpha[i, 3] = choose(spr_sunlight_1, spr_sunlight_2, spr_sunlight_3, spr_sunlight_4, spr_sunlight_5); //random sprite
    alpha[i, 4] = 0; //Distance from last sunbeam
    alpha[i, 5] = 0; //Total distance to last sunbeam
    alpha[i, 6] = irandom_range(28, 84); //i.y
    
    for (var j = 0; j < i; j++) {
        if (alpha[j, 3] == spr_sunlight_2) {
            alpha[i, 3] = choose(spr_sunlight_1, spr_sunlight_3, spr_sunlight_4, spr_sunlight_5); //random sprite
        }
    }
    alpha[i, 4] = irandom_range(13, 15); //i.x - (i-1).x 
    if (i > 0 && alpha[i, 6] < alpha[i-1, 6]) {
        alpha[i, 4] += (alpha[i-1, 6] - alpha[i, 6]);
    }
    alpha[i, 5] = 0;
    for (var j = 0; j < i; j++) {
        alpha[i, 5] += alpha[j, 4]; // (i-1).x 
    }
    if (i == 0) {
        alpha[i, 6] = irandom_range(26, 46); //setting the first beam on the top of the screen --> more beams total
    }
}

