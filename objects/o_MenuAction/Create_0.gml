/// @description Insert description here
// You can write your code in this editor
//var d =o_BtAction.sprite_height;
var d = o_BtAction.sprite_height
var nbRessources = 4
var ressources = array_create(nbRessources);
ressources[0] = o_Recruit;
ressources[1] = o_BtAction;
ressources[2] = o_BtAction;
ressources[3] = o_BtAction;
for (var i = 0 ; i < nbRessources; i++)
{
	instance_create_depth(x+1,y+d*i,0,ressources[i]);
}
