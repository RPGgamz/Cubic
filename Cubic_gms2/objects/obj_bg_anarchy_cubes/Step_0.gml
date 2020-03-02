
if keyboard_check_pressed(ord("N")) anarchy = max(anarchy-0.1, 0);
if keyboard_check_pressed(ord("M")) anarchy = min(anarchy+0.1, 1);



var i = c_n;
while(i-- > 0) {
	if (c_t[i] > 0) {
		c_t[i]--;
		continue;
	}
	
	//move
	switch (c_d[i]) {
		case right:
			c_x[i] += c_v;
			break;
		case up:
			c_y[i] -= c_v;
			break;
		case left:
			c_x[i] -= c_v;
			break;
		case down:
			c_y[i] += c_v;
	}
	
	//edge of screen
	if (!point_in_rectangle(c_x[i], c_y[i], 0, 0, 120-c_s, 108-c_s)) {
		//stop
		c_t[i] = 1;
		
		repeat (c_v) {
			switch (c_d[i]) {
				case right:
					c_x[i]--;
					break;
				case up:
					c_y[i]++;
					break;
				case left:
					c_x[i]++;
					break;
				case down:
					c_y[i]--;
			}
			if (point_in_rectangle(c_x[i], c_y[i], 0, 0, 120-c_s, 108-c_s)) break;
		}
	}
	
	//collision cubes
	var j = c_n
	while (j-- > 0) {
		if (j == i) continue;
		
		if (point_in_rectangle(c_x[i], c_y[i], c_x[j]-c_s+1, c_y[j]-c_s+1, c_x[j]+c_s-1, c_y[j]+c_s-1)) {
			//stop
			c_t[i] = 1;
			
			repeat (c_v) {
				switch (c_d[i]) {
							case right:
								c_x[i]--;
								break;
							case up:
								c_y[i]++;
								break;
							case left:
								c_x[i]++;
								break;
							case down:
								c_y[i]--;
				}
				if (!point_in_rectangle(c_x[i], c_y[i], c_x[j]-c_s, c_y[j]-c_s , c_x[j]+c_s, c_y[j]+c_s)) break;
			}
		}
	}
	
	//if stopped, pick new direction and time
	if (c_t[i] == 1) {
		c_d[i] = irandom(3);
		c_t[i] = g_t*irandom(rest_max) + irandom(anarchy*g_t) + g_tt;
	}
}

g_tt = (g_tt+1) mod g_t;