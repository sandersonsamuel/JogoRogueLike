function scr_textos(){
	 switch npc_nome{
		case "Professor-1":
			ds_grid_add_text("Bem-vindo à aventura, jovem aprendiz!",spr_face_professor, 1 , "Professor" );
			ds_grid_add_text("Uau, estou dentro do computador!", spr_face_mike, 0 , "Mike" );
			ds_grid_add_text("Sim, você está prestes a embarcar em uma jornada incrível.", spr_face_professor, 1 , "Professor" );
			ds_grid_add_text("O que vou fazer aqui?", spr_face_mike, 0 , "Mike" );
			ds_grid_add_text("Você enfrentará desafios e inimigos, mas com o poder do Python, você os superará!", spr_face_professor, 1 , "Professor" );
			ds_grid_add_text("Python? O que é isso?", spr_face_mike, 0 , "Mike" );
			ds_grid_add_text("Python é uma linguagem de programação poderosa. Vamos testar seus conhecimentos com alguns quizes.", spr_face_professor, 1 , "Professor" );
			ds_grid_add_text("Algumas recompensas lhe aguardam!", spr_face_professor, 1 , "Professor" );
			ds_grid_add_text("Estou pronto para a aventura!", spr_face_mike, 0 , "Mike" );
			ds_grid_add_text("Ótimo! Que a jornada comece!", spr_face_professor, 1 , "Professor" );		
			break
		case "Professor-2":
			ds_grid_add_text("Responda corretamente o quiz e terá sua recompensa!",spr_face_professor, 1 , "Professor" );
			ds_grid_add_text("O que é a função print em python?",spr_face_professor, 1 , "Professor" );
				add_op("É usada para mostrar uma mensagem na tela",  "Resposta 1")
				add_op("É usada para digitar uma mensagem no teclado",   "Resposta 2")
				add_op("É usada para criar ou mudar uma variável",    "Resposta 3")
		break;
			case "Resposta 1":
				ds_grid_add_text("Resposta correta, Você acertou!!", spr_face_professor, 1 , "Professor" );
				obj_player.pegou_arma = true
				ds_grid_add_text("Parabéns, você desbloqueou sua pistola de água", spr_face_professor, 1 , "Professor" );
				ds_grid_add_text("Está pronto para derrotar os inimigos?", spr_face_professor, 1 , "Professor" );
				ds_grid_add_text("Explore as salas e encontre mais desafios!", spr_face_professor, 1 , "Professor" );
			break;
				case "Resposta 2":
				ds_grid_add_text("Resposta incorreta, tente novamente.", spr_face_professor, 1 , "Professor" );
			break;
			case "Resposta 3":
				ds_grid_add_text("Resposta incorreta,tente novamente.", spr_face_professor, 1 , "Professor" );
			break;
		case "Professor-3":
			ds_grid_add_text("Em Python, como você imprime a frase 'Olá, Mundo' no console?",spr_face_professor, 1 , "Professor" );
				add_op("show(Olá, Mundo!)",   "Resposta 5")
				add_op("display(Olá, Mundo!)",    "Resposta 6")
				add_op("print('Olá, Mundo!')",  "Resposta 4")
			break;
			
			case "Resposta 4":
				ds_grid_add_text("Resposta correta, você acertou!", spr_face_professor, 1 , "Professor" );
				ds_grid_add_text("Parabéns, você ganhou a chave que libera a sala do inimigo final!", spr_face_professor, 1 , "Professor" );
				instance_create_layer(obj_elevador_rigth_box.x+50,obj_elevador_rigth_box.y, "upgrades", obj_chave)
			break;
			
			case "Resposta 5":
				ds_grid_add_text("Resposta errada, Tente Novamente!", spr_face_professor, 1 , "Professor" );
			break;
			case "Resposta 6":
				ds_grid_add_text("Resposta errada, Tente Novamente", spr_face_professor, 1 , "Professor" );
			break;
			
			case "elevador":
				ds_grid_add_text("Você não coletou a chave ou ainda não conseguiu sua pistola d'agua!",spr_face_professor, 1 , "Professor" );
				ds_grid_add_text("Fale com o professor e ele te dará a resposta!",spr_face_professor, 1 , "Professor" );
					break;
			
			case "Professor-4":
				ds_grid_add_text("Ufa!!!!!",spr_face_professor, 1 , "Professor" ); 
				ds_grid_add_text("Você conseguiu derrotar o Lord Pythus, meus parabéns!!! Acho que você merece passar de ano.",spr_face_professor, 1 , "Professor" ); 
					break;
					
			case "livro":
				ds_grid_add_text("Na linguagem Python, uma função fundamental e comumente aprendida no início do aprendizado é a função print(). Essa função é utilizada para exibir uma mensagem na tela ou imprimir informações no console.",spr_livro1 ,1 , "Livro" );
				ds_grid_add_text("hmm, o que eu faço com esse informação?", spr_face_mike, 1 , "Mike" ); 
				ds_grid_add_text("Estranho...",spr_face_mike, 1 , "Mike" ); 
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
