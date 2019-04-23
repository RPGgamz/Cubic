/// @description scroll
if (scroll_dir == -1 && (keyboard_check(vk_left) || keyboard_check(ord("A")))) {
	if (entries[e, e_value] > 0) {
		entries[e, e_value]--;
		alarm[0] = scroll_spd;
	}
}
if (scroll_dir == 1 && (keyboard_check(vk_right) || keyboard_check(ord("D")))) {
	if (entries[e, e_value] < slider_max) {
		entries[e, e_value] = max(entries[e, e_value]+1, 1);
		alarm[0] = scroll_spd;
	}
}