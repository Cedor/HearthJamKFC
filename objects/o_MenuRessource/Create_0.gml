/// @description Insert description here
// You can write your code in this editor
var d =150;
var nbRessources = 8
var ressources = array_create(nbRessources);
ressources[0] = o_Dollars;
ressources[1] = o_CleanArs;
ressources[2] = o_Guys_lvl1;
ressources[3] = o_Guys_lvl2;
ressources[4] = o_Guys_lvl3;
ressources[5] = o_Satisfaction;
ressources[6] = o_Suspicion;
ressources[7] = o_PathScore;
for (var i = 0 ; i < nbRessources; i++)
{
	instance_create_layer(x+1+(d+2)*i,y+2,"Menu",ressources[i]);
}



