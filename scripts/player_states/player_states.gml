function player_states_free(){
	//verificando teclas
	var cima = keyboard_check(ord("W"))
	var baixo = keyboard_check(ord("S"))
	var esquerda = keyboard_check(ord("A"))
	var direita = keyboard_check(ord("D"))

	var teclas = direita - esquerda != 0 or baixo - cima != 0

	//fazendo a movimentação
	move_dir = point_direction(0,0, direita-esquerda, baixo - cima)

	velh =	lengthdir_x(velocidade  * teclas, move_dir)
	velv = lengthdir_y(velocidade * teclas, move_dir)
	
	if(mouse_check_button(mb_right) and dash and pd_dash){
		pd_dash = false
		alarm[0] = dash_delay
		dash_dir = point_direction(x,y, mouse_x, mouse_y)
		velh =0
		velv = 0
		state = player_states_dash
	}

	x+=velh
	y+= velv

	if cima {
		if place_meeting(x+velh,y,obj_parede){
			sprite_index = spr_maike_parado_strip2
		}else{
			sprite_index = sprite_maike_subindo_strip3
		}
	}
	if baixo {
		if place_meeting(x+velh,y,obj_parede){
			sprite_index = spr_maike_parado_strip2
		}else{
			sprite_index =sprite_maike_descendo_strip3
		}
	}
	if esquerda {
		image_xscale = -3
		if place_meeting(x+velh,y,obj_parede){
			sprite_index = spr_maike_parado_strip2
		}else{
			sprite_index = spr_mike_correndo_strip3
		}
	}
	if direita {
	
		image_xscale = 3
		if place_meeting(x,y,obj_parede){
			sprite_index = spr_maike_parado_strip2
		}else{
			sprite_index = spr_mike_correndo_strip3
		}
	}
	if velh == 0 and velv == 0{
		sprite_index = spr_maike_parado_strip2
	}

	var mouse_dir = point_direction(x,y,mouse_x, mouse_y)
	var intervalo  = mouse_dir == clamp(mouse_dir, 90, 270)

	if intervalo{
		image_xscale = -3
	}else{
			image_xscale = 3
		}
}

function player_states_dash(){
	
	
	velh = lengthdir_x(dash_force, dash_dir)
	velv = lengthdir_y(dash_force, dash_dir)
	
	dash_time ++
	if (dash_time >= dash_dist){
		dash_time = 0
		velh = 0
		state = player_states_free
	}
	
	x+=velh
	y+= velv
}