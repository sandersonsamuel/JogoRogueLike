function dano_player(dano){
	var contadorT = 0
	var contadorP = 0
	contadorP += 0.5/room_speed
	contadorT += 1/room_speed
	
	if contadorP %2 == 0{
		obj_player.image_alpha = 0 	
	}else{
		obj_player.image_alpha = 1
	}
	
	global.vida_player -= dano

}