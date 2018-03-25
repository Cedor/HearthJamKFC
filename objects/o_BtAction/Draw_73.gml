/// @description Insert description here
// You can write your code in this editor
if (position_meeting(mouse_x, mouse_y, id) && string_width(tipText)> 0) 
{
	draw_set_colour(c_gray);
	draw_set_alpha(0.85);
	draw_rectangle(x, y+72, x+sprite_width, y+sprite_height, false);
	draw_set_colour(c_black);
	var text_width  = string_width(tipText);
	var text_height = string_height(tipText);
	draw_text(x+sprite_width/2-text_width/2, y+77, tipText);
	//RESET COLOR & ALPHA
	draw_set_alpha(1);
}
