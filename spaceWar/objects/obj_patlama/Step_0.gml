image_alpha = image_alpha - 0.01;

// patlama fekti olduğunda her saniye görünürlüğü azalır
// görünürlük 0 olduğunda objeyi yok eder

if(image_alpha <= 0)
{
	instance_destroy();
}