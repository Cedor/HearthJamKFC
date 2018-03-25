/// @description Insert description here
// You can write your code in this editor
var d = o_ReportFile.sprite_height
nbRessources = 5
var ressources = array_create(nbRessources);
ressources[0] = o_ReportDelivery;
ressources[1] = o_ReportWhite;
ressources[2] = o_ReportFile;
ressources[3] = o_ReportFile;
ressources[4] = o_ReportFile;
for (var i = 0 ; i < nbRessources; i++)
{
	instance_create_depth(x+1,y+d*i,0,ressources[i]);
}
