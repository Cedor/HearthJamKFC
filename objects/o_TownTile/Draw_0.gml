/// @description Insert description here
// You can write your code in this editor
//sprite_index = s_Road11
draw_self();
if (position_meeting(mouse_x, mouse_y, id)) {
  draw_sprite(s_Highlight, image_index, x, y);
}
else {
	if (selected == true)
	 draw_sprite(s_Selected, image_index, x, y);	
}