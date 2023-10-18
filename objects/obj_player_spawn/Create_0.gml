if instance_exists(obj_player)
{
	obj_player.x = x;
	obj_player.y = y;
}
else 
{
	instance_create_layer(x,y,layer,obj_player);
}
instance_destroy();