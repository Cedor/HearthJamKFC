var town = instance_find(o_Town,0);

var i, tile;

var barValue = 0
var danger =0;
var pathlength =0;
var wareValue = 0;

for (i = 0; i < instance_number(o_TileBar); i += 1)
{
	tile= instance_find(o_TileBar,i);
	if (tile.selected)
	{
		barValue++;
	}
}

for (i = 0; i < instance_number(o_TileBar); i += 1)
{
	tile= instance_find(o_TileBar,i);
	if (tile.selected)
	{
		wareValue++;
	}
}
if (barValue == 0 or wareValue == 0)
{
	score_path(town, 0, 0, 0, 0);
	return -1;
}


var policeArray;
var k=0;
for (i = 0; i < instance_number(o_TilePolice); i += 1)
{
	tile= instance_find(o_TilePolice,i);
	if (tile.danger > 0)
	{
		policeArray[k++] = tile;
	}
}
var nbPolice = k;

for (i = 0; i < instance_number(o_TileRoad); i += 1)
{
	tile= instance_find(o_TileRoad,i);
	if (tile.selected)
	{
		pathlength++;
		for (var j = 0; j < nbPolice; j++)
		{
			var dist = (tile.map_x - policeArray[j].map_x)*(tile.map_x - policeArray[j].map_x)+(tile.map_y - policeArray[j].map_y)*(tile.map_y - policeArray[j].map_y);
			var dandist = policeArray[j].danger*policeArray[j].danger;
			if (dist<dandist)
			danger++;
		}
	}
}

score_path(town, pathlength, barValue, wareValue, danger)

