// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mod_barrier(){
    return 
    {
        name: "barrier",
		
        damage_spell: 1,
        spell_spd: 0,
		spell_durat: 180,
        
        on_create: function(_spell)
        {
			_spell.sprite_index = spr_barrier_spell;
           dir = floor((point_direction(_spell.origin_x, _spell.origin_y, _spell.target_x, _spell.target_y)-45) / 90);

			switch(dir)
			{
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
			
			_spell.is_barrier =  true;
			_spell.solid = true;

        },
        
        on_step: function(_spell)
        {
			with(_spell){
				if(_spell.is_barrier)
				{
			
					var hit = instance_place(_spell.x, _spell.y, par_entity);
	
					if(hit != noone)
					{
						hit.x = hit.xprevious;
						hit.y = hit.yprevious;
					}
				}
			}
		}
	};
}