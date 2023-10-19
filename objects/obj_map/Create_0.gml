cell_t = 32;
var size = 26;
room_width = cell_t * size;
room_height = room_width div 2;
cell_h = room_width div cell_t;
cell_v = room_height div cell_t;
grid = ds_grid_create(cell_h, cell_v);
ds_grid_clear(grid,0);
randomize();
var dir = irandom(5);
var xx = cell_h div 2;
var yy = cell_v div 2;
var chances = 1;

//Passos da Sala
var passos = 200;

//Player Spawn
player = false;

//Inimigos Máximos
var inimigo_maxEnergia = 5;
var inimigo_maxMorte = 10;

var armas_max = 1;
var chancesArmas = irandom(11);


var chao_index = 17;
norte = 1;
oeste = 2;
leste = 4;
sul = 8;

var tiles_layer = layer_tilemap_get_id("WallTiles")

//Mapa Procedural
for (var i = 0; i<passos; i+=1){
			
	if(irandom(chances) == chances){
		dir = irandom(3);
	}
	xx += lengthdir_x(1,dir * 90);
	yy +=lengthdir_y(1, dir * 90);
	
	xx = clamp(xx, 2,cell_h - 2);
	yy = clamp(yy, 2,cell_v - 2);
	
	grid[# xx,yy] = 1;
	
}


for(var xx = 0; xx < cell_h; xx ++){
	
	//Adiciona o tiles_map no mapa
	for(var yy = 0; yy<cell_v;yy++){
		if(grid[# xx,yy] == 0){
		  
		 var norte_t = grid[# xx,yy-1]== 0;
		 var oeste_t = grid[# xx - 1,yy] == 0;
		 var leste_t = grid[# xx + 1,yy] == 0;
		 var sul_t = grid[# xx,yy + 1] == 0;
		   
		   
		  var tile_index = norte_t * norte + oeste_t * oeste + leste_t * leste + sul_t * sul + 1;
		  tilemap_set(tiles_layer, tile_index, xx,yy);
		}
		else if(grid[#xx,yy]==1){
			  tilemap_set(tiles_layer,chao_index, xx,yy);
		}
	}


	for (var yy = 0 ; yy < cell_v; yy++){
		
		if(grid[# xx, yy] == 0){
			//Colocar parade
			instance_create_layer(xx * cell_t, yy *cell_t, "Instances", obj_parede);
		}	

		
		if(grid[# xx, yy] == 1){
			var x1 = xx *cell_t + cell_t/2;
			var y1 = yy *cell_t + cell_t/2;
			
	
			//Criar Objeto Player
			if(player = false){
			
			instance_create_layer(x1, y1, "Instances",obj_player_spawn);
			player = true;
			
			}
			
			
			//Criar Objetos inimigos 
			if (inimigo_maxEnergia > 0) {
			var chances = 5; 
			var dist = 250;
				if (irandom(chances) == chances and point_distance(x1 ,y1, obj_player.x, obj_player.y )	> dist) {
	
				instance_create_layer(x1, y1, "Instances", obj_inimigo);
				inimigo_maxEnergia -=1;
				}
			
			if (inimigo_maxMorte > 0) {
			var chances = 5; 
			var dist = 270;
				if (irandom(chances) == chances and point_distance(x1 ,y1, obj_player.x, obj_player.y )	> dist) {
	
					instance_create_layer(x1, y1, "Instances", obj_esqueleto);
					inimigo_maxMorte -=1;	
				}
			}
			
		#region Sorteio de Armas
			
			//Sorteio das armas e colocar elas
			if(armas_max > 0){
			var chances = 1;
			var dist = 50; 
			
				if (chancesArmas == 0)
				{
					if (irandom(chances) == chances and point_distance(x1 ,y1, obj_player.x, obj_player.y )	> dist) 
					{
					instance_create_layer(x1, y1, "Instances", obj_matagua);
					armas_max -= 1;
					}
				}
				
				if (chancesArmas == 1)
				{
					if (irandom(chances) == chances and point_distance(x1 ,y1, obj_player.x, obj_player.y )	> dist) 
					{
					instance_create_layer(x1, y1, "Instances", obj_pistolSolta);
					armas_max -= 1;
					}
				}	
				
				if(chancesArmas == 2)
				{
					if (irandom(chances) == chances and point_distance(x1 ,y1, obj_player.x, obj_player.y )	> dist) 
					{
					instance_create_layer(x1, y1, "Weapons", obj_shotgunSolta);
					armas_max -= 1;
					}
				}
				
				if(chancesArmas == 3)
				{
					if (irandom(chances) == chances and point_distance(x1 ,y1, obj_player.x, obj_player.y )	> dist) {
	
					instance_create_layer(x1, y1, "Weapons", obj_bananaSolta);
					
					armas_max -= 1;
					}
				}
				
				if(chancesArmas == 4)
				{
					if (irandom(chances) == chances and point_distance(x1 ,y1, obj_player.x, obj_player.y )	> dist) {
	
					instance_create_layer(x1, y1, "Weapons", obj_sniperSolta);
			
					armas_max -= 1;
					}
				}
				
				if(chancesArmas == 5)
				{
					if (irandom(chances) == chances and point_distance(x1 ,y1, obj_player.x, obj_player.y )	> dist) {
	
					instance_create_layer(x1, y1, "Weapons", obj_minigamSolta);
				
					armas_max -= 1;
					}
				}
				
				if(chancesArmas == 6)
				{
					if (irandom(chances) == chances and point_distance(x1 ,y1, obj_player.x, obj_player.y )	> dist) {
	
					instance_create_layer(x1, y1, "Weapons", obj_akGhost);
				
					armas_max -= 1;
					}
				}
				
				if(chancesArmas == 7)
				{
					if (irandom(chances) == chances and point_distance(x1 ,y1, obj_player.x, obj_player.y )	> dist) {
	
					instance_create_layer(x1, y1, "Weapons", obj_akSerpert);
				
					armas_max -= 1;
					}
				}
				
				if(chancesArmas == 8)
				{
					if (irandom(chances) == chances and point_distance(x1 ,y1, obj_player.x, obj_player.y )	> dist) {
	
					instance_create_layer(x1, y1, "Weapons", obj_chaveDeFendaSolta);
					
					armas_max -= 1;
					}
				}
				
				if(chancesArmas == 9)
				{
					if (irandom(chances) == chances and point_distance(x1 ,y1, obj_player.x, obj_player.y )	> dist) {
	
					instance_create_layer(x1, y1, "Weapons", obj_uziSolta);
				
					armas_max -= 1;
					}
				}
				
				if(chancesArmas == 10)
				{
					if (irandom(chances) == chances and point_distance(x1 ,y1, obj_player.x, obj_player.y )	> dist) {
	
					
					armas_max -= 1;
					}
				}
				
				if(chancesArmas == 11)
				{
					if (irandom(chances) == chances and point_distance(x1 ,y1, obj_player.x, obj_player.y )	> dist) {
	
					instance_create_layer(x1, y1, "Weapons", obj_sniperLoveSolta);
					
					armas_max -= 1;
					}
				}
				
			#endregion
				
			}
			
		}
	}		
}

}			
	


//Colisão das paredes
mp_grid_add_instances(grid,obj_parede, false);
