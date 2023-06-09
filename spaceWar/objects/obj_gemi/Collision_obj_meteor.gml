
lives -= 1;
audio_play_sound(audio_death,1,false);

with(obj_oyun)
{
	alarm[1] = room_speed;
}

instance_destroy();

repeat(15)
{
	instance_create_layer(x,y,"Instances",obj_patlama);
}
