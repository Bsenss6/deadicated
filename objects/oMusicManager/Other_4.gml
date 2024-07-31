///Play the correct music

switch (room) {
	case rm_main:
		set_music_ingame(MUS_Menu, 60, 0);
		break;
	case rm_story_start:
		set_music_ingame(snd_mus_story_start, 60, 60);
		break;
	case rm_lobby:
	case rm_story_end:
		set_music_ingame(mus_lobby, 60, 60);
		break;
	case rm_gathering01:
	case rm_gathering02:
	case rm_gathering03:
	case rm_gathering04:
	case rm_gathering05:
	case rm_gathering06:
	case rm_test:
		set_music_ingame(MUS_Exploration, 60, 60);
		break;
	case rm_recipe_book:
	case rm_potion:
		set_music_ingame(MUS_Alchemy, 60, 60);
		break;
}
