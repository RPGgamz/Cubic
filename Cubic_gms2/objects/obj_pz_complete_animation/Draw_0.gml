/// @description create surf_start and surf_effect

if (surf_start == -1) {
    surf_start = surface_create(w,h);
    surface_set_target(surf_start);
    draw_clear_alpha(c_white, 0);
    
    var i=0;
    with (obj_solid) {
        if (place_meeting(x, y, other.cam) && (object_index == obj_wall_v || object_index == obj_wall_h)) {
            draw_sprite(sprite_index, image_index, x-other.surfx, y-other.surfy)
            visible = false;
            other.walls[i] = id;
            i++
        }
    }
    /*with (obj_wall_v) {
        draw_sprite(sprite_index, image_index, x-other.surfx, y-other.surfy)
        draw_sprite(sprite_index, image_index, x-other.surfx, y-other.surfy)
    }*/
    surface_reset_target();
    surf_effect = surface_create(w,h);
}

/* */
///draw the effect

var ytex = 1/n_ver_y;
var xtex = 1/n_ver_x;

surface_set_target(surf_effect);
draw_clear_alpha(c_white, 0);
draw_set_color(c_white);

var x_offset;
var y_offset;
var yy = 0;
repeat (n_ver_y-1) {
    draw_primitive_begin_texture(pr_trianglestrip, surface_get_texture(surf_start));
    var xx = 0;
    repeat (n_ver_x) {
        x_offset = ver_e[xx, yy]*cos(ver_a[xx, yy]);
        y_offset = -ver_e[xx, yy]*sin(ver_a[xx, yy]);
        draw_vertex_texture(xx*res_size+x_offset,     yy*res_size+y_offset, xx*xtex, yy*ytex);
        y_offset = -ver_e[xx, yy]*sin(ver_a[xx, yy]);
        draw_vertex_texture(xx*res_size+x_offset, (yy+1)*res_size+y_offset, xx*xtex, (yy+1)*ytex);
        xx++;
    }
    draw_primitive_end();
    yy++;
}



surface_reset_target();

draw_set_alpha(effect_alpha);
draw_surface(surf_effect, surfx, surfy);
draw_set_alpha(1);



/* */
/*  */
