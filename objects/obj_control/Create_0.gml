passa_level = function(){


var _qtd_inimigos = instance_number(obj_inimigo);
var _qtd_inimigos_esqueletos = instance_number(obj_esqueleto);

	

	if(_qtd_inimigos <= 0 and _qtd_inimigos_esqueletos <=0)
	{
		
	global.contaSalas++;

	room_restart();	
	}	
	
}




desenha_pause = function(){

	var _w = display_get_gui_width();
	var _h = display_get_gui_height();
	draw_set_alpha(.5)
	draw_rectangle_color(0,0, _w, _h, c_black,c_black,c_black,c_black, false);
	draw_set_alpha(1);

}





