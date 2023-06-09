instance_destroy();
audio_play_sound(audio_hasar,1,false);
score += 10;

with(other)
{
	instance_destroy() ;
	
	if(sprite_index == spr_meteorBuyuk)
	{
		repeat(2)//büyük meteor destroy edildiğinde iki orta meteor oluştur
		{
			var yeni_meteor = instance_create_layer(x,y,"Instances",obj_meteor);
			yeni_meteor.sprite_index = spr_meteorOrta;
		}
	}
	
	else if(sprite_index == spr_meteorOrta)
	{
		repeat(2) //orta meteor destroy edildiğinde iki küçük meteor oluştur
		{
			var yeni_meteor = instance_create_layer(x,y,"Instances",obj_meteor);
			yeni_meteor.sprite_index = spr_meteorKucuk;
		}
	}
	
	repeat(15)
	{
		instance_create_layer(x,y,"Instances",obj_patlama);
	}
}


