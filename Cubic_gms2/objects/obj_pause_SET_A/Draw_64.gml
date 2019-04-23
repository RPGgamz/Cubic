draw_self();
draw_rectangle(x+entries[e, e_x], entries[e, e_y], x+entries[e, e_x]+1, entries[e, e_y]+1, false);

//draw sliders
var E = 0;
repeat(3) {
	var temp_value = max(entries[E, e_value],0)
	draw_rectangle(x+entries[E, e_x]+5, entries[E, e_y], x+entries[E, e_x]+5+temp_value, entries[E, e_y]+1, false)
	draw_rectangle(x+entries[E, e_x]+8+temp_value, entries[E, e_y], x+entries[E, e_x]+30, entries[E, e_y]+1, false);
	draw_rectangle(x+entries[E, e_x]+5+temp_value, entries[E, e_y]-1, x+entries[E, e_x]+8+temp_value, entries[E, e_y]-1, false);
	draw_rectangle(x+entries[E, e_x]+5+temp_value, entries[E, e_y]+2, x+entries[E, e_x]+8+temp_value, entries[E, e_y]+2, false);
	E++;
}

//on/off text
if (entries[E, e_value]) var str = "ON"
else var str = "OFF";
if (e=E) str = "[" + str + "]"

draw_text(x+entries[E, e_x]+7, entries[E, e_y]-1, str);