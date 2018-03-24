/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var type = irandom(1);

switch(type)
	{
		case 0:
			sprite_index = s_Building;
			break;
		default:
			sprite_index = s_Neutral;
	}