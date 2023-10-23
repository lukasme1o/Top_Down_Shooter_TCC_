passa_level = function(){

//Conta Inimigos na sala
var _qtd_inimigos = instance_number(obj_inimigo);
var _qtd_inimigos_esqueletos = instance_number(obj_esqueleto);
var _qtd_inimigos_sangue = instance_number(obj_inimigo_sangue);
var _qtd_inimigos_conhecimentos = instance_number(obj_inimigo_conhecimento);

	
	//Verifica se tem inimigos na sala
	if(_qtd_inimigos <= 0 and _qtd_inimigos_esqueletos <=0 and _qtd_inimigos_sangue <= 0 and _qtd_inimigos_conhecimentos <=0)
	{
	
	//Adiciona na variavél global
	global.contaSalas++;
	//Reinicia a sala
	room_restart();	
	}	
	
}




//Desenhar o Pause
desenha_pause = function(){

	var _w = display_get_gui_width();
	var _h = display_get_gui_height();
	draw_set_alpha(.5)
	draw_rectangle_color(0,0, _w, _h, c_black,c_black,c_black,c_black, false);
	draw_set_alpha(1);
	
	

}





