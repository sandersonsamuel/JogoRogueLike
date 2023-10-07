draw_self()

if alpha > 0{
	gpu_set_fog(true, color,0, 0 )
	draw_sprite_ext(sprite_index, image_index, x, y, 3,3,0, color, alpha)
	gpu_set_fog(false, color,0, 0 )
}

//desenhando o sprite da mira 
draw_sprite(spr_mira, 0, mouse_x, mouse_y)
draw_text(x-10, y - 32, string(global.vida_player));

if keyboard_check_pressed(ord("E")){
	if !instance_exists(obj_livro_aberto){
		instance_create_layer(global.camera_x + global.meioh, global.camera_y + global.meiov, "livros_abertos", obj_livro_aberto);
		velocidade = 0
	}else{
		instance_deactivate_object(obj_livro_aberto)
		velocidade = 5
	}
	
}/*
if keyboard_check_pressed(ord("E")) and instance_exists(obj_livro_aberto){
	instance_deactivate_object(obj_livro_aberto)
}