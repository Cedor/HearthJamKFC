/// @description Insert description here
// You can write your code in this editor
if (o_Build_bar.action == true or o_Build_warehouse.action == true)
{
	var toto;
	if o_Build_bar.action == true
	{
		toto = instance_create_depth(x, y, 0, o_TileBar);
	}
	else
	{
		toto = instance_create_depth(x, y, 0, o_TileWarehouse);
	}
	//OU SUIS JE DANS LE TABLEAU
	toto.town = self.town;
	toto.map_x = self.map_x;
	toto.map_y = self.map_y;
	town.gd_Map[map_x, map_y] = toto;
	o_Build_bar.action = false;
	o_Build_warehouse.action = false;
	instance_destroy();
}