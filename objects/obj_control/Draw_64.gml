draw_set_font(fnt_pixel);
var salas_texto = string(round(global.contaSalas));

draw_text_transformed(150,55, "Salas Concluídas: " + salas_texto, 2,2,0);


#region Pause


//Escurecer a tela ao apertar pause
if(global.pause){
	desenha_pause()
}

#endregion



