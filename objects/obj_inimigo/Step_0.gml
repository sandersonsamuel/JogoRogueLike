if global.pause{
	speed = 0
	exit
}


var offset_x = proj_counter * 25;
var offset_y = proj_counter * 10

//defininindo o alpha
alpha = lerp(alpha, 0, 0.1)


//condição de morte
if vida ==  0{
	instance_create_layer(x,y, "upgrades", obj_upgarde_speed_arma)
	instance_destroy()
} 

//se o personagem tomar 1 de dano, ou seja, o combate começar, os elevadores presentes no jogo se tornam infuncionais
if vida < vida_total{
	instance_deactivate_layer("elevadores")
	
	//timers incremetando a cada step
	move_time += 1/room_speed;
	py_logo_timer += 1/room_speed
	bate_bate_timer += 1/room_speed

	//dar uma paradinha antes de tacar os boomerangs
	if py_logo_timer > 5 and py_logo_timer < 6{
		move_veloc = 0
	}else{
		move_veloc = 2
	}

	//inimigo se mover na direção do personagem
	if instance_exists(obj_player){
		move_towards_point(obj_player.x, obj_player.y, move_veloc)
		direction = point_direction(x,y, obj_player.x, obj_player.y)
	}
	
	//a cada 10s o inimigo solta um boomerang em formato da logo do python
	if py_logo_timer  == 6 and  instance_exists(obj_player){
		var boome = instance_create_layer(x + offset_x, y + offset_y, "balas", obj_boomberang);
		boome.speed = 3.5;
		boome.original_direction = point_direction(x, y, obj_player.x, obj_player.y);
		boome.direction = boome.original_direction;
		py_logo_timer = 0;
	}
	
	//jogar boomerangs bate-bate a cada 20s
	if bate_bate_timer == 13{
		var boome_batebate = instance_create_layer(x + offset_x, y + offset_y, "balas", obj_boomberang_batebate)
		bate_bate_timer = 0
	}
	
}