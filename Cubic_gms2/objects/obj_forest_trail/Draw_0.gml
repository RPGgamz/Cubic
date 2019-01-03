
//update the surf
if (!surface_exists(surf)) surf = surface_create(room_width, room_height);
surface_set_target(surf);
//draw_set_alpha(trail_alpha);
draw_enable_alphablend(false);

draw_clear_alpha(c_black, 0);
draw_set_color(c_black);
x=0;
repeat(room_width) {
    y=0;
    repeat(room_height) {
        if (timer[x,y] != 0) {
            if (timer[x,y] != 0) {
                if (timer[x,y] < trail_fade_duration) draw_set_alpha(trail_alpha*timer[x,y]/trail_fade_duration);
                else draw_set_alpha(trail_alpha);
            }
            draw_point(x,y);
        }
        y++;
    }
    x++;
}

draw_set_alpha(1);
draw_enable_alphablend(true);
surface_reset_target();

//draw the surf
draw_surface(surf, 0, 0);

