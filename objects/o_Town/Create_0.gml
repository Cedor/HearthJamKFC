/// @description Insert description here
// You can write your code in this editor
gd_Map = ds_grid_create(townWidth,50);
selected = 0;
//layer_tilemap_create(0,x,y,ts_Ville,townWidth*global.SPRITESIZE,townHeight*global.SPRITESIZE)
var i,j,type;
for(i = 0;i<townWidth;i++){
	for (j=0;j<townHeight;j++){
		var type = irandom(7);
		switch(type)
		{
		case 0:
			gd_Map[i,j] = instance_create_depth(x+i*global.SPRITESIZE, y+j*global.SPRITESIZE, 10, o_TileBar);
			break;
		case 1:
			gd_Map[i,j] = instance_create_depth(x+i*global.SPRITESIZE, y+j*global.SPRITESIZE, 10, o_TileWarehouse);
			break;
		case 2:
		case 3: 
			gd_Map[i,j] = instance_create_depth(x+i*global.SPRITESIZE, y+j*global.SPRITESIZE, 10, o_TileRoad);
		default:
			gd_Map[i,j] = instance_create_depth(x+i*global.SPRITESIZE, y+j*global.SPRITESIZE, 10, o_TileNeutral);
		}
		gd_Map[i,j].town = self;
	}
}