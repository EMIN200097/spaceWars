
if(room == Room1)
{
	if(audio_is_playing(audio_arkaplan))
	{
		audio_stop_sound(audio_arkaplan);
	}
	
	audio_play_sound(audio_arkaplan,2,true);
	
	repeat(5)
	{
		
	var xx = choose(irandom_range(0,room_width*0.3), irandom_range(room_width*0.7,room_width));
	var yy = choose(irandom_range(0,room_height*0.3), irandom_range(room_height*0.7,room_height));
	
	instance_create_layer(xx,yy,"Instances",obj_meteor);
	}
	
	alarm[0] = 60;
}