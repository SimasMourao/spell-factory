function create_spell(_caster, _modules)
{
	var _spell = instance_create_layer(_caster.x, _caster.y, "Instances", obj_spell_inst);
	
	_spell.init_spell(_caster, _modules);
	
	return _spell;
}