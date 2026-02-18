#region // PLAYER

var _width_bar_mana, _wdth_spr_total_mana, _x;

_wdth_spr_total_mana = sprite_get_width(spr_tot_lateral_mana_p);

_width_bar_mana = player.total_mana * _wdth_spr_total_mana;

	#region//RASCUNHO
	/*
	for(var i = 1; i <= player.total_mana; i ++)
	{
		if(i == 1)
		{
			draw_sprite_ext(spr_tot_lateral_mana_p, 0, 40 + _wdth_spr_total_mana * i, 50, 2, 2, 0, c_white, 1);
		}
	
		else
		{
			draw_sprite_ext(spr_tot_mana_p, 0, 40 + _wdth_spr_total_mana * i, 50, 2, 2, 0, c_white, 1);
		
		}
	
			if(i == player.total_mana)
		{
			draw_sprite_ext(spr_tot_lateral_mana_p, 0, 40 + _wdth_spr_total_mana * i, 50, -2, 2, 0, c_white, 1);
		}

	}
	*/
	#endregion
	
for(var i = 1; i <= player.current_mana; i ++)
{

	draw_sprite_ext(spr_cur_mana_p, 0, 40 + _wdth_spr_total_mana * i, 50, 2, 2, 0, c_white, 1);

}

draw_text_colour(40, 600, player.ind, c_black,  c_black, c_black, c_black, 1);

draw_text_colour(40, 640, player.choice, c_black,  c_black, c_black, c_black, 1);

#endregion