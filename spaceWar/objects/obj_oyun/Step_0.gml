
if(keyboard_check_pressed(vk_enter))
{
	switch(room)
	{
		case room_baslangic:
		room_goto(Room1);
		break ;
		
		case room_kazanma:
		case room_kaybetme:
		
			game_restart();
			break;
	}
}

if(room == Room1)
{
	if(score == 1000)
	{
		room_goto(room_kazanma);
		audio_play_sound(audio_kazanma,1,false);
	}
	
	if(lives <=0)
	{
		room_goto(room_kaybetme);
		audio_play_sound(audio_kaybetme,1,false);
	}
}


