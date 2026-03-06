// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mod_fire(){
    return 
    {
        name: "fire",
        damage_spell: 1,
        spell_spd: 2,
        
        on_create: function(_spell)
        {
			_spell.base_spell_sprite = spr_fire_spell;
            _spell.direction = point_direction(
                _spell.origin_x,
                _spell.origin_y,
                _spell.target_x,
                _spell.target_y
            );
        },
        
        on_step: function(_spell)
        {
            _spell.x += lengthdir_x(spell_spd, _spell.direction);
            _spell.y += lengthdir_y(spell_spd, _spell.direction);
        }
    };
}