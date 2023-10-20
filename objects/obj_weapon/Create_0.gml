#region Armas

//Sem Armas
armas[0]=ds_map_create();
ds_map_add(armas[0], "sprite", -1);
ds_map_add(armas[0],"proj",-1);
ds_map_add(armas[0],"proj_count",0);
ds_map_add(armas[0],"proj_spd",0);
ds_map_add(armas[0],"proj_damage",0);
ds_map_add(armas[0],"proj_delay",0);
ds_map_add(armas[0],"automatic",false);
ds_map_add(armas[0],"drop",-1);



//Pistola
armas[1] =ds_map_create();
ds_map_add(armas[1],"sprite",spr_pistol);
ds_map_add(armas[1],"proj",spr_projeteis);
ds_map_add(armas[1],"proj_count",1);
ds_map_add(armas[1],"proj_spd",10);
ds_map_add(armas[1],"proj_damage",5);
ds_map_add(armas[1],"proj_delay",1);
ds_map_add(armas[1],"automatic",false);
ds_map_add(armas[1],"drop",obj_pistolSolta);




//ShotGun
armas[2] =ds_map_create();
ds_map_add(armas[2],"sprite",spr_shotgun);
ds_map_add(armas[2],"proj",spr_projeteis);
ds_map_add(armas[2],"proj_count",3);
ds_map_add(armas[2],"proj_spd",10);
ds_map_add(armas[2],"proj_damage",10);
ds_map_add(armas[2],"proj_delay",60);
ds_map_add(armas[2],"automatic",false);
ds_map_add(armas[2],"drop",obj_shotgunSolta);

//Banana
armas[3] =ds_map_create();
ds_map_add(armas[3],"sprite",spr_banana);
ds_map_add(armas[3],"proj",spr_bananaProjeteis);
ds_map_add(armas[3],"proj_count",1);
ds_map_add(armas[3],"proj_spd",5);
ds_map_add(armas[3],"proj_damage",2);
ds_map_add(armas[3],"proj_delay",1);
ds_map_add(armas[3],"automatic",false);
ds_map_add(armas[3],"drop",obj_bananaSolta);

//Sniper
armas[4] =ds_map_create();
ds_map_add(armas[4],"sprite",spr_sniper);
ds_map_add(armas[4],"proj",spr_projetil_Sniper);
ds_map_add(armas[4],"proj_count",1);
ds_map_add(armas[4],"proj_spd",15);
ds_map_add(armas[4],"proj_damage",80);
ds_map_add(armas[4],"proj_delay",120);
ds_map_add(armas[4],"automatic",false);
ds_map_add(armas[4],"drop",obj_sniperSolta);

//Minigam
armas[5] =ds_map_create();
ds_map_add(armas[5],"sprite",spr_minigam);
ds_map_add(armas[5],"proj",spr_projeteis);
ds_map_add(armas[5],"proj_count",1);
ds_map_add(armas[5],"proj_spd",15);
ds_map_add(armas[5],"proj_damage",50);
ds_map_add(armas[5],"proj_delay",1);
ds_map_add(armas[5],"automatic",true);
ds_map_add(armas[5],"drop",obj_minigamSolta);

//Ak47 Ghost
armas[6] =ds_map_create();
ds_map_add(armas[6],"sprite",spr_akGhost);
ds_map_add(armas[6],"proj",spr_projeteis);
ds_map_add(armas[6],"proj_count",1);
ds_map_add(armas[6],"proj_spd",15);
ds_map_add(armas[6],"proj_damage",20);
ds_map_add(armas[6],"proj_delay",10);
ds_map_add(armas[6],"automatic",true);
ds_map_add(armas[6],"drop",obj_akGhost);

//Ak47 Serpent
armas[7] =ds_map_create();
ds_map_add(armas[7],"sprite",spr_akSerpente);
ds_map_add(armas[7],"proj",spr_projeteis);
ds_map_add(armas[7],"proj_count",1);
ds_map_add(armas[7],"proj_spd",15);
ds_map_add(armas[7],"proj_damage",10);
ds_map_add(armas[7],"proj_delay",1);
ds_map_add(armas[7],"automatic",false);
ds_map_add(armas[7],"drop",obj_akSerpert);

//Chave de Fenda
armas[8] =ds_map_create();
ds_map_add(armas[8],"sprite",spr_chaveDeFenda);
ds_map_add(armas[8],"proj",spr_chaveDeFendaProjetil);
ds_map_add(armas[8],"proj_count",1);
ds_map_add(armas[8],"proj_spd",20);
ds_map_add(armas[8],"proj_damage",1);
ds_map_add(armas[8],"proj_delay",1);
ds_map_add(armas[8],"automatic",false);
ds_map_add(armas[8],"drop",obj_chaveDeFendaSolta);

//Uzi
armas[9] =ds_map_create();
ds_map_add(armas[9],"sprite",spr_uzi);
ds_map_add(armas[9],"proj",spr_projeteis);
ds_map_add(armas[9],"proj_count",1);
ds_map_add(armas[9],"proj_spd",10);
ds_map_add(armas[9],"proj_damage",5);
ds_map_add(armas[9],"proj_delay",5);
ds_map_add(armas[9],"automatic",true);
ds_map_add(armas[9],"drop",obj_uziSolta);

//SniperLove
armas[10] =ds_map_create();
ds_map_add(armas[10],"sprite",spr_sniperLove);
ds_map_add(armas[10],"proj",spr_projetil_Sniper);
ds_map_add(armas[10],"proj_count",1);
ds_map_add(armas[10],"proj_spd",20);
ds_map_add(armas[10],"proj_damage",75);
ds_map_add(armas[10],"proj_delay",200);
ds_map_add(armas[10],"automatic",false);
ds_map_add(armas[10],"drop",obj_sniperLoveSolta);

//Matagua
armas[11] =ds_map_create();
ds_map_add(armas[11],"sprite",spr_matagua);
ds_map_add(armas[11],"proj",spr_projetil_matagua);
ds_map_add(armas[11],"proj_count",7);
ds_map_add(armas[11],"proj_spd",2);
ds_map_add(armas[11],"proj_damage",1);
ds_map_add(armas[11],"proj_delay",2);
ds_map_add(armas[11],"automatic",true);
ds_map_add(armas[11],"drop",obj_matagua);

//Espingarda
armas[12] =ds_map_create();
ds_map_add(armas[12],"sprite",spr_espingarda);
ds_map_add(armas[12],"proj",spr_projeteis);
ds_map_add(armas[12],"proj_count",3);
ds_map_add(armas[12],"proj_spd",10);
ds_map_add(armas[12],"proj_damage",5);
ds_map_add(armas[12],"proj_delay",10);
ds_map_add(armas[12],"automatic",false);
ds_map_add(armas[12],"drop",obj_espingarda);

#endregion

//Range para poder pegar a arma
range = 10;

//id da arma
weapon_id = -1;

//Direção quando você apontar
weapon_dir = -1;

//Arma no local x
weapon_x = 0;
//Arma no local y
weapon_y = 0;

//Se pode atirar
can_shoot = true;

//Recoil da arma variavel
recoil = 0;

//Função Muda Arma
scr_mudar_arma(self, 1);