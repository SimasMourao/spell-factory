// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mod_pulse(){
	return
	{
		name: "pulse",
		radius: 0,
		radius_max: 200,
		spd_expd: 10,
		
		on_create: function(_spell)
		{
			self.radius = 0;
		},
		
		on_step: function(_spell)
		{
			self.radius += self.spd_expd;
			
		}
	}
}