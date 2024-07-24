/// @description Insert description here
// You can write your code in this editor

enum sun_mode {
	smooth,
	steps,
	movement_controlled
}

rad = 15*pi/8; //0 to 2pi
rad_step = 0.02; //steps of the sun
sun_ready = true;
path_radius = 64;
sleep_time = 0.5;

mode = sun_mode.steps;