draw_sprite(spr_sombraEnergia,0,x,y + sprite_height / 2);

draw_self();

if(hit_alpha > 0){
	gpu_set_fog(true, hit_color, 0,0);
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,hit_color,hit_alpha);
	gpu_set_fog(false, hit_color, 0,0);
}