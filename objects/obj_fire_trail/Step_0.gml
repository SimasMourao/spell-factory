depth = -y;

image_xscale = lerp(image_xscale, 0, .2);
image_yscale = lerp(image_yscale, 0, .2);

if(image_xscale <= 0.1 || image_yscale <= 0.1)
{
	instance_destroy();
}