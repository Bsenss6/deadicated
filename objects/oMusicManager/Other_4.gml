///Play the correct music
if room == rm_main{
	set_music_ingame(MUS_Menu, 60, 0);
}
if room == rm_gathering01 || room == rm_gathering02 || room == rm_gathering03 || room == rm_gathering04 || room == rm_test{
	set_music_ingame(MUS_Exploration, 60, 60);
}
if room == rm_lobby || room == rm_potion || room == rm_recipe_book{
	set_music_ingame(MUS_Alchemy, 60, 60)
}