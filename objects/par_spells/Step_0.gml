depth = -y;
speed = spd;

check_range();

if(goal == true)
{
	instance_destroy();
}

instance_create_layer(x, y, "Instances", obj_efx);

