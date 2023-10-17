
draw_self();
var text = "Olá, para poder jogar o paranormal world, é muito simples. Para se movimentar, aperte as teclas W,S,D,A. Para poder atirar e derrotar seus inimigos, aperte o botão esquerdo do mouse, e para dropar a arma e pegar aperte o botão direito do mouse. Se divirta com meu jogo" ; 
draw_text_ext_transformed_color(x + 20, y + 20, text, 50, 500, 2,2,0,c_white,c_white,c_white,c_white,1);


draw_set_font(fnt_pixel);

var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var x1 = gui_width/20;
var y1 = gui_height/24;
var margin = 50;
var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);

draw_set_halign(fa_center);
draw_set_valign(fa_center);




for(var i = 0; i < op_max; i++){

	var y2 = y1 + (margin * i);
	
	var string_w = string_width(options[i]);
	var string_h = string_height(options[i]);
	
	if(point_in_rectangle(m_x, m_y, x1 - string_w / 2, y2 - string_h /2, x1 + string_w / 2, y2 + string_h / 2 )){
		draw_set_color(c_red);
		index = i;
		if(mouse_check_button_pressed(mb_left)){
				if (index = 0){
					room_goto(rm_inicio);
				}

		}
		}else{
			draw_set_color(c_white);
		}
		
		draw_text_transformed(x1,y2,options[i], 2,2,0);
	
	
	}
	

