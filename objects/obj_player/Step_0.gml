var _up, _down, _left, _right;
_up = keyboard_check(ord("W"));
_down = keyboard_check(ord("S"));
_left = keyboard_check(ord("A"));
_right = keyboard_check(ord("D"));

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