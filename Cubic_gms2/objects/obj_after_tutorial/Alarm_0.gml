/// @description fade in text

textalpha += 0.01;
if (textalpha >= 1) {
	textalpha = 1;
	alarm[1] = 180;
} else alarm[0] = 1;