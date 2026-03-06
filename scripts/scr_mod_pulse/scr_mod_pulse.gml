// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mod_pulse(){
/*    return 
    {
       name: "pulse",
        
        radius: 0,
        max_radius: 400,
        expand_speed: 20,
        
        on_create: function(_spell)
        {
            self.radius = 0;
        },
        
        on_step: function(_spell)
        {
            self.radius += self.expand_speed;
            
            // detectar entidades no raio
           /* var _list = ds_list_create();
            
            collision_circle_list(
                _spell.x,
                _spell.y,
                self.radius,
                par_entity,
                false,
                true,
                _list,
                true
            );
            
            for(var i = 0; i < ds_list_size(_list); i++)
            {
                var _target = _list[| i];
                
                if(_target != _spell.caster)
                {
                    _target.take_damage(1);
                }
            }
            
            ds_list_destroy(_list);
            
            // destruir quando chegar no limite
            if(self.radius >= self.max_radius)
            {
                instance_destroy(_spell);
            }
        }
    }*/
	
	return
	{
		name: "pulse",
		r: 0,
		r_m: 200,
		spd_expd: 10,
		
		on_create: function(_spell)
		{
		},
		
		on_step: function(_spell)
		{
			self.r += self.spd_expd;
			
			if(self.r >= self.r_m)
			{
				instance_destroy(_spell);
			}
		}
	}
}