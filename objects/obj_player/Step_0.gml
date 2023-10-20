//Pause
if(global.pause)
{
	hveloc = 0;
	vveloc = 0;
	exit;
}

//Executar o script
script_execute(estado);


#region Dropar e Pegar Arma

		//Interação
		with(my_weapon){
		
		//Variavél mouse atira
		var mb;
		
		//Variavél mouse dropa e pega
		var key_drop = mouse_check_button_pressed(mb_right);
	
		//Se a arma é automatica, pode ficar segurando para atirar
		if(automatic)
		{
			mb= mouse_check_button(mb_left);
		}
		
		//Se não tem que clicar
		else
		{
			mb = mouse_check_button_pressed(mb_left);
		}
	
		//Direção da arma = mouse	
		weapon_dir = point_direction(x, y, mouse_x, mouse_y );
		
		//Se está sendo usado a tecla mouse direito
		if(mb)
		{
		atirar();
		}
	
		//Se arma for diferente de 0, pode dropar
		if(key_drop and weapon != 0 )
		{
			weapon_drop();
		}
		
		//Se a não tive com arma, pode pegar
		else if (key_drop and weapon == 0)
		{
			weapon_pickup();
		}
		
	}
	
#endregion

//Deixar player persistente
if !persistent
{
    persistent = true;
}


