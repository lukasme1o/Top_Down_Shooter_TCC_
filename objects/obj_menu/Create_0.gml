
var _best = 0;
_best = global.contaSalas;

options = ["Jogar", "Controles", "Best: "+ string(_best), "Sair"];
op_max = array_length(options);
index = 0;



global.musica = true;

if(global.musica == true)
{
	audio_play_sound(sn_musicDeFundo, 10, true);
}