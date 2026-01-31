function fire_effects(damage = 2, time_burn = 900, cost_fire = 15)
{
	
}

function thunder_effects(damage = 4, mitigate = 0, paralize = 0, time_paralize = 180, cost_thunder = 25)
{
	//dá dano
	//o dano é espalhado e a cada inimigo acertado o dano diminui
	//paraliza os inimigos, quanto maior o dano, maior é o tempo que a paralizia dura
	//custo de mana
	
	
}

function wind_effects(dano = 2, pull_wind = 700, cost_wind = 7)
{

}

function element_choice(ELEMENTAL)
{
	switch(ELEMENTAL)
	{
		case ELEMENTAL.FIRE:
			fire_effects();
		break;
		
		case ELEMENTAL.THUNDER:
			thunder_effects();
		break;
		
		case ELEMENTAL.WIND:
			wind_effects();
		break;
		
		default :
		
	}
}