/// @description Insert description here
// You can write your code in this editor
gd_Map = ds_grid_create(townWidth,townHeight);
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
		case 4:
			gd_Map[i,j] = instance_create_depth(x+i*global.SPRITESIZE, y+j*global.SPRITESIZE, 10, o_TileRoad );
			break;
		default:
			gd_Map[i,j] = instance_create_depth(x+i*global.SPRITESIZE, y+j*global.SPRITESIZE, 10, o_TileNeutral );
		}
		gd_Map[i,j].town = self;
		gd_Map[i,j].map_x = i;
		gd_Map[i,j].map_y = j;
	}
}
for(i = 0;i<townWidth;i++){
	for (j=0;j<townHeight;j++){
		if (gd_Map[i,j].object_index == o_TileRoad)
		{
			var vl = false;
			var vr = false;
			var vt = false;
			var vb = false;
			if ( i > 0 )
			{
				if ( o_TileRoad == gd_Map[i-1,j].object_index )
				{
					vl = true;
				}
			}
			if (i < townWidth-1)
			{
				vr = ( o_TileRoad == gd_Map[i+1,j].object_index);
			}
				if ( j > 0 )
			{
				vt = ( o_TileRoad == gd_Map[i,j-1].object_index);
			}
			if (j < townHeight-1)
			{
				vb = ( o_TileRoad == gd_Map[i,j+1].object_index);
			}
			
			
			if (vr == true && vl == true && vt == true && vb == true)
			{
				gd_Map[i,j].sprite_index = s_Road_crossover;
			}
			else if (vr == true && vl == true && vt == false && vb == false)
			{
				gd_Map[i,j].sprite_index = s_Road_horizontal;
			}
			else if (vr == false && vl == false && vt == true && vb == true)
			{
				gd_Map[i,j].sprite_index = s_Road_vertical;
			}
			else if (vr == true && vl == false && vt == true && vb == false)
			{
				gd_Map[i,j].sprite_index = s_Road_top_to_right;
			}
			else if (vr == false && vl == true && vt == true && vb == false)
			{
				gd_Map[i,j].sprite_index = s_Road_top_to_left;
			}
			else if (vr == false && vl == true && vt == false && vb == true)
			{
				gd_Map[i,j].sprite_index = s_Road_bottom_to_left;
			}
			else if (vr == true && vl == false && vt == false && vb == true)
			{
				gd_Map[i,j].sprite_index = s_Road_bottom_to_right;
			}
			else if (vr == true && vl == true && vt == false && vb == true)
			{
				gd_Map[i,j].sprite_index = s_Road_bottom_left_right;
			}
			else if (vr == true && vl == true && vt == true && vb == false)
			{
				gd_Map[i,j].sprite_index = s_Road_left_top_right;
			}
			else if (vr == true && vl == false && vt == true && vb == true)
			{
				gd_Map[i,j].sprite_index = s_Road_bottom_top_right;
			}
			else if (vr == false && vl == true && vt == true && vb == true)
			{
				gd_Map[i,j].sprite_index = s_Road_bottom_left_top;
			}
			else if (vr == false && vl == false && vt == false && vb == true)
			{
				gd_Map[i,j].sprite_index = s_Road_deadend_bottom;
			}
			else if (vr == false && vl == false && vt == true && vb == false)
			{
				///reprendre
				gd_Map[i,j].sprite_index = s_Road_deadend_top;
			}
			else if (vr == false && vl == true && vt == false && vb == false)
			{
				///reprendre
				gd_Map[i,j].sprite_index = s_Road_deadend_left;
			}
			else if (vr == true && vl == false && vt == false && vb == false)
			{
				///reprendre
				gd_Map[i,j].sprite_index = s_Road_deadend_right;
			}
			else
			{
				gd_Map[i,j].sprite_index = s_Neutral;
			}
		}
	}
}