global.shake = 0; 

treme_tela = function()
{

	view_xport[0] = random_range(-global.shake, global.shake);
	view_yport[0] = random_range(-global.shake, global.shake);
	
	if global.shake > 0 {
		global.shake *= 0.5;
		
		if (global.shake <= 0.1) global.shake = 0;
		
	}

	

}