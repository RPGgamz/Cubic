/// @description fade in/out for each sunbeam

for (var i = 0; i < sunbeams; i++) {
    if (alpha[i, 0] < alpha_max && alpha[i, 2] == false) {
        alpha[i, 0] += alpha[i, 1];
        if (alpha[i, 0] >= alpha_max) {
            alpha[i, 0] = alpha_max;
            alpha[i, 2] = true;
        }
    } else if (alpha[i, 0] > 0 && alpha[i, 2] == true) {
        alpha[i, 0] -= alpha[i, 1];
        if (alpha[i, 0] <= 0) {
            alpha[i, 0] = 0;
            alpha[i, 2] = false;
            
            //when faded out -> new sunbeam sprite
            alpha[i, 3] = choose(spr_sunlight_1, spr_sunlight_2, spr_sunlight_3, spr_sunlight_4, spr_sunlight_5);
            for (var j = 0; j < i; j++) {
                if (alpha[j, 3] == spr_sunlight_2) {
                    alpha[i, 3] = choose(spr_sunlight_1, spr_sunlight_3, spr_sunlight_4, spr_sunlight_5); //random sprite
                }
            }       
        }
    }
}
alarm[0]++;

