/// @description Initialize variables

cell_number_x = 6;
cell_number_y = 6;
cell_size = 64;


/* cell content code:
0: empty
1: ingredient_1
*/
cells = [
	[0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 0, 0],
];

// music
audio_play_sound(snd_mus_alchemy, 100, true, 1);