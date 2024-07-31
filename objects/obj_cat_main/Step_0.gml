/// @description Insert description here
// You can write your code in this editor

if (step % (60 * wobble_speed) == 0) {
	x_offset = wobble_x_movement * cos(step/60 * 4);
	y_offset = random(wobble_y_movement) - wobble_y_movement/2;

}
x = lerp(x, x_start + x_offset, 0.01);
y = lerp(y, y_start + y_offset, 0.01);
//x = (x_start + x_offset)/(60 * wobble_speed);
//y = (y_start + y_offset)/(60 * wobble_speed);
step++;
