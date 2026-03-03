depth = -y;

for(var i = 0; i < array_length(modules); i++)
{
	if(variable_struct_exists(modules[i], "on_step"))
	{
		modules[i].on_step(self);
	}
}