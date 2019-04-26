for (var i = 0; i < instance_number(obj_zone); i++)
    {
    var this_zone = instance_find(obj_zone, i);
    for (var j = 0; j < instance_number(obj_cube); j++)
        {
        var this_cube = instance_find(obj_cube, j);
        if (this_cube.x = this_zone.x && this_cube.y = this_zone.y)
            {
            //Go through the zone object
            if !(instance_exists(obj_teleport))
                {
                //play "teleport" sound
                audio_sound_gain(snd_teleport, .72, 0);
                audio_play_sound(snd_teleport, 9, false);
                
                //stop "zone" sounds
                audio_sound_gain(snd_zone_heavy, 0, 420);
                audio_sound_gain(snd_zone_light, 0, 420);
                with (obj_music) {alarm[0] = 420;}
                
                //creating the flash/fade
                var teleport = instance_create(0,0,obj_teleport);
                    teleport.alarm[0] = 12;
                    teleport.target_room = this_zone.target_room;

                //exiting a puzzle zone
                if (this_zone.object_index = obj_zone_exit)
                    {
                    teleport.from_pz = true;
                    teleport.target_door = this_zone.target_zone;
                    teleport.cube_lvl = traveling_cube_lvl;
                    
                    obj_pz.solved_pzs = -1;
                    }
                //entering a puzzle zone
                else
                    {
                    teleport.into_pz = true;
                    teleport.cube = this_cube;
                    teleport.cube_lvl = this_cube.lvl;
                    
                    state = scr_nothing;
                    }
                
                //change sprite for the zone
                with (this_zone)
                    {
					image_index = 0;
                    image_speed = teleport_image_speed;
					idle_ready_teleport = "teleport";
                    
					}
                this_cube.visible = false;
                }
            exit;
            }
        }
    }
