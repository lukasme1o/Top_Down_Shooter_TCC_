if(global.pause) {
exit;

}


#region Codigo principal

	switch(estado){
	case "parado":
		if(instance_exists(obj_player)){
		var range = 250;
		var linha = collision_line(x,y,obj_player.x,obj_player.y, obj_parede,false, false);
		if(distance_to_object(obj_player) <= range and !linha){
			//Seguir Jogador
			estado = "seguindo_jogador";
		}
		}
		
	break;
	
	case "seguindo_jogador": 
	if(instance_exists(obj_player)){
	sprite_index = spr_morte_andando;
	target_x = obj_player.x;
	target_y = obj_player.y;
	
	}
	mp_potential_step_object(target_x, target_y, 1.5, obj_parede);
	
	if(instance_exists(obj_player)){
		
		if(obj_player.x > x)
		{
			image_xscale = 1;
		}
		else if(obj_player.x < x)
		{
			image_xscale = -1;
		}
	}
	break;
	
	}
#endregion
	
hit_alpha = lerp(hit_alpha,0,0.1);



if (life <= 0){

	var morre = instance_create_depth(x,y,depth,obj_inimigo_morte);
		morre.image_xscale = image_xscale;
		morre.sprite_index = spr_morte_esqueleto;
		audio_play_sound(sns_morte, 1,false);
		instance_destroy();
		global.shake = 20;
	
}





