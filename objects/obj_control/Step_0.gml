
passa_level()


if(keyboard_check_released(vk_escape)){

global.pause = !global.pause;

}



if(global.pause){

	if(instance_exists(obj_inimigo) and instance_exists(obj_esqueleto)){
			with(obj_inimigo and obj_esqueleto)
			{
				veloc = 0;
				image_speed = 0;
				
			}
	}

}

with(all)
{
	depth = bbox_bottom;
}