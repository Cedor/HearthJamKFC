/// @description Insert description here
// You can write your code in this editor

guys = instance_find(o_Guys_lvl1,0);
guys.quantity++;

// on decleche la fin de tour (c'est le parent qui gère)
event_inherited();