
function check_range(){
	var _dir; 
	
	_dir = point_distance(x, y, origem_x, origem_y);
	
	if(_dir > range)
	{
		goal = true;
	}
}