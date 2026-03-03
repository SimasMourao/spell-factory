// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mod_fire(){
    return 
    {
        name: "fire",
        damage: 1,
        spd: 2,
        
        on_create: function(_spell)
        {
			_spell.sprite_index = spr_fire_spell;
            _spell.direction = point_direction(
                _spell.origin_x,
                _spell.origin_y,
                _spell.target_x,
                _spell.target_y
            );
        },
        
        on_step: function(_spell)
        {
            _spell.x += lengthdir_x(self.spd, _spell.direction);
            _spell.y += lengthdir_y(self.spd, _spell.direction);
        }
    };
}