//record the move
show_debug_message("________")
var i = array_length_1d(record)-1;
repeat(i) {
	record[i] = record[i-1];
	show_debug_message(string(i) + ": " + string(record[i]))
	i--;
}
record[0] = important_dir;
show_debug_message(string(i) + ": " + string(record[i]))
		
//test if the pattern is correct
i = 0;
repeat(array_length_1d(seq_0)){
	if (record[i] != seq_0[i]) break;
	i++;
}
if (i == array_length_1d(seq_0)) game_end();
		
i = 0;
repeat(array_length_1d(seq_1)){
	if (record[i] != seq_1[i]) break;
	i++;
}
if (i == array_length_1d(seq_1)) game_end();

timer = -1;