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
	sprite_index = spr_maike_subindo_strip3
}
if baixo {
	sprite_index = spr_maike_descendo_strip3
}
if esquerda {
	sprite_index = spr_maike_correndo_horizontal_strip3
	image_xscale = -3
}
if direita {
	sprite_index = spr_maike_correndo_horizontal_strip3
	image_xscale = 3
}
if cima == 0 and baixo == 0 and esquerda == 0 and direita == 0{
	sprite_index = spr_maike_parado_frente_strip2
}

var mouse_dir = point_direction(x,y,mouse_x, mouse_y)
var intervalo  = mouse_dir == clamp(mouse_dir, 90, 270)

if intervalo{
	image_xscale = -3
}else{
	image_xscale = 3
}

with(minha_arma){
	arma_dire = point_direction(x, y, mouse_x, mouse_y)
	mb = mouse_check_button(mb_left) or keyboard_check(vk_space)	
	
	if(mb){
		atirar()
	}
	
}


//Efeito de dano
if vida ==  0{
	instance_destroy()
} 

alpha = lerp(alpha, 0, 0.1)






