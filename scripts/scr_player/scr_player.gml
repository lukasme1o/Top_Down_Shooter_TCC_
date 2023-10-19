
function scr_player_andando(){

#region Movimentação

var direita = keyboard_check(ord("D"));
var esquerda = keyboard_check(ord("A"));
var cima = keyboard_check(ord("W"));
var baixo = keyboard_check(ord("S"));
var tecla  = direita - esquerda != 0 || baixo - cima !=0;

//Loop para Movimentação


if(hveloc != 0) image_xscale = sign(hveloc);

if(tecla !=0){
	sprite_index= spr_playerCorrendo;
	
}
else{
	sprite_index = spr_playerParado;
}

move_dir = point_direction(0,0, direita - esquerda, baixo - cima);

	hveloc = lengthdir_x(veloc * tecla, move_dir);
	vveloc = lengthdir_y(veloc * tecla, move_dir);
	
#endregion

#region Colisão
	

	if place_meeting(x + hveloc, y, obj_parede){
		while !place_meeting(x + sign(hveloc), y , obj_parede){
			x += sign(hveloc);
		}
		hveloc=0;
	}
	
	x += hveloc;
	
	vveloc = lengthdir_y(veloc * tecla, move_dir);
	
	if place_meeting(x, y  + vveloc, obj_parede){
		while !place_meeting(x, y + sign(vveloc), obj_parede){
			y += sign(vveloc);
		}
		vveloc=0;
	}
	y += vveloc;
	

#endregion


//Morte do Player
if (vida <= 0){

	var morre = instance_create_depth(x,y,depth,obj_player_morte);
		morre.image_xscale = image_xscale;
		morre.sprite_index = spr_mortePlayer;
		audio_play_sound(sn_playerMorte, 2, 0);
		game_restart();
		instance_destroy();
	
}

}



