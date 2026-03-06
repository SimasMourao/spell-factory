draw_self();

for(var i = 0; i < array_length(modules); i++)
{
    if(variable_struct_exists(modules[i], "r"))
    {
        draw_circle(x, y, modules[i].r, false);
    }
}