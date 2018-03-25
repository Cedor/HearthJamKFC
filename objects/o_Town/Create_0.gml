/// @description Insert description here
// You can write your code in this editor
gd_Map = ds_grid_create(townWidth,townHeight);
selected = 0;
//layer_tilemap_create(0,x,y,ts_Ville,townWidth*global.SPRITESIZE,townHeight*global.SPRITESIZE)
var file = file_text_open_read("basic.txt");

var i,j,type;

for (j=0;j<townHeight;j++){
	var mapline  = file_text_read_string(file);
    file_text_readln(file);
	for(i = 0;i<townWidth;i++){
		var type = string_char_at(mapline, i+1);;
		switch(type)
		{
		case "b":
			gd_Map[i,j] = instance_create_depth(x+i*global.SPRITESIZE, y+j*global.SPRITESIZE, 10, o_TileBar);
			break;
		case "w":
			gd_Map[i,j] = instance_create_depth(x+i*global.SPRITESIZE, y+j*global.SPRITESIZE, 10, o_TileWarehouse);
			break;
		case "r":
			gd_Map[i,j] = instance_create_depth(x+i*global.SPRITESIZE, y+j*global.SPRITESIZE, 10, o_TileRoad );
			break;
		case "p":
			gd_Map[i,j] = instance_create_depth(x+i*global.SPRITESIZE, y+j*global.SPRITESIZE, 10, o_TilePolice );
			break;
		default:
			gd_Map[i,j] = instance_create_depth(x+i*global.SPRITESIZE, y+j*global.SPRITESIZE, 10, o_TileNeutral );
		}
		gd_Map[i,j].town = self;
		gd_Map[i,j].map_x = i;
		gd_Map[i,j].map_y = j;
	}
}
file_text_close(file);
for(i = 0;i<townWidth;i++){
	for (j=0;j<townHeight;j++){
		if (gd_Map[i,j].object_index == o_TileRoad)
		{
			var vl = false;var vlo = false;
			var vr = false;var vro = false;
			var vt = false;var vto = false;
			var vb = false;var vbo = false;
			var nbv=0;
			if ( i > 0 )
			{
				if ( o_TileRoad == gd_Map[i-1,j].object_index )
				{
					vl = true;
					nbv++;
				}
			}
			else
			{
				vlo = true;
			}
			if (i < townWidth-1)
			{
				if ( o_TileRoad == gd_Map[i+1,j].object_index )
				{
					vr = true;
					nbv++;
				}
			}
			else
			{
				vro = true;
			}
			if ( j > 0 )
			{
				if ( o_TileRoad == gd_Map[i,j-1].object_index )
				{
					vt = true;
					nbv++;
				}
			}
			else
			{
				vto = true;
			}
			if (j < townHeight-1)
			{
				if ( o_TileRoad == gd_Map[i,j+1].object_index )
				{
					vb = true;
					nbv++;
				}
			}
			else
			{
				vbo = true;
			}
			
			if (nbv==1)
			{
				vt = vt or vto;
				vb = vb or vbo;
				vl = vl or vlo;
				vr = vr or vro;
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