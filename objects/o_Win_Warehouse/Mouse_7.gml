
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
