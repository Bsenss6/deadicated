/// @description Insert description here
// You can write your code in this editor

if (step % (60 * wobble_speed) == 0) {
	x_offset = random(wobble_x_movement) - wobble_x_movement/2;
	y_offset = random(wobble_y_movement) - wobble_y_movement/2;

}
x = lerp(x, x_start + x_offset, 0.02);
y = lerp(y, y_start + y_offset, 0.02);
//x = (x_start + x_offset)/(60 * wobble_speed);
//y = (y_start + y_offset)/(60 * wobble_speed);
step++;