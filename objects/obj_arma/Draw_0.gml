draw_sprite_ext(spr_new_pistol, image_index, arma_x, arma_y,escalax, escalay, arma_dire, c_white, 1)
// No evento Draw de obj_arma
arma_dire = point_direction(x, y, mouse_x, mouse_y);


// Verifique se a direção está na metade esquerda do círculo (entre 90 e 270 graus)
if arma_dire >= 90 && arma_dire <= 270 {
    // Inverta a escala no eixo Y
	x = arma_id.x -16
	image_yscale *= -1
}