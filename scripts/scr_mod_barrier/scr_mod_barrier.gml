function mod_barrier(){ 
	return { 
		name: "barrier", 
		damage_spell: 1, 
		spell_spd: 0, 
		spell_durat: 180, 
		
		on_create: function(_spell) { 
			_spell.sprite_index = spr_barrier_spell; 
			_spell.is_barrier = true; 
			_spell.solid = true; 
		}, 
			
		on_step: function(_spell){ 
			with(_spell){ 
				var angle = floor((point_direction(_spell.origin_x, _spell.origin_y, 
									_spell.target_x,
									_spell.target_y)-60) / 90); 
				
				switch(angle) { 
					case 0: 
						image_angle = 0; 
						break; 
						
					case 1: 
						image_angle = 90; 
						break; 
					
					case 2: 
						image_angle = 180; 
						break; 
					
					case 3: 
						image_angle = 270; 
						break; 
				} 
			} 
		}, 
		
		on_hit: function(_spell, _target){ 
			_target.x = _target.xprevious; 
			_target.y = _target.yprevious; 
		} 
	} 
}