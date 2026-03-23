function burn_effect(){
	return{
		
		name: "burn",
		damage_effect: 1,
		effect_durat: 360,
		interval: 120,
		timer: 30,
		
		on_step: function(_entity){
			self.timer --;
			
			if(self.timer <= 0){
				
				_entity.take_damage(self.damage_effect);
				self.timer = self.interval;
			}
			
		}
	}
}