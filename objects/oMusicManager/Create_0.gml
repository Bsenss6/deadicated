//global volume control
global.masterVolume = 1;
global.musicVolume = 1;

/// info for the music currently playing / trying to play
musicInstance = noone;
musicAsset = noone;
targetMusicAsset = noone;
endFadeOutTime = 0; //how many frames to fade out the music currently playing
startFadeinTime = 0; //how many frames to fade in the new music
fadeInInstVol = 1; //volume of musicInstance

//fading music out and stop musics that are no longer playing
fadeOutInstances = array_create(0); //audio instances to fade out
fadeOutInstVol = array_create(0); //volume of each individual audio instance
fadeOutInstTime = array_create(0); //how fast the fadeout should happen