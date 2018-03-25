/// @description Insert description here
// You can write your code in this editor
event_inherited();
var colonne1 = 525;
var colonne2 = 780;
var ligne1 = 120;
var ligne2 = 215;
var ligne3 = 310;
var ligne4 = 470;
biere_moins = instance_create_layer(x+colonne1,y+ligne1, "BoxButton", o_TWMinus);
biere_plus = instance_create_layer(x+colonne2, y+ligne1, "BoxButton", o_TWPlus_biere);
alcool_moins = instance_create_layer(x+colonne1, y+ligne2, "BoxButton", o_TWMinus);
alcool_plus = instance_create_layer(x+colonne2, y+ligne2, "BoxButton", o_TWPlus_biere);
cigare_moins = instance_create_layer(x+colonne1, y+ligne3, "BoxButton", o_TWMinus);
cigare_plus = instance_create_layer(x+colonne2, y+ligne3, "BoxButton", o_TWPlus_biere);
acheter = instance_create_layer(x+colonne1, y+ligne4, "BoxButton", o_Order);