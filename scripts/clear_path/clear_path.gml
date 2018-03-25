var town = instance_find(o_Town,0);

var i, tile;

for (i = 0; i < instance_number(o_TownTile); i += 1)
{
	tile= instance_find(o_TownTile,i);
	if (tile.selected)
	{
		tile.selected = false;
	}
}
town.selected = 0;
