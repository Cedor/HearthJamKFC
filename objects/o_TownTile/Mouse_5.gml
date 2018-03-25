/// @description Insert description here
// You can write your code in this editor
if(win_available)
		{
			if(!win_open)
			{
				/*
				s_width = sprite_get_width(s_Box) / 2;
				s_height = sprite_get_height(s_Box) / 2;
	*/
				var inst = instance_create_layer(10, 10, "Box", win_obj);
				inst.refTile = self;
			}
		}