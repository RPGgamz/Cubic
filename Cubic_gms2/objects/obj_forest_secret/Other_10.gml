//record the move
var i = array_length_1d(record)-1;
repeat(i) {
	record[i] = record[i-1];
	i--;
}
record[0] = important_dir;

//test if the pattern is correct
//pattern 0
if (star0 == false) {
	i = 0;
	repeat(array_length_1d(seq_0)){
		if (record[i] != seq_0[i]) break;
		i++;
	}
	if (i == array_length_1d(seq_0)) {
		with (obj_star_emerge) if (nr == 0) image_speed = 1/2;
		star0 = true;
	}
}

//pattern 1
if (star1 == false) {
	i = 0;
	repeat(array_length_1d(seq_1)){
		if (record[i] != seq_1[i]) break;
		i++;
	}
	if (i == array_length_1d(seq_1)) {
		with(obj_star_emerge) if (nr == 1) image_speed = 1/2;
		star1 = true
	}
}

timer = -1;