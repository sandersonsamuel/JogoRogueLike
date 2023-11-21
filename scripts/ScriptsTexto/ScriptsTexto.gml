function scr_textos(){
	 switch npc_nome{
		case "Professor-1":
			ds_grid_add_text("Bem-vindo à aventura, jovem aprendiz!", 1 , "Professor" );
			ds_grid_add_text("Uau, estou dentro do computador!", spr_mike_rosto, 0 , "Mike" );
			ds_grid_add_text("Sim, você está prestes a embarcar em uma jornada incrível.", spr_face_professor, 1 , "Professor" );
			ds_grid_add_text("O que vou fazer aqui?", spr_face_mike, 0 , "Mike" );
			ds_grid_add_text("Você enfrentará desafios e inimigos, mas com o poder do Python, você os superará!", spr_face_professor, 1 , "Professor" );
			ds_grid_add_text("Python? O que é isso?", spr_face_mike, 0 , "Mike" );
			ds_grid_add_text("Python é uma linguagem de programação poderosa. Vamos testar seus conhecimentos!", spr_face_professor, 1 , "Professor" );
			ds_grid_add_text("Estou pronto para a aventura!", spr_face_mike, 0 , "Mike" );
			ds_grid_add_text("Professor: Ótimo! Que a jornada comece!", spr_face_professor, 1 , "Professor" );
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
