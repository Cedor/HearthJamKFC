/// @description Insert description here
// You can write your code in this editor
var colonne1 = 300;
var colonne2 = 730;
var colonne3 = 970;
var colonne4 = 1040;
var ligne1 = 220;
var ligne2 = 320;
var ligne3 = 420;
var ligne4 = 470;
draw_self();
draw_set_color(c_white);
//STOCK ACTUEL
draw_text(colonne1,ligne1, refTile.biere);
draw_text(colonne1,ligne2, refTile.alcool);
draw_text(colonne1,ligne3, refTile.cigare);
//COMMANDE
draw_text(colonne2,ligne1, refTile.biere_commande);
draw_text(colonne2,ligne2, refTile.alcool_commande);
draw_text(colonne2,ligne3, refTile.cigare_commande);
//DISPONIBLE A L'ACHAT
draw_text(colonne3,ligne1, refTile.biere_dispo);
draw_text(colonne3,ligne2, refTile.alcool_dispo);
draw_text(colonne3,ligne3, refTile.cigare_dispo);
//prix
draw_text(colonne4,ligne1, string(refTile.biere_prix)+ "$");
draw_text(colonne4,ligne2, string(refTile.alcool_prix)+ "$");
draw_text(colonne4,ligne3, string(refTile.cigare_prix)+ "$");
draw_text(colonne4,ligne4, string(refTile.cigare_prix)+ "$");
draw_set_color(c_black);