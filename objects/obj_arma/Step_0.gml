if (global.pause){exit}

if (instance_exists(arma_id)){
	x = arma_id.x
	y = arma_id.y
	
	arma_x = x + lengthdir_x(60, arma_dire)
	arma_y = y + lengthdir_y(60, arma_dire)
	
	image_angle = arma_dire
	
}else{
	instance_destroy()
}
//função para atirar

function atirar (){
	
	if(!pd_atirar){
		return false
	}
	if obj_player.pegou_arma == false{
		return false
	}
	
	
	var proj_bala = instance_create_layer(arma_x,arma_y, "balas", obj_bala)
	proj_bala.image_angle = arma_dire
	proj_bala.speed = 10
	proj_bala.direction = arma_dire
	pd_atirar = false
	alarm[0] = proj_delay
	proj_bala.image_xscale = 0.5
	proj_bala.image_yscale = 0.5
	
}
