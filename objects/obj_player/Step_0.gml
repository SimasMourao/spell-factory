/*if(i >= 0){
	i--;
}

else
{
	i = 900;	
}*/

var _up, _down, _left, _right, _click, _scroll_up, _scroll_down;
_up = keyboard_check(ord("W"));
_down = keyboard_check(ord("S"));
_left = keyboard_check(ord("A"));
_right = keyboard_check(ord("D"));
_click = mouse_check_button_released(mb_left);
_scroll_up = mouse_wheel_up();
_scroll_down = mouse_wheel_down();

hspd = _right - _left;
vspd = _down - _up;

if(hspd != 0 || vspd != 0){
	var _lengx, _lengy, _dir;

	_dir = point_direction(0, 0, hspd, vspd);
	_lengx = lengthdir_x(spd, _dir);
	_lengy = lengthdir_y(spd, _dir);
	
	x += _lengx;
	y += _lengy;
}

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
	
		_choice = grimore[ind];
		
		cooldown_scroll = 4;
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
	
		 _choice = grimore[ind];
		 
		 cooldown_scroll = 4;
	}
}

if(_click)
{
	instance_create_layer(x, y, "Instances", _choice);
}