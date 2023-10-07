if !instance_exists(obj_livro_aberto) and keyboard_check_pressed(ord("E")){
    instance_create_layer(global.camera_x + global.meioh, global.camera_y + global.meiov, "livros_abertos", obj_livro_aberto);
    velocidade = 0;
} else if instance_exists(obj_livro_aberto) and keyboard_check_pressed(ord("E")) {
    instance_deactivate_object(obj_livro_aberto);
    velocidade = 5;
}