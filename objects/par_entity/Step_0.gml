depth = -y;



_time_regen--;

if(_time_regen <= 0)
{
	mana_regen();
	 _time_regen = 1;
}