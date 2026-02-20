if(other.is_solid)
{	
	goal = true;
}

if(other.can_take_damage)
{
	other.take_damage(damage);
}