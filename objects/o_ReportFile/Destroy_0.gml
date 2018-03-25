/// @description Insert description here
// You can write your code in this editor
var dollars = instance_find(o_Dollars,0);
var cleanars = instance_find(o_CleanArs,0);
var guys1 = instance_find(o_Guys_lvl1,0);
var guys2 = instance_find(o_Guys_lvl2,0);
var guys3 = instance_find(o_Guys_lvl3,0);
var satisfaction = instance_find(o_Satisfaction,0);
dollars.quantity+= gain_dollars;
cleanars.quantity+= gain_cleanars;
guys1.quantity += gain_guys1;
guys2.quantity += gain_guys2;
guys3.quantity += gain_guys3;
satisfaction.quantity += gain_satisfaction;