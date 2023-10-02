arma_dire = point_direction(x, y, mouse_x, mouse_y);

if arma_dire > 90 and arma_dire < 270{
	draw_sprite_ext(spr_arma2_strip2, image_index, arma_x, arma_y,2, -2, arma_dire, c_white, 1)
}else{
	draw_sprite_ext(spr_arma2_strip2, image_index, arma_x, arma_y,2, 2, arma_dire, c_white, 1)
}