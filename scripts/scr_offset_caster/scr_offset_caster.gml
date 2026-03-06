// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function offset_caster(_caster, _target_x, _target_y){
	
	var _angle = point_direction(_caster.x, _caster.y, _target_x, _target_y);
	

	return 
	{
		x: lengthdir_x(25, _angle),
		y: lengthdir_y(25, _angle)
	}
}