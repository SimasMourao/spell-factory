event_inherited();

can_take_damage = true;

hspd = 0;
vspd = 0;
spd = 2;

total_life = 10;
current_life = total_life;

total_mana = 10;
current_mana = total_mana;

function take_damage(_amount)
{
	current_life -= _amount
	
	if(current_life <= 0)
	{
		die();
	}
}

function die()
{
	instance_destroy();
}

