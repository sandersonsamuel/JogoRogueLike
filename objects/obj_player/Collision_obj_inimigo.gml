if !global.pd_dano{
	
	if place_meeting(x,y,obj_inimigo){
		x -= 50 * sign(velh)
		y -= 50 * sign(velv)
	}
}

dano_player(3)

