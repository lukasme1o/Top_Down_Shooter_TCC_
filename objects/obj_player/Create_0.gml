//Player persistente
persistent = true;

//Movimentação do Player
hveloc = -1;
vveloc = -1;
veloc = 3;
move_dir = 0;

//Estado de sprites
estado = scr_player_andando;

//Criando arma do player
my_weapon = instance_create_layer(x,y, "Weapons", obj_weapon);
my_weapon.weapon_id = self;


//Vida do Player
max_vida = 100;
vida = max_vida;
hit_alpha = 0;




