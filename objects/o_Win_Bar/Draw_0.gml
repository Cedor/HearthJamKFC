/// @description Insert description here
// You can write your code in this editor
var colonne1 = 100;
var colonne2 = 150;
var colonne3 = 600;
var colonne4 = 660;
var colonne5 = 800;
var colonne6 = 860;
var ligne1 = 150;
var ligne2 = 250;
var ligne3 = 350;

var milieu = 32;

draw_self();
draw_set_color(c_white);
draw_text(colonne2,ligne1, refTile.biere);
draw_text(colonne2,ligne2, refTile.alcool);
draw_text(colonne2,ligne3, refTile.cigare);
draw_set_color(c_black);

draw_sprite(s_biere, 0, colonne1-milieu, ligne1-milieu);
draw_sprite(s_alcool, 0, colonne1-milieu, ligne2-milieu);
draw_sprite(s_cigare, 0, colonne1-milieu, ligne3-milieu);