function scr_textos(){
	 switch npc_nome{
		case "Professor":
			ds_grid_add_text("Olá, quem é você?", spr_face_mike , 0 , "Aluno" );
			ds_grid_add_text("Olá me chamo Marcos, serei seu tutor nessa longa jornada", spr_face_professor, 1 , "Professor" );
			ds_grid_add_text("Vamos lá?", spr_face_professor, 1 , "Professor" );
			ds_grid_add_text("O que é a função print em python?", spr_face_professor, 1 , "Professor" );

				add_op("É usada para mostrar uma mensagem na tela",  "Resposta 1")
				add_op("É usada para digitar uma mensagem no teclado",   "Resposta 2")
				add_op("É usada para criar ou mudar uma variável",    "Resposta 3")
		break;
			case "Resposta 1":
				ds_grid_add_text("Resposta correta, Você acertou!!", spr_face_professor, 1 , "Professor" );
			break;
				case "Resposta 2":
				ds_grid_add_text("Resposta incorreta!", spr_face_professor, 1 , "Professor" );
			break;
			case "Resposta 3":
				ds_grid_add_text("Resposta incorreta!", spr_face_professor, 1 , "Professor" );
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
	
function add_op(_texto, _resposta){
	op[op_num] = _texto;
	
	op_resposta[op_num] = _resposta; 
	op_num++;
}
