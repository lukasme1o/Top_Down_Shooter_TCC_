//Pause do Jogo
if(global.pause) {
hveloc = 0;
vveloc = 0;
exit;

}



#region Codigo principal
	
	//Estado do Inimigo
	//Estado Parado
	switch(estado)
	{
	case "parado":
	if(instance_exists(obj_player))
	{
		//Pixel para começar a seguir o player
		var range = 150;
		
		//Desenhando Linha até o player
		var linha = collision_line(x,y,obj_player.x,obj_player.y, obj_parede,false, false);
			
			//Verificação
			if(distance_to_object(obj_player) <= range and !linha)
			{
				//Seguir Jogador
				estado = "seguindo_jogador";
			}
			
	}break;
	
	//Estado Seguidno Jogador
	case "seguindo_jogador": 
	//Verificação do Player existir
	if(instance_exists(obj_player))
	{
		//Sprite do Inimigo
		sprite_index = spr_energia_andando;
		target_x = obj_player.x;
		target_y = obj_player.y;
	}
	
	//Colidir com a parede
	mp_potential_step_object(target_x, target_y, 1.5, obj_parede);
	
	
	if(instance_exists(obj_player))
	{
		//Mudar a sprite de ângulo
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

//Faz voltar a cor normal do inimigo
hit_alpha = lerp(hit_alpha,0,0.1);

#region Inimigo Morre

	if (life <= 0)
	{
			global.inimigosMortes++;
			var morre = instance_create_depth(x,y,depth,obj_inimigo_morte);
			morre.image_xscale = image_xscale;
			morre.sprite_index = spr_energia_morte;
			audio_play_sound(sns_morte, 1,false);
			instance_destroy();
			global.shake = 20;
	}	
	
#endregion

