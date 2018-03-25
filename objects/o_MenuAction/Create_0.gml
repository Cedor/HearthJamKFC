/// @description Insert description here
// You can write your code in this editor
//var d =o_BtAction.sprite_height;
var d = o_BtAction.sprite_width;
var nbRessources = 6;
var ressources = array_create(nbRessources);
ressources[0] = o_Recruit;
ressources[1] = o_Upgrade;
ressources[2] = o_Build_bar;
ressources[3] = o_Build_warehouse;
ressources[4] = o_Clean;
ressources[5] = o_Validate;
for (var i = 0 ; i < nbRessources; i++)
{
	instance_create_depth(x+d*i,y+650,0,ressources[i]);
}
