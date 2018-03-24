/// @description Insert description here
// You can write your code in this editor
var d =150;
var nbRessources = 3
var ressources = array_create(nbRessources);
ressources[0] = o_Dollars;
ressources[1] = o_CleanArs;
ressources[2] = o_Guys;
for (var i = 0 ; i < nbRessources; i++)
{
	instance_create_depth(x+1+(d+2)*i,y+2,0,ressources[i]);
}



