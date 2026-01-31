image_xscale = lerp(image_xscale, 50, .05);
image_yscale = lerp(image_yscale, 50, .05);

if(image_xscale >= 45)
{
	instance_destroy();
}