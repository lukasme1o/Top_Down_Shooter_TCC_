//Se o player estiver com arma
if(instance_exists(weapon_id)){
	
	//Colocar a arma na Player
	x = weapon_id.x;
	y = weapon_id.y;
	
	//Não deixar grudado arma no player
	weapon_x = x + lengthdir_x(16,weapon_dir);
	weapon_y = y + lengthdir_y(16,weapon_dir);

	//Ajustar o ângulo da arma
	image_angle = weapon_dir;
	
	//Se a arma for maior que 90 graus e menos que 270 graus, arma não muda a imagem
	if(image_angle >= 90 and image_angle <= 270)
	{
		image_yscale = -1;	
	
	}
	//Se não, muda o ângulo
	else
	{
		image_yscale = 1;
	}

	
	function atirar(){
	//Vamos Atirar
	
	//Se ele tiver com a arma(id), ele pode atirar
	if(!weapon>0){
		return false;
	}
	
	//Se não, ele não pode atirar
	if(!can_shoot){
		return false;
	}
	
	//Repetição para atirar
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
	
	//Recoil da Arma
	recoil = 8;
	can_shoot = false;
	//Delay da arma
	alarm[0] = proj_delay;

	
	}
	
	//Função dropa arma
	function weapon_drop(){
		//Se ele estiver com arma
		if(!weapon > 0 ){
			return false;
		}
		//cria a arma
		var inst = instance_create_layer(weapon_x, weapon_y , "Instances", drop);
		//Angulo da arma
		inst.image_angle = weapon_dir;
		inst.direction = weapon_dir;
		//Velocidade que ela sai da mão
		inst.speed = 3;	
		//Muda a arma para 0 = sem arma
		scr_mudar_arma(self, 0);
	}
	
	//Função pega arma
	function weapon_pickup(){
	var inst = instance_nearest(x,y,obj_weapon_drop);
		if(instance_exists(inst) and distance_to_object(obj_weapon_drop)<=range){
		scr_mudar_arma(self, inst.weapon_index);
		instance_destroy(inst);
		}
			
	}
	//Recoi da arma
	recoil= lerp(recoil,0,.1);

}

else
{
	//Destroi o objeto
	instance_destroy();
}

