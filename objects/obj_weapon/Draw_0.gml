if(sprite != -1){

draw_sprite_ext(sprite,image_index,weapon_x,weapon_y,1,image_yscale,weapon_dir,c_white,1);

}

var inst = instance_nearest(x,y,obj_weapon_drop);
if(instance_exists(inst) and distance_to_object(obj_weapon_drop)<=range){
	with (inst){
		draw_text_transformed(x, y - 5, "Mouse Botão Direito",0.7,0.7,0);
	}
}