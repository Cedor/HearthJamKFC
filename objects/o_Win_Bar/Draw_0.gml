/// @description Insert description here
// You can write your code in this editor
var colonne1 = 400;
var colonne2 = 460;
var colonne3 = 600;
var colonne4 = 660;
var colonne5 = 800;
var colonne6 = 860;
var ligne1 = 150;

var milieu = 32;

draw_self();
draw_set_color(c_white);
draw_text(colonne2,ligne1, refTile.biere);
draw_text(colonne4,ligne1, refTile.alcool);
draw_text(colonne6,ligne1, refTile.cigare);
draw_set_color(c_black);

draw_sprite(s_biere, 0, colonne1-milieu, ligne1-milieu);
draw_sprite(s_alcool, 0, colonne3-milieu, ligne1-milieu);
draw_sprite(s_cigare, 0, colonne5-milieu, ligne1-milieu);