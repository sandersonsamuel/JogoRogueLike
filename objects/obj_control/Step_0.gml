if (keyboard_check_pressed(vk_backspace)) {
    if (!display_get_fullscreen()) {
        display_set_fullscreen(true); // Ativa o modo de tela cheia
    } else {
        display_set_fullscreen(false); // Desativa o modo de tela cheia
    }
}
