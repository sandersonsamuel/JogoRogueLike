if (instance_exists(target)){
		
		x = lerp(x, target.x - cam_largura/2, cam_veloc)
		y = lerp(y, target.y - cam_altura/2, cam_veloc)
		
		x = clamp(x,0, room_width - cam_largura)
		y = clamp(y,0, room_height - cam_altura)
		
		camera_set_view_pos(view_camera[0],x,y)
	
}else{
	target= -1
}

if keyboard_check(vk_control) + (keyboard_check(ord("w"))){
	game_end()
}

if !instance_exists(obj_player){
	show_message("Você Perdeu!")
	game_end()
}