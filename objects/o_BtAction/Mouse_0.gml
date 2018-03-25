/// @description Insert description here
// You can write your code in this editor
var i, winTile;
for (i = 0; i < instance_number(o_TileWindow); i += 1)
{
	winTile= instance_find(o_TileWindow,i);
	instance_destroy(winTile);
}
