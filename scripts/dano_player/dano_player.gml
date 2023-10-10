function dano_player(dano){
if global.pd_dano{
	dano = 0
}

if !global.pd_dano{
	global.vida_player -= dano
	obj_player.alpha = 1 
	global.pd_dano = true
	global.pd_danoInterTime = 0
}

/*global.pd_dano
	global.pd_danoTime
	global.pd_danoInterval
	global.pd_danoInterTime*/
}