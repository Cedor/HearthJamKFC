/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_color(c_black)
draw_text(x,y,display_name)
var tet = "Countdown: ";
tet += string(countdown);
tet += " turns";
draw_text(x,y+12,tet);