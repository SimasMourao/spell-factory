for(var i = 0; i < array_length(modules); i++)
{
	if(variable_struct_exists(modules[i], "on_hit"))
	{
		modules[i].on_hit(self, other);
	}
}