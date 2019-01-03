/// @description mini-map

if (!surface_exists(map_surf)) map_surf = surface_create(map_width,map_height);
surface_set_target(map_surf);

//update map
draw_enable_alphablend(false);
draw_clear_alpha(c_black,0);
if (solved_pzs != -1)
    {
    with (obj_camera_zone)
        {
        if (number-1 > obj_pz.solved_pzs)
            {
            draw_sprite(spr_pz_map_unsolved, 0, (x-sprite_width/2)/other.map_rx, (y-sprite_height/2)/other.map_ry);
            continue;
            }
        if (number-1 < obj_pz.solved_pzs)
            { 
            draw_sprite(spr_pz_map_solved, 0, (x-sprite_width/2)/other.map_rx, (y-sprite_height/2)/other.map_ry);
            continue;
            }
        draw_sprite(spr_pz_map_newest, 0, (x-sprite_width/2)/other.map_rx, (y-sprite_height/2)/other.map_ry);
        }
    }
else with (obj_camera_zone) draw_sprite(spr_pz_map_solved, 0, (x-sprite_width/2)/other.map_rx, (y-sprite_height/2)/other.map_ry);
draw_enable_alphablend(true);

//*animated select*/ draw_sprite(spr_pz_map_highlight, 0, (view_xview[1]+(view_wview[1]-sprite_get_width(spr_camera_zone))/2)/map_rx, (view_yview[1]+(view_hview[1]-sprite_get_height(spr_camera_zone))/2)/map_ry);
/*rounded select*/ with instance_nearest(__view_get( e__VW.XView, 1 )+__view_get( e__VW.WView, 1 )/2, __view_get( e__VW.YView, 1 )+__view_get( e__VW.HView, 1 )/2,obj_camera_zone) draw_sprite(spr_pz_map_current, 0, (x-sprite_width/2)/other.map_rx, (y-sprite_height/2)/other.map_ry);


surface_reset_target();

//draw the map
draw_set_alpha(map_alpha);
draw_surface(map_surf, map_x0, map_y0)
draw_set_alpha(1);

/* */
/*  */
