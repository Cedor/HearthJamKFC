/// @description Insert description here
// You can write your code in this editor

//Pyrate Begin
beer	= 0;
whiskey	= 0;
cigar	= 0;

parent	= noone;

m_close			= instance_create_layer(x + 487, y + 8, "Box", o_Close);

beer_minus		= instance_create_layer(x + 202, y + 37, "Box", o_Minus);
beer_plus		= instance_create_layer(x + 302, y + 37, "Box", o_Plus);

whiskey_minus	= instance_create_layer(x + 202, y + 75, "Box", o_Minus);
whiskey_plus	= instance_create_layer(x + 302, y + 75, "Box", o_Plus);

cigar_minus		= instance_create_layer(x + 202, y + 113, "Box", o_Minus);
cigar_plus		= instance_create_layer(x + 302, y + 113, "Box", o_Plus);

//Pyrate End
