
var xx = 0;
repeat(9) {
	var yy = 0;
	repeat(9) {
		//random birth
		if (square_time[xx,yy] == -1 && irandom(square_birth_chance) == 1) square_time[xx,yy] = 0;
		
		//progress
		if (square_time[xx,yy] != -1){
			square_time[xx,yy]++;
			if (square_time[xx,yy] == square_lifetime) {
				square_time[xx,yy] = -1;
				square_vals[xx,yy] = 0;
			} else square_vals[xx,yy] = sin(square_time[xx,yy]*pi/square_lifetime)*max_value;
		}
		
		yy++;
	}
	xx++;
}