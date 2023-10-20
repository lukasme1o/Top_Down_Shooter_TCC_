//Desenha sombra do inimigo
draw_sprite(spr_sombraEnergia,0,x,y + sprite_height/6);

//Desenha a sprite
draw_self();


//Desenha a cor ao tomar dano
if(hit_alpha > 0){
	gpu_set_fog(true, hit_color, 0,0);
	draw_sprite_ext(sprite_index,image_angle,x,y,image_xscale,image_yscale,0,hit_color,hit_alpha);
	gpu_set_fog(false, hit_color, 0,0);

}



