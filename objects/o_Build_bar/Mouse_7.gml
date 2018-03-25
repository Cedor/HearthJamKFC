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