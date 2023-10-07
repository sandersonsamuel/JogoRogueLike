if (global.pause){
	speed = 0
	exit
}

if (global.pause) exit

if instance_exists(obj_player){
	var dir = point_direction(x,y, obj_player.x, obj_player.y)
	move_towards_point(obj_player.x, obj_player.y, speed)
}

if vida == 0{
	instance_destroy()
}

image_angle += 10