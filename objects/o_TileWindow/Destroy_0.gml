/// @description Insert description here
// You can write your code in this editor

var i, tile;
tile = refTile
if (instance_exists(tile) && tile.selected ==true)
{
	tile.selected = false;
	tile.town.selected--;
}
instance_destroy(m_close);