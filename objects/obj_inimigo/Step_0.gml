if vida ==  0{
	instance_create_layer(x,y, "upgrades", obj_upgarde_speed_arma)
	instance_destroy()
} 

alpha = lerp(alpha, 0, 0.1)


if vida == vida_total - 1{
	instance_deactivate_layer("elevadores")
}

var offset_x = proj_counter * 25;
var offset_y = proj_counter * 10
	
if vida == vida_total * 0.80  and proj_counter <3 {
	var boome = instance_create_layer(x + offset_x, y + offset_y, "balas", obj_boomberang)
	boome.speed = 3
	boome.direction = point_direction(x,y, obj_player.x, obj_player.y)
	proj_counter += 1
}

if vida < vida_total *0.60 {
	speed = 3
	move_towards_point(obj_player.x, obj_player.y, speed)
	direction = point_direction(x,y, obj_player.x, obj_player.y)
}else{
	speed = 0
	image_alpha = 1
}
if vida == vida_total * 0.44 and boom_counter < 5{
	instance_create_layer(x,y, "balas", obj_boomberang_batebate)
	boom_counter += 1
}


