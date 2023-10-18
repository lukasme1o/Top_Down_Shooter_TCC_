if(global.pause) {
hveloc = 0;
vveloc = 0;
exit;

}


script_execute(estado);


#region Dropar e Pegar Arma

		with(my_weapon){
		
		var mb;
		var key_drop = mouse_check_button_pressed(mb_right);
	
		if(automatic){
			mb= mouse_check_button(mb_left);
		}else{
			mb = mouse_check_button_pressed(mb_left);
		}
	
		weapon_dir = point_direction(x, y, mouse_x, mouse_y );
		if(mb){
		atirar();
		}
	
		if(key_drop and weapon != 0 ){
			weapon_drop();
		}
		else if (key_drop and weapon == 0){
			weapon_pickup();
		}
	}
	
#endregion

if !persistent
{
    persistent = true;
}