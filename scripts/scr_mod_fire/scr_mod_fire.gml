function mod_fire(){
    return 
    {
        name: "fire",
        spell_spd: 0,
		spell_durat: 240,
        
        on_create: function(_spell)
        {
			_spell.sprite_index = spr_fire_spell;
			_spell.image_xscale = 2;
			_spell.image_yscale = 2;
			
			_spell.direction = point_direction(
                _spell.origin_x,
                _spell.origin_y,
                _spell.target_x,
                _spell.target_y
            );

        },
        
        on_step: function(_spell)
        {
			_spell.x += lengthdir_x(self.spell_spd, _spell.direction);
            _spell.y += lengthdir_y(self.spell_spd, _spell.direction);
        },
		
		on_hit: function(_spell, _target){
				apply_effect(_target, burn_effect());
		}
    };
}