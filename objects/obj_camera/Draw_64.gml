var vida_x = 32
var vida_y = 32
var diferenca = global.vida_player_total - global.vida_player 
draw_sprite(spr_heart_strip7,diferenca, vida_x,vida_y)
var contador = 0
global.camera_x = camera_get_view_x(view_camera[0])
global.camera_y = camera_get_view_y(view_camera[0])
var gap =100

if (global.pause){
    var menu_x = global.camera_x + global.meioh;
    var menu_y = global.camera_y + global.meiov;
	
	if !instance_exists(obj_menu_pause){
		//criando o fundo do menu pause 
		instance_create_layer(menu_x, menu_y, "menu_pause", obj_menu_pause);
		
		//criando os botões do menu pause
		instance_create_layer(menu_x, menu_y - gap, "menu_buttons", obj_menu_resume);
		instance_create_layer(menu_x, menu_y, "menu_buttons", obj_menu_restart);
		instance_create_layer(menu_x, menu_y + gap, "menu_buttons", obj_menu_voltar_menu);
	}
}else{
	instance_deactivate_object(obj_menu_pause);
	instance_deactivate_layer("menu_buttons");
}
