

timer = -1;

star0 = true;
star1 = true;

//sequences (do in order bottom to top)
var a = 0;
seq_0[a++] = "left";
seq_0[a++] = "up";
seq_0[a++] = "down";
seq_0[a++] = "right";
seq_0[a++] = "up";
seq_0[a++] = "left";
seq_0[a++] = "down";
seq_0[a++] = "right";
seq_0[a++] = "down";
seq_0[a++] = "left";
seq_0[a++] = "down";
seq_0[a++] = "right";
seq_0[a++] = "down";

a = 0;
seq_1[a++] = "left";
seq_1[a++] = "right";
seq_1[a++] = "down";
seq_1[a++] = "up";
seq_1[a++] = "down";
seq_1[a++] = "left";
seq_1[a++] = "right";
seq_1[a++] = "up";
seq_1[a++] = "down";
seq_1[a++] = "left";
seq_1[a++] = "up";
seq_1[a++] = "down";
seq_1[a++] = "up";
seq_1[a++] = "up";
seq_1[a++] = "right";
seq_1[a++] = "up";

//record array
record = array_create(max(array_length_1d(seq_0), array_length_1d(seq_1)));