persistent = true;
hveloc = -1;
vveloc = -1;
veloc = 3;
move_dir = 0;
estado = scr_player_andando;
my_weapon = instance_create_layer(x,y, "Weapons", obj_weapon);
my_weapon.weapon_id = self;



max_vida = 100;
vida = max_vida;
hit_alpha = 0;




