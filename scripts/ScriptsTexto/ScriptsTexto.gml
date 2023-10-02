//ESSA FUNÇÃO VAI PEGAR O NOME DO OBJ E VAI RETRONAR OS TEXTOS.

function scr_textos(){
	 switch npc_nome{
		case "Professor":
			ds_grid_add_text("Olá, quem é você?", spr_fac_personagem, 0 , "Aluno" );
			ds_grid_add_text("Olá me chamo Marcos, serei seu tutor nessa longa jornada", spr_face_professor, 1 , "Professor" );
			ds_grid_add_text("Vamos lá?", spr_face_professor, 1 , "Professor" );
		break;
	 }
}

//ESSA FUNÇÃO VAI ADICIONAR LINHAS CONFORME O DIÁLOGO 
function ds_grid_add_row(){
	var _grid = argument[0];
	ds_grid_resize(_grid, ds_grid_width(_grid), ds_grid_height(_grid)+1);
	return (ds_grid_height(_grid)-1);
}

function ds_grid_add_text(){
	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);
	
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];


}