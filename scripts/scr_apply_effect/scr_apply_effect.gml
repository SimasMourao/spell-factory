function apply_effect(_target, _effect){
	
	for(var i = 0; i < array_length(_target.status_effects); i++)
	{
		if(_target.status_effects[i].name == _effect.name)
		{
			_target.status_effects[i].effect_durat = _effect.effect_durat;
			return;
		}
	}
	

	
	
	array_push(_target.status_effects, _effect);
	
}