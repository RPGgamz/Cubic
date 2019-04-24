draw_self();
draw_rectangle(x+entries[e, e_x], entries[e, e_y], x+entries[e, e_x]+1, entries[e, e_y]+1, false);
if (entries[e, e_label] == "TEXT" || entries[e, e_label] == "TUTORIAL") draw_rectangle(x+39, 37, x+40, 38, false);