image_xscale = 0.5
image_yscale = 0.5

sistema = part_system_create()
tipo = part_type_create()
emissor = part_emitter_create(sistema)
part_type_size(tipo, 1, 3, 0, 0)
part_type_speed(tipo, 2,3,0,0)
part_type_direction(tipo, 0, 359, 0, 0)
part_type_life(tipo, 5, 10)
part_type_color1(tipo, $00FFFF)