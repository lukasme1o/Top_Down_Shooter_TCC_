x = mouse_x;
y = mouse_y;

//Check Padrão
if(mouse_y < 0 or mouse_x > 1280)
{
	image_blend = c_red;

}else 
{
	image_blend = c_white;
}


if(xprevious == x )
{
	invisible_Timer--;
	
	if(invisible_Timer<=0)
	{
	image_alpha -=0.05;
	}
	
}
else 
{
	image_alpha = 1;
	invisible_Timer = invisible_Time;
}
