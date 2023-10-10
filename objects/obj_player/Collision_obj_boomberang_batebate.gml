if !global.pd_dano{
	
	if place_meeting(x,y,obj_boomberang_batebate){
		x -= 50 * sign(velh)
		y -= 50 * sign(velv)
		alpha = 1
	}
}

dano_player(1)