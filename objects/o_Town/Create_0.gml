/// @description Insert description here
// You can write your code in this editor
gd_Map = ds_grid_create(townWidth,50);
selected = 0;
//layer_tilemap_create(0,x,y,ts_Ville,townWidth*global.SPRITESIZE,townHeight*global.SPRITESIZE)
var i,j,type;
for(i = 0;i<townWidth;i++){
	for (j=0;j<townHeight;j++){
		gd_Map[i,j] = instance_create_depth(x+i*global.SPRITESIZE, y+j*global.SPRITESIZE, 10, o_TownTile);
		gd_Map[i,j].town = self;
		type = irandom(7);
		switch (type)
		{
			case 1:
				gd_Map[i,j].sprite_index = s_Road_crossover;
				break;
			case 2:
				gd_Map[i,j].sprite_index = s_Road_top_to_left;
				break;
			case 3:
				gd_Map[i,j].sprite_index = s_Road_bottom_to_left;
				break;
			case 4:
				gd_Map[i,j].sprite_index = s_Road_bottom_left_right;
				break;
			case 5:
				gd_Map[i,j].sprite_index = s_Road_top_to_right;
				break;
			case 7:
				gd_Map[i,j].sprite_index = s_Road_vertical;
				break;
			case 8:
				gd_Map[i,j].sprite_index = s_Road_horizontal;
				break;
			default:
				gd_Map[i,j].sprite_index = s_Road_top_to_right;
		}
	}
}