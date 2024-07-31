/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Stop alchemy music
audio_sound_gain(snd_mus_alchemy, 0, 1000);
alarm_set(1, 1*gamespeed_fps);
