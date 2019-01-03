/// @description drawing the beams


for (var i = 0; i < sunbeams; i++) {
    draw_set_alpha(alpha[i, 0]);
    draw_sprite(alpha[i, 3], 0, alpha[i, 5] + alpha[i, 4], alpha[i, 6]);
    
    
}

draw_set_alpha(1);

