if (place_meeting(x + hspd, y, obj_parede)) {
    hspd = -hspd; // Inverte a direção horizontal se colidir com obj_parede
}

if (place_meeting(x, y + vspd, obj_parede)) {
    vspd = -vspd; // Inverte a direção vertical se colidir com obj_parede
}

x += hspd; // Atualiza a posição horizontal
y += vspd; // Atualiza a posição vertical