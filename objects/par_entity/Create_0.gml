is_solid= true;
is_player = false;
is_enemy = false;
can_take_damage = true;

hspd = 0;
vspd = 0;
spd = 2;

total_life = 6;
current_life = total_life;

total_mana = 10;
current_mana = total_mana;
 _time_regen = 5;

target_x_caster = noone;
target_y_caster = noone;


status_effects = [];

#region // CICLO DE VIDA E MANA 
take_damage = function (_amount)
{
	current_life -= _amount
	
	if(current_life <= 0)
	{
		self.death();
	}
}

death = function ()
{
	instance_destroy();
}


mana_regen = function ()
{
	if(current_mana < total_mana)
	{
		current_mana += 1;
	}
}

mana_cost = function(_amount)
{
	current_mana -= _amount
	
}
#endregion