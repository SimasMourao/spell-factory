function dash_effect(_dir){
	return
	{
		name: "effect_dash",
		dir: _dir,
		speed: 12,
		effect_durat: 8,
		
		on_step: function (_entity)
		{
			_entity.x += lengthdir_x(self.speed, self.dir);
			_entity.y += lengthdir_y(self.speed, self.dir);
			
			var efx = instance_create_layer(_entity.x, _entity.y, "Instances", obj_spell_efx); 
			efx.type = 1;
			efx.sprite_index = spr_mage;
		}
	}
}