// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mod_projectle(){
    return {
        name: "projectile",
        spell_damage: 2,
        spell_spd: 7,
        spell_durat: 25,
		
        on_create: function(_spell){
			_spell.sprite_index = spr_projectle;
            _spell.direction = point_direction(
                _spell.origin_x,
                _spell.origin_y,
                _spell.target_x,
                _spell.target_y
            );
        },
        
        on_step: function(_spell){
            _spell.x += lengthdir_x(self.spell_spd, _spell.direction);
            _spell.y += lengthdir_y(self.spell_spd, _spell.direction);
			
			var efx = instance_create_layer(_spell.x, _spell.y, "Instances", obj_spell_efx); 
			efx.type = 0;
			efx.sprite_index = spr_projectle_trail;
        },
		
		on_hit: function(_spell, _target){
			if(_target != _spell.caster){
				if(_target.can_take_damage){
					_target.take_damage(spell_damage);
				}
			}
			instance_destroy(_spell);
		}
    };
}