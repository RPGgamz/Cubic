
//states enum
idle = 0;
playermove = 1;
enemymove = 2;

//single variables
player_spd = 2;
enemy_spd = 2;
keys = 0;
coins = 0;
max_hp = 3;
hp = max_hp;

//setup
state = idle;
//prev_state = idle;
queued_dir = "";