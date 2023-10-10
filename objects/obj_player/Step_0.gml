if (global.pause){
	image_index = 0
	exit
}

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

if pegou_arma{
	with(minha_arma){
	arma_dire = point_direction(x, y, mouse_x, mouse_y)
	mb = mouse_check_button(mb_left) or keyboard_check(vk_space)	
	
	if(mb){
		atirar()
		obj_arma.image_speed = 5
	}else{
		obj_arma.image_speed = 0
		image_index = 0 
	}
	
	}
}


//Efeito de dano
if global.vida_player <= 0{
	instance_destroy()
} 

alpha = lerp(alpha, 0, 0.1)


#region Diálogo
if distance_to_object(obj_par_npcs) <= 10{
	if keyboard_check_pressed(ord("F")){
		var _npc =  instance_nearest(x,y, obj_par_npcs);
		var _dialogo = instance_create_layer(x,y, "Dialogo", obj_dialogo );
		_dialogo.npc_nome = _npc.nome;
		
	}
}

if (place_meeting(x,y, obj_inimigo) or (place_meeting(x,y,obj_boomberang_batebate))) and place_meeting(x,y,obj_parede){
	instance_destroy()
	alpha = 1
}

//sistema de piscar e ficar invulneravel no jogo
if global.pd_dano {
    global.pd_danoInterTime++;
    
    // Alterna a opacidade com um intervalo de tempo
    if (global.pd_danoInterTime % global.pd_danoInterval == 0) {
        if (image_alpha == 1) {
            image_alpha = 0;
        } else {
            image_alpha = 1;
        }
    }
    
    // Desativa a invencibilidade
    if global.pd_danoInterTime >= global.pd_danoTime {
        global.pd_dano = false;
        image_alpha = 1;
    }
}





