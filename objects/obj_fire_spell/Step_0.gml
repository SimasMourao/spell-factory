check_range();

speed = spd;

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




