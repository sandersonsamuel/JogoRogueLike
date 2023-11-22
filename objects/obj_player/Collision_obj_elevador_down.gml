if keyboard_check_pressed(ord("S")) and pegou_chave and pegou_arma{
	x = obj_elevador_down_box.x
	y = obj_elevador_down_box.y
}

if keyboard_check_pressed(ord("S")) and !pegou_chave{
	 var _npc =  instance_nearest(x,y, obj_par_npcs);
	 var _dialogo = instance_create_layer(x,y, "Dialogo", obj_dialogo );
	 _dialogo.npc_nome = _npc.nome;
}

if keyboard_check_pressed(ord("S")) and !pegou_arma{
	 var _npc =  instance_nearest(x,y, obj_par_npcs);
	 var _dialogo = instance_create_layer(x,y, "Dialogo", obj_dialogo );
	 _dialogo.npc_nome = _npc.nome;
}
