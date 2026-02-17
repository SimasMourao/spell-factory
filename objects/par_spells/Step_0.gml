depth = -y;
speed = spd;

check_range();

if(goal == true)
{
	if(obj_destroy != noone){
		instance_create_layer(x, y, "Instances", obj_destroy);
		
		if(instance_exists(obj_destroy))
		{
			instance_destroy();
		}
	}
	
	else
	{
		instance_destroy();
	}

}

if(obj_efx != noone)
{
	instance_create_layer(x, y, "Instances", obj_efx);
}
