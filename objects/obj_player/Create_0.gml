velh = 0
velv = 0
velocidade = 5
move_dir = 0
vida = 5

pegou_arma = false

alpha = 0
color = c_white

elevador_em_movimento = false;

//ocultando setinha
window_set_cursor(cr_none)

//criando a arma
minha_arma = instance_create_layer(x,y, "armas", obj_arma)
minha_arma.arma_id = self

audio_play_sound(MUSIQUINHA8BITSFAMICON, 1, true, 0.08)


