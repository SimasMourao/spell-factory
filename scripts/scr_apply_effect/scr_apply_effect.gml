function apply_effect(_target, _effect){
	/*
	for(var i = 0; i < array_length(_target.status_effects); i++)
	{
		if(_target.status_effects[i].name == _effect.name)
		{
			_target.status_effects[i].spell_durat == _effect.spell_durat;
		}
	}*/
	
	array_push(_target.status_effects, _effect);
	
}