var dir = point_direction(x,y, obj_player.x, obj_player.y)
move_towards_point(obj_player.x, obj_player.y, speed)

if vida == 0{
	instance_destroy()
}