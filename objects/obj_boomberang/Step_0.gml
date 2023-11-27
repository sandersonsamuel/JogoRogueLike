if (global.pause){
	speed = 0
	exit
}

if instance_exists(obj_player){
	var dir = point_direction(x,y, obj_player.x, obj_player.y)
	move_towards_point(obj_player.x, obj_player.y, speed)
}else{
	instance_destroy()
}

if vida == 0{
	instance_destroy()
}

image_angle += 10


if (!global.pause) {

	if instance_exists(obj_player){
		speed = 3.5
		direction = point_direction(x, y, obj_player.x, obj_player.y)
	}
    
} else {
	if instance_exists(obj_player){
		speed = 0
		direction = original_direction
	}
}
