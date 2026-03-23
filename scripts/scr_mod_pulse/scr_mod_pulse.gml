function mod_pulse()
{
    return
    {
        name: "pulse",
        
        radius: 0,
        thickness: 20,
        max_radius: 200,
        expand_speed: 10,

        on_create: function(_spell)
        {
			_spell.sprite_index = spr_projectle;
            self.radius = 0;
        },

        on_step: function(_spell)
        {
            self.radius += self.expand_speed;

            var inner = self.radius - self.thickness;
            var outer = self.radius;

            with(par_entity)
            {
                if(id != _spell.caster)
                {
                    var dist = point_distance(x, y, _spell.x, _spell.y);

                    if(dist >= inner && dist <= outer)
                    {
                        show_debug_message("hit");
                    }
                }
            }

            if(self.radius >= self.max_radius)
            {
                instance_destroy(_spell);
            }
        }
    }
}