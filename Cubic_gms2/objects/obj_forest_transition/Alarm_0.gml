
if (tick < 1) {
    tick_rate += 0.029;
    tick += power(tick_rate, 3);
    if (tick >= 1) {
        tick = 1;
    } else {
        alarm[0]++;
    }
}
