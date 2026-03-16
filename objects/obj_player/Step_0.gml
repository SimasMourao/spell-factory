event_inherited();

target_x_caster = mouse_x;
target_y_caster = mouse_y;

var _up, _down, _left, _right, _click;
_up = keyboard_check(ord("W"));
_down = keyboard_check(ord("S"));
_left = keyboard_check(ord("A"));
_right = keyboard_check(ord("D"));
_click = mouse_check_button_released(mb_left);

movement_player(spd, _right, _left, _up, _down, obj_wall);

if(_click)
{
	create_spell(id, [mod_dash()]);
}