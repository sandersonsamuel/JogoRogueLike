if inicializar == false{
	scr_textos();
	inicializar = true;
}


if mouse_check_button_pressed(mb_left){
	if caractere < string_length(texto_grid[# Infos.Texto, pagina]){
		caractere = string_length(texto_grid[# Infos.Texto, pagina]);
	}else{		
		if pagina < ds_grid_height(texto_grid ) - 1{
			alarm[0] = 1;
			caractere = 0;
			pagina++;
		}else{
			if op_num != 0{
				op_draw = true;
			}else{
			global.dialogo = false;
			instance_destroy();
			}
		}
	}
}
