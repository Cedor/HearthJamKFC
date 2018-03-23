/// @description Insert description here
// You can write your code in this editor
gd_Map = ds_grid_create(townWidth,50);
selected = 0;
//layer_tilemap_create(0,x,y,ts_Ville,townWidth*global.SPRITESIZE,townHeight*global.SPRITESIZE)
var i,j,type;
for(i = 0;i<townWidth;i++){
	for (j=0;j<townHeight;j++){
		gd_Map[i,j] = instance_create_depth(x+i*global.SPRITESIZE, y+j*global.SPRITESIZE, 0, o_TownTile);
		gd_Map[i,j].sprite_index = s_Road_crossover;
	}
}