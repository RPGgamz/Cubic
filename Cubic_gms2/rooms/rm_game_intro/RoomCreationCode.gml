if (global.fix == 1) {
    instance_create(0,0,obj_game_intro);
    var player = instance_create(24, 84, obj_cube_1);
    obj_control.player_cube = player.id;
}