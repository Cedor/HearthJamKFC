/// @description Insert description here
// You can write your code in this editor
draw_self();
if action = true
	{
		draw_sprite(s_Highlight, image_index, x, y);
		draw_sprite(s_Highlight, image_index, x+32, y);
		draw_sprite(s_Highlight, image_index, x, y+32);
		draw_sprite(s_Highlight, image_index, x+32, y+32);
	}