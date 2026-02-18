draw_self();

var _start_x, _width_life_bar, _width_spr_total_life;

_width_spr_total_life = sprite_get_width(spr_total_life);

_width_life_bar = total_life * _width_spr_total_life;

_start_x = x - _width_life_bar/2;

for(var i = 1; i <= total_life; i ++)
{
	
	draw_sprite(spr_total_life, 0, _start_x + _width_spr_total_life * i, y -20);
}

for(var i = 1; i <= current_life; i ++)
{
	var w_current_life = sprite_get_width(spr_current_life);
	
	draw_sprite(spr_current_life, 0, _start_x + w_current_life * i, y -20);
}