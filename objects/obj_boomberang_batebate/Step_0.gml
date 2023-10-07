if (global.pause){
	exit
	speed = 0
}

if (global.pause) exit
var num_spr_frames = sprite_get_number(obj_boomberang_batebate.sprite_index)

if (place_meeting(x + hspd, y, obj_parede)) {
    hspd = -hspd; // Inverte a direção horizontal se colidir com obj_parede
	image_index = random_range(0, num_spr_frames)
}

if (place_meeting(x, y + vspd, obj_parede)) {
    vspd = -vspd; // Inverte a direção vertical se colidir com obj_parede
	image_index = random_range(0, num_spr_frames)
}

x += hspd; // Atualiza a posição horizontal
y += vspd; // Atualiza a posição vertical