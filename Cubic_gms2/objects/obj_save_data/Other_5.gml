/// @description save pzones
//pzones
if instance_exists(obj_pz) {
    ds_map_replace(pzones, room, obj_pz.solved_pzs);
}