modules = [];

mod_mana_cost = function ()
{
	var _total = 0
	
	for(var i = 0; i < array_length(modules); i++)
	{
		_total += modules[i].cost;
	}
	
	return _total;
}

mod_range = function ()
{
	var _total = 0
	
	for(var i = 0; i < array_length(modules); i++)
	{
		_total += modules[i].range/(i/2);
	}
	
	return _total;
}

mod_spd = function ()
{
	var _total = 0
	
	for(var i = 0; i < array_length(modules); i++)
	{
		_total += modules[i].spd/(i/2);
	}
	
	return _total;
}

mana_cost_total = mod_mana_cost();
range_total = mod_range();
spd_total = mod_spd();

//show_debug_message (mod_mana_cost());

caster = par_entity;
origin_x = caster.x;
origin_y = caster.y;

target_x = caster.target_x_caster;
target_x = caster.target_y_caster;

dir = point_direction(origin_x, origin_y, target_x, target_x);