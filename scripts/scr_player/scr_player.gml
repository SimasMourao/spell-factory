function movement_player(_spd, t_right, t_left, t_up, t_down, colide){
var right = keyboard_check(t_right);
var left = keyboard_check(t_left);
var up = keyboard_check(t_up);
var down = keyboard_check(t_down);

var hspd = right - left;
var vspd = down - up;
var move = hspd != 0 || vspd != 0;

var dir = point_direction(0, 0, hspd, vspd);
var lengx = lengthdir_x(_spd * move, dir);
var lengy = lengthdir_y(_spd * move, dir);

if(place_meeting(x + lengx, y, colide)){
	while !place_meeting(x + sign(lengx), y, colide){
	x += sign(lengx)
	}
	
	lengx = 0;
}

if(place_meeting(x, y + lengy, colide)){
	while !place_meeting(x, y + sign(lengy), colide){
	y += sign(lengy)
	}
	
	lengy = 0;
}

x += lengx;
y += lengy
}
	
	
