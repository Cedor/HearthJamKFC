/// @description Insert description here
// You can write your code in this editor
town = instance_find(o_Town, 0);
if (town.selected == 0)
{
	town.selected = 1
	selected = true
}
else
{
	if (selected)
	{
		selected = false;
		town.selected = town.selected -1;
	}
	else 
	{
		var x_t, y_t;
		x_t = mouse_x/global.SPRITESIZE;
		y_t= mouse_y/global.SPRITESIZE;
		if ((town.gd_Map[x_t-1,y_t]).selected or town.gd_Map[x_t+1,y_t].selected
			or town.gd_Map[x_t,y_t-1].selected or town.gd_Map[x_t,y_t+1].selected)
			{
				selected = true;
				town.selected = town.selected +1;
			}
	}
}