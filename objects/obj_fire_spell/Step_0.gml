depth = -y;

check_range();

speed = spd;
if(spd != 0)
{
	instance_create_layer(x, y, "Instances", obj_amber);
}

if(goal == true)
{
	spd = 0
	
	duration --;
	
	if(duration == 0)
	{
		goal = false;
		instance_destroy();
	}
}




