/// @description Increment step and maybe end
step++;

if (step > transition_time) instance_destroy();

if (!surface_exists(surf_start) || !surface_exists(surf_end)) {
   if (room != next_room) {
      room_goto(next_room);
   }
   instance_destroy();
}



