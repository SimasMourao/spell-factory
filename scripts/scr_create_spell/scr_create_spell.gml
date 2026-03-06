function create_spell(_caster, _modules)
{
	var _offset = offset_caster(_caster, _caster.target_x_caster, _caster.target_y_caster);
	
	var _spell = instance_create_layer(_caster.x + _offset.x, _caster.y + _offset.y, "Instances", obj_spell_inst);
	
	_spell.init_spell(_caster, _modules);
	
	return _spell;
}