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
		var voisin = false;
		if ( map_x > 0 )
		{
			voisin = voisin or (town.gd_Map[map_x-1,map_y]).selected;
		}
		if (map_x < town.townWidth-1)
		{
			voisin = voisin or (town.gd_Map[map_x+1,map_y]).selected;
		}
			if ( map_y > 0 )
		{
			voisin = voisin or (town.gd_Map[map_x,map_y-1]).selected;
		}
		if (map_x < town.townHeight-1)
		{
			voisin = voisin or (town.gd_Map[map_x,map_y+1]).selected;
		}
		if (voisin)
			{
				selected = true;
				town.selected = town.selected +1;
			}
	}
}