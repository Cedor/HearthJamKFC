/// @description Insert description here
// You can write your code in this editor
var colonne1 = 500;
var colonne2 = 575;
var ligne1 = 200;
var ligne2 = 275;
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