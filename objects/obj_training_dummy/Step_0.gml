if(keyboard_check_pressed(vk_space))
{
	current_life --;
}

if(place_meeting(x, y, obj_fire_spell))
{
	
}

if(current_life < 0)
{
	current_life = total_life;
}