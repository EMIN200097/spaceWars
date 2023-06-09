
if (keyboard_check(vk_left))
{
	
	image_angle += 5;
	
}

if (keyboard_check(vk_right))
{
	image_angle -= 5;
}

if (keyboard_check(vk_up))
{
	//yukarı ok tuşu kontrolü
	motion_add(image_angle,0.05); //yokarı hareket 
	//0.05 degeri 60 ile çarpılır yani 3 birim hıza denk gelir
	
}
if (keyboard_check(vk_down))
{
	//yukarı ok tuşu kontrolü
	motion_add(image_angle,-0.05); //yokarı hareket 
	//0.05 degeri 60 ile çarpılır yani 3 birim hıza denk gelir
	
}

move_wrap(true,true,sprite_width/2);
// karakterin sahnenin yatay ve dikey ekseninde sürekli döngü içinde kalmasını sağlar
//sprite_width/2 olmasının sebebi karakterin yarısı bi yerden sahne dışına çıktığında diğer yarısının tam tersinden sahne içine girmesi için


if(keyboard_check_pressed(vk_space))
{
	var mermi =	instance_create_layer(x,y,"Instances",obj_mermi);
	mermi.direction = image_angle;
	audio_play_sound(audio_ates,1,false);
}
	