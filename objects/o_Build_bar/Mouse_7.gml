/// @description Insert description here
// You can write your code in this editor
//on check qu'on a le droit de faire l'action
var act_ok = false;
var dollars = instance_find(o_Dollars,0);
var guys1 = instance_find(o_Guys_lvl1,0);
var guys2 = instance_find(o_Guys_lvl2,0);
var guys3 = instance_find(o_Guys_lvl3,0);
if (true
	)
{
	act_ok = true

}
else
{
	//On pete une erreur
}
var nbneutral = instance_number(o_TileNeutral);
var choix = irandom(nbneutral);
var oldtile = instance_find(o_TileNeutral, choix);
var toto = instance_create_layer(oldtile.x, oldtile.y, "Instances", o_TileBar);
// A CE MOMENT LA IL FAUT REMPLACER DANS LE TABLEAU
var town = oldtile.town;
town.gd_Map[oldtile.map_x, oldtile.map_y] = toto;
toto.map_x = oldtile.map_x;
toto.map_y = oldtile.map_y;
toto.town = town;
instance_destroy(oldtile);
end_turn()