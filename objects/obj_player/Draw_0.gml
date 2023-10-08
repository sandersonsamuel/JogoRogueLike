draw_self()

if alpha > 0{
	gpu_set_fog(true, color,0, 0 )
	draw_sprite_ext(sprite_index, image_index, x, y, 3,3,0, color, alpha)
	gpu_set_fog(false, color,0, 0 )
}

//desenhando o sprite da mira 

/*
if keyboard_check_pressed(ord("E")) and instance_exists(obj_livro_aberto){
	instance_deactivate_object(obj_livro_aberto)
}