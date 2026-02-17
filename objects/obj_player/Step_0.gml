event_inherited();

var _up, _down, _left, _right, _click, _scroll_up, _scroll_down;
_up = keyboard_check(ord("W"));
_down = keyboard_check(ord("S"));
_left = keyboard_check(ord("A"));
_right = keyboard_check(ord("D"));

_click = mouse_check_button(mb_left);
_scroll_up = mouse_wheel_up();
_scroll_down = mouse_wheel_down();

movement_player(_right, _left, _up, _down, obj_wall);

#region //trocar feitiço

if(_scroll_up)
{
	cooldown_scroll --;
	
	if(cooldown_scroll == 0)
	{
		ind++;
	
		if(ind >= array_length(grimore))
		{
			ind = 0;
		}
	
		choice = grimore[ind];
		
		cooldown_scroll = 2;
	}
}

if(_scroll_down)
{
	cooldown_scroll --;
	
	if(cooldown_scroll == 0){
		ind--;
	
		if(ind < 0)
		{
			ind = array_length(grimore)-1;
		}
	
		 choice = grimore[ind];
		 
		 cooldown_scroll = 2;
	}
}

#endregion

cooldown_click--;

if(_click)
{
	
	
	if(cooldown_click <= 0)
	{
		var _inst, _angle, _dist, _offsetx, _offsety;
		
		_angle = point_direction(x, y, mouse_x, mouse_y);
		_offsetx = lengthdir_x(25, _angle);
		_offsety = lengthdir_y(25, _angle);
		
		_inst = instance_create_layer(x + _offsetx, y + _offsety, "Instances", choice);
		
		cooldown_click = 25;
	}
}