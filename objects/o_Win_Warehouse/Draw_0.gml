/// @description Insert description here
// You can write your code in this editor
var colonne1 = 300;
var colonne2 = 730;
var ligne1 = 220;
var ligne2 = 320;
var ligne3 = 420;
draw_self();
draw_set_color(c_white);
//STOCK ACTUEL
draw_text(colonne1,ligne1, refTile.biere);
draw_text(colonne1,ligne2, refTile.alcool);
draw_text(colonne1,ligne3, refTile.cigare);
//DISPONIBLE A L'ACHAT
draw_text(colonne2,ligne1, refTile.biere_dispo);
draw_text(colonne2,ligne2, refTile.alcool_dispo);
draw_text(colonne2,ligne3, refTile.cigare_dispo);
draw_set_color(c_black);