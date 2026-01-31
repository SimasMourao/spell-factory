function modal_ring(distance_player, obj, amount_obj){
	var _angle_steps = 360 / amount_obj;
	
	
		for(var i = 0; i < amount_obj; i++){
			var _angle = i * _angle_steps;
		
			var leng_x = x + lengthdir_x(distance_player, _angle );
			var leng_y = y + lengthdir_y(distance_player, _angle );
			
			instance_create_layer(leng_x, leng_y, "Instances", obj);	
			
		}
}