var vida_x = 32
var vida_y = 32
var diferenca = global.vida_player_total - global.vida_player 
draw_sprite(spr_heart_strip7,diferenca, vida_x,vida_y)

if (global.pause) {
	draw_sprite(spr_pause, image_index, meioh, meiov)
}