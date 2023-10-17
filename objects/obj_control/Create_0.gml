font_pixel = font_add_sprite_ext(spr_gameFonte, "!,./0123456789:;=?ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz~ÇéâàçéîìÉôóûí", true, 0);

draw_set_font(font_pixel);


global.contaSalas = 0;
global.best = global.contaSalas;



passa_level = function(){


var _qtd_inimigos = instance_number(obj_inimigo);
var _qtd_inimigos_esqueletos = instance_number(obj_esqueleto);

	

	if(_qtd_inimigos <= 0 and _qtd_inimigos_esqueletos <=0)
	{
		
	global.contaSalas++;
	
	global.best = global.contaSalas;
	room_restart();	
	}	
}



global.pause = false;

desenha_pause = function(){

	var _w = display_get_gui_width();
	var _h = display_get_gui_height();
	draw_set_alpha(.5)
	draw_rectangle_color(0,0, _w, _h, c_black,c_black,c_black,c_black, false);
	draw_set_alpha(1);

}

if (room == rm_inicio)
{
    audio_play_sound(sn_musicdeFundo, 100, 200);
}




