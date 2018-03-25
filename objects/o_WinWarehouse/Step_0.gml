/// @description Insert description here
// You can write your code in this editor

//Pyrate Begin
if (position_meeting(mouse_x, mouse_y, m_close))
{
	if (mouse_check_button_pressed(mb_left))
	{
		instance_destroy(beer_minus);
		instance_destroy(beer_plus);
		
		instance_destroy(whiskey_minus);
		instance_destroy(whiskey_plus);
		
		instance_destroy(cigar_minus);
		instance_destroy(cigar_plus);
		
		instance_destroy(m_close);
		var i, warehouse;
		for (i = 0; i < instance_number(o_TileWarehouse); i += 1)
		{
			warehouse= instance_find(o_TileWarehouse,i);
			if (warehouse.selected ==true)
			{
				warehouse.selected = false;
				warehouse.town.selected--;
			}
		}
		
		instance_destroy(self);
	}
}

// Beers
if (position_meeting(mouse_x, mouse_y, beer_minus))
{
	if (mouse_check_button_pressed(mb_left))
	{
		beer -= 1;
		parent.beer -= 1;
	}
	
}

if (position_meeting(mouse_x, mouse_y, beer_plus))
{
	if (mouse_check_button_pressed(mb_left))
	{
		beer += 1;
		parent.beer += 1;
	}
	
}

// Whiskey
if (position_meeting(mouse_x, mouse_y, whiskey_minus))
{
	if (mouse_check_button_pressed(mb_left))
	{
		whiskey -= 1;
		parent.whiskey -= 1;
	}
	
}

if (position_meeting(mouse_x, mouse_y, whiskey_plus))
{
	if (mouse_check_button_pressed(mb_left))
	{
		whiskey += 1;
		parent.whiskey += 1;
	}
	
}


// Cigars
if (position_meeting(mouse_x, mouse_y, cigar_minus))
{
	if (mouse_check_button_pressed(mb_left))
	{
		cigar -= 1;
		parent.cigar -= 1;
	}
	
}

if (position_meeting(mouse_x, mouse_y, cigar_plus))
{
	if (mouse_check_button_pressed(mb_left))
	{
		cigar += 1;
		parent.cigar += 1;
	}
	
}

//Pyrate End