if !global.pd_dano{
	
	if place_meeting(x,y,obj_boomberang_batebate){

		alpha = 1
	}
}
if global.pd_dano{
	obj_boomberang_batebate.solid = false
}else{
	obj_boomberang_batebate.solid = false
}

dano_player(2)