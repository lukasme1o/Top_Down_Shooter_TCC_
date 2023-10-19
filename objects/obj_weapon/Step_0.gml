if(instance_exists(weapon_id)){
	
	x = weapon_id.x;
	y = weapon_id.y;
	
	weapon_x = x + lengthdir_x(16,weapon_dir);
	weapon_y = y + lengthdir_y(16,weapon_dir);

	image_angle = weapon_dir;
	
	if(image_angle >= 90 and image_angle <= 270){
		image_yscale = -1;	
	
	}else{
		image_yscale = 1;
	}

	
	function atirar(){
	//Vamos Atirar
	
	if(!weapon>0){
		return false;
	}
	
	if(!can_shoot){
		return false;
	}
	
	
	for (var i = 0; i < proj_count; i++){
			var proj_inst = instance_create_layer(weapon_x,weapon_y , "Projeteis", obj_proj);
			proj_inst.sprite_index = proj;
			var dist = 6;
			var dir = weapon_dir + (dist * i);
			proj_inst.direction = dir;
			proj_inst.image_angle = dir;
			proj_inst.speed = proj_spd;
			proj_inst.damage = proj_damage;
			audio_play_sound(sns_somTiro,1,false);
		}
	
	can_shoot = false;
	alarm[0] = proj_delay;

	
	}
	
	function weapon_drop(){
		if(!weapon > 0 ){
			return false;
		}
		var inst = instance_create_layer(weapon_x, weapon_y , "Instances", drop);
		inst.image_angle = weapon_dir;
		inst.direction = weapon_dir;
		inst.speed = 3;		
		scr_mudar_arma(self, 0);
		show_debug_message("Armas no chão");
		
	}
	
	
	function weapon_pickup(){
	
	var inst = instance_nearest(x,y,obj_weapon_drop);
		if(instance_exists(inst) and distance_to_object(obj_weapon_drop)<=range){
		scr_mudar_arma(self, inst.weapon_index);
		instance_destroy(inst);
			
		}
	}

}else{
	instance_destroy();
}

