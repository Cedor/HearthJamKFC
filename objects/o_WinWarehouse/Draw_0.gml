/// @description Insert description here
// You can write your code in this editor
//Pyrate Begin

draw_sprite(s_Box, 0, x, y);

draw_text( x + 57, y + 42, "Beer");
draw_text( x + 251, y + 42, string(beer));

draw_text( x + 57, y + 80, "Whiskey");
draw_text( x + 251, y + 80, string(whiskey));

draw_text( x + 57, y + 118, "Cigar");
draw_text( x + 251, y + 118, string(cigar));

draw_sprite(s_Close, 0, x + 487, y + 8);

// Beer
draw_sprite(s_Minus, 0, x + 202, y + 37);
draw_sprite(s_Plus, 0, x + 302, y + 37);

//Whiskey
draw_sprite(s_Minus, 0, x + 202, y + 75);
draw_sprite(s_Plus, 0, x + 302, y + 75);

//Cigar
draw_sprite(s_Minus, 0, x + 202, y + 113);
draw_sprite(s_Plus, 0, x + 302, y + 113);


//Pyrate End