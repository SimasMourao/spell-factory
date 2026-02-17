if(other.is_solid)
{
	/*if(other.is_enemy)
	{
		instance_create_layer(x, y, "Instances", obj_amber)
	
		if(instance_exists(obj_amber))
		{
			instance_destroy();
		}
	}*/
	
	goal = true;
}

if(other.can_take_damage)
{
	other.take_damage(damage);
}