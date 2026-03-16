// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dash_effect(_dir){
	return
	{
		name: "effect_dash",
		dir: _dir,
		speed: 12,
		spell_durat: 8,
		
		on_step: function (_entity)
		{
			_entity.x += lengthdir_x(self.speed, self.dir);
			_entity.y += lengthdir_y(self.speed, self.dir);
		}
	}
}