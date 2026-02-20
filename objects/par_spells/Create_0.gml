spd = 3;

obj_efx = noone;
obj_destroy = noone;

damage = 1;
cost = 50;

par_entity.mana_cost(cost);

goal = false;
range = 90;

origem_x = obj_player.x;
origem_y = obj_player.y;

direction = point_direction(origem_x, origem_y, mouse_x, mouse_y);

