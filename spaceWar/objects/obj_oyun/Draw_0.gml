


switch(room)
{
	case Room1:
	
	draw_text(60,30,"SCORE : " + string(score));
	draw_text(60,50,"LIVES : " + string(lives));
	break ;
	
	case room_baslangic:
	
	draw_set_halign(fa_center);
	var r = c_green;
	draw_text_transformed_color(room_width/2,250,"SPACE WAR", 3,3,0,r,r,r,r,1);
	draw_text(room_width/2,400,"OYUNA BASLAMAK ICIN ENTER'A BAS") ;
	draw_set_halign(fa_left);
	break;
	
	case room_kazanma :
	
	draw_set_halign(fa_center);
	var k = c_yellow;
	draw_text_transformed_color(room_width/2,250,"TEBRIKLER KAZANDINIZ!!!", 3,3,0,k,k,k,k,1);
	draw_text(room_width/2,400,"SCORE : " + string(score)) ;
	draw_text(room_width/2,550,"TEKRAR BASLAMAK ICIN ENTER'A BAS") ;
	draw_set_halign(fa_left);
	break;
	
	case room_kaybetme :
	
	draw_set_halign(fa_center);
	var g = c_red;
	draw_text_transformed_color(room_width/2,250,"OYUN BITTI!!", 3,3,0,g,g,g,g,1);
	draw_text(room_width/2,400,"TEKRAR BASLAMAK ICIN ENTER'A BAS") ;
	draw_set_halign(fa_left);
	break ;


}
//Oluşturduğumuz fontu ekleme
draw_set_font(Font1);
