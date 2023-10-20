//Altura e Largura da camêra
cam_largura = camera_get_view_width(view_camera[0]);
cam_altura = camera_get_view_height(view_camera[0]);

//Velocidade que a camêra movimenta
cam_veloc = 0.1;

//Segue o objeto player
target = obj_player;