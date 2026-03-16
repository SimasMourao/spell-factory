depth = -y;



total_duration --;

if(total_duration <= 0)
{
	instance_destroy();
}

for(var i = 0; i < array_length(modules); i++)
{
	if(variable_struct_exists(modules[i], "on_step"))
	{
		modules[i].on_step(self);
	}
}

