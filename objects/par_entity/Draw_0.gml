draw_self();

for(var i = 0; i < array_length(status_effects); i++)
{
    draw_text(x, y + 100 - (i * 15), status_effects[i].effect_durat);
}

if(is_enemy == true && is_solid = true){
	
	
	var width_spr_total_life, width_life_bar, _start_x;
	
	width_spr_total_life = sprite_get_width(spr_total_life);

	width_life_bar = total_life * width_spr_total_life;
	
	_start_x = x - width_life_bar/2;

	for(var i = 1; i <= total_life; i ++)
	{
		var w_total_lite = sprite_get_width(spr_total_life);
	
		draw_sprite(spr_total_life, 0, _start_x + w_total_lite * i, y -15);
	}

	for(var i = 1; i <= current_life; i ++)
	{
		var w_current_life = sprite_get_width(spr_current_life);
	
		draw_sprite(spr_current_life, 0, _start_x + w_current_life * i, y -15);
	}
}