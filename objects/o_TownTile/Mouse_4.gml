/// @description Insert description here
// You can write your code in this editor
var top = get_obj_on_top(mouse_x,mouse_y);
if (top != self)
	return;
//town = instance_find(o_Town, 0);
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
		if ((town.gd_Map[map_x-1,map_y]).selected or (town.gd_Map[map_x+1,map_y]).selected
			or (town.gd_Map[map_x,map_y-1]).selected or (town.gd_Map[map_x,map_y+1]).selected)
			{
				selected = true;
				town.selected = town.selected +1;
			}
	}
}