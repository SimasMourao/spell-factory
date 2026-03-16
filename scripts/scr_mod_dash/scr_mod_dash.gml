// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mod_dash(){
	return 
	{
		name: "dash",
		mana_cost: 5,
		
		on_create: function(_spell)
        {
			var caster_dash = _spell.caster;
			
			var dir = point_direction(caster_dash.xprevious, caster_dash.yprevious, caster_dash.x, 
			caster_dash.y);
			
			apply_effect(caster_dash, dash_effect(dir));
			
			instance_destroy(_spell);
        },
        
	};
}