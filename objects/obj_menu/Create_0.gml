
var _best = 0;
_best = global.contaSalas;
var _inimigos_mortos = global.inimigosMortes;

options = ["Jogar", "Controles", "Best: "+ string(_best),"Inimigos Mortos: " + string(_inimigos_mortos), "Sair"];
op_max = array_length(options);
index = 0;



global.musica = true;

if(global.musica == true)
{
	audio_play_sound(sn_musicDeFundo, 10, true);
}