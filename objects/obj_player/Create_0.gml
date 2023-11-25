velh = 0
velv = 0
velocidade = 5
move_dir = 0

state = player_states_free;

global.vida_player = 6
global.vida_player_total = global.vida_player

pegou_arma = false
pegou_chave = false

alpha = 0
color = c_white

elevador_em_movimento = false;

//criando a arma
minha_arma = instance_create_layer(x,y, "armas", obj_arma)
minha_arma.arma_id = self

audio_play_sound(MUSIQUINHA8BITSFAMICON, 1, true, 0.08)

pd_abrir_livro = false

//variáveis de dano
global.pd_dano = false
global.pd_danoTime = 60 * 2
global.pd_danoInterval = 10
global.pd_danoInterTime = 0

global.tomou_dano = false

//dash
dash = true
pd_dash = true
dash_delay = 30
dash_dir = 0
dash_force = 9
dash_time = 0 
dash_dist = 16



