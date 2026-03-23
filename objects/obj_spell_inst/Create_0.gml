modules = 0;

total_duration = 0;
total_damage = 0;

caster = noone;

origin_x = 0;
origin_y = 0;

target_x = 0;
target_y = 0;

init_spell = function (_caster, _modules)
{
	caster = _caster;
	modules = _modules;
	
	origin_x = caster.x;
	origin_y = caster.y;
	
	target_x = caster.target_x_caster;
	target_y = caster.target_y_caster;

	
	for(var i = 0; i < array_length(modules); i++)
	{
		if(variable_struct_exists(modules[i], "spell_damage"))
		{
			total_damage += modules[i].spell_damage;
		}
		
		if(variable_struct_exists(modules[i], "spell_durat"))
		{
			total_duration += modules[i].spell_durat;
		}
		
		if(variable_struct_exists(modules[i], "on_create"))
		{
			modules[i].on_create(self);
		}
	}
}