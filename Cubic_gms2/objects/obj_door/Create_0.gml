/// @description Kopier skabelon til instance_creation_code for settings

//_____SKABELON_____//
target_room = rm_game_intro;
target_door = 0;
type = "normal";

ID = 0;
dir = "still";

//only used when type = "forest":
transition_dir = "still";
transition_time = -1;


/*
//_____HOW TO USE_____//
target_door er ID hos broder-dør.
ID kan være fra 0 og op. Hvis den er -1 kommer man ikke ind ad en dør
dir kan være: still, up, right, down, left
transition_time er hvor mange frames der skal bruges på overgangen, og hvis udelades bruges 30

Hvis det kun er et exit kan ID og dir udelades
Hvis det kun er en entrance kan de to "target" udelades

/* */
/*  */
