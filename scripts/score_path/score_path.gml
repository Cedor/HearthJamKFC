//score_path(town, pathlength, barValue, wareValue, danger)

var town = argument0;
var pathlength = argument1;
var barValue = argument2;
var wareValue = argument3;
var danger = argument4;

//LE SCORING
//town.pathScore = 50*barValue+10*wareValue-pathlength-danger;
var ressource= instance_find(o_PathScore,0);
ressource.quantity = 50*barValue+10*wareValue-pathlength-danger;