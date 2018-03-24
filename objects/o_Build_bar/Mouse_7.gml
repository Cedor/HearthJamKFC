if action = false and o_Build_warehouse.action = false
	{
		action = true;
	}
else
	{
		action = false;
	}
	
	// on decleche la fin de tour (c'est le parent qui gère)
event_inherited();