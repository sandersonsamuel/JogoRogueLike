if (global.pause){
	speed = 0
	exit
}

if (global.pause) exit

if place_meeting(x,y,obj_inimigo) or place_meeting(x,y,obj_parede) or place_meeting(x,y,obj_boomberang) or place_meeting(x,y,obj_boomberang_batebate){
	part_emitter_region(sistema, emissor, x, x, y, y, ps_shape_ellipse, ps_distr_gaussian)
	part_emitter_burst(sistema, emissor, tipo, 50)
	instance_destroy()
	 
}

if (!global.pause) {
    
    speed = 10
    direction = original_direction
} else {

    speed = 0
}