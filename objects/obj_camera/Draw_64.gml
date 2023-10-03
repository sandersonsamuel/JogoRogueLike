var vida_x = 32
var vida_y = 32
var diferenca = global.vida_player_total - global.vida_player 
draw_sprite(spr_heart_strip7,diferenca, vida_x,vida_y)

/*
switch global.vida_player {
	case 6:
		draw_sprite(spr_heart_strip7,0, vida_x,vida_y)
		break
	case 5:
		draw_sprite(spr_heart_strip7,1, vida_x,vida_y)
		break
	case 4:
		draw_sprite(spr_heart_strip7,2, vida_x,vida_y)
		break
	case 3:
		draw_sprite(spr_heart_strip7,3, vida_x,vida_y)
		break
	case 2:
		draw_sprite(spr_heart_strip7,4, vida_x,vida_y)
		break
	case 1:
		draw_sprite(spr_heart_strip7,5, vida_x,vida_y)
		break
	case 0:
		draw_sprite(spr_heart_strip7,6, vida_x,vida_y)
		break
}