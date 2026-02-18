depth = -y;

image_xscale = lerp(image_xscale, 0, .05);
image_yscale = lerp(image_yscale, 0, .05);

image_alpha = lerp(image_alpha, 0, .08);


if(image_xscale <= 0.5 || image_yscale <= 0.5)
{
	instance_destroy();
}