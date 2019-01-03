/// @description draw self w. alpha
//if  (sprite_index = spr_zone) {
    draw_set_alpha(alpha);
    draw_sprite(sprite_index,image_index,x,y);
    draw_set_alpha(1);
//} else draw_self();

