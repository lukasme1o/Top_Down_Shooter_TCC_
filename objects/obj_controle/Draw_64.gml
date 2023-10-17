if(instance_exists(obj_player)){
var _escala = 3;
var _guia = display_get_gui_height() ;
var _spra = sprite_get_height(spr_hud_vida) * _escala;
var _huda = _guia - _spra;


var _vida = obj_player.vida;
var _maxvida = obj_player.max_vida;



//Barra da Vida
draw_sprite_ext(spr_hud_barra_vida, 0,0, _huda, (_vida/_maxvida) * _escala, _escala, 0, c_white, 1);


//HUD
draw_sprite_ext(spr_hud_vida, 0, 0, _huda, _escala, _escala, 0, c_white, 1);

}