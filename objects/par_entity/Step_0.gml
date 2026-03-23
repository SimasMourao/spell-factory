depth = -y;

for(var i = array_length(status_effects)-1; i >= 0; i--)
{
	status_effects[i].on_step(id);
	
	status_effects[i].effect_durat--;
	
	if(status_effects[i].effect_durat <= 0)
	{
		array_delete(status_effects, i, 1);
	}
}