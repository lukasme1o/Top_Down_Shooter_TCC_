//Pega a fonte
draw_set_font(fnt_pixel);
//Transforma a variavel em string
var salas_texto = string(round(global.contaSalas));
var morte_text = string(round(global.inimigosMortes))

//Pontuação
draw_text_transformed(150,55, "Salas Concluídas: " + salas_texto, 2,2,0);
draw_text_transformed(175,80, "Inimigos Derrotados: " + morte_text, 2,2,0);



#region Pause

//Escurecer a tela ao apertar pause
if(global.pause)
{
	
	desenha_pause()
	draw_set_font(fnt_pixel);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	var text = "Jogo Pausado"; 
	draw_text_ext(680, 393,text, 20, 300);
	
	
	
}

#endregion

if(instance_exists(obj_player))
{
	var _escala = 3;
	var _guia = display_get_gui_height() ;
	var _spra = sprite_get_height(spr_hud_vida) * _escala;
	var _huda = _guia - _spra;


	var _vida = obj_player.vida;
	var _maxvida = obj_player.max_vida;



	//Barra da Vida
	draw_sprite_ext(spr_hud_barra_vida, 0,20, _huda, (_vida/_maxvida) * _escala, _escala, 0, c_white, 1);


	//HUD
	draw_sprite_ext(spr_hud_vida, 0, 20, _huda, _escala, _escala, 0, c_white, 1);

}



