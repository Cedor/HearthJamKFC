/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

guys = instance_find(o_Guys_lvl1,0);

if guys.quantity > 0
	{
		guys.quantity--;
		guys = instance_find(o_Guys_lvl2,0);
		guys.quantity++;
	}
