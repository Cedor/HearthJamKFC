/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_color(c_black)
var jump =30;
var text_width  = string_width(display_name);
var text_height = string_height(display_name);
draw_text(x+sprite_width/2-text_width/2, y+jump, display_name);



if (countdown>0)
{
	jump += text_height
	var tt = "Countdown: " + string(countdown) + " turns";
	text_width  = string_width(tt);

	draw_text(x+sprite_width/2-text_width/2,y+jump,tt);
}
else
{
	var i =1;
	var d = text_height;
	if(gain_dollars >0)
	{
		var tt = "$$$: " + string(gain_dollars);
		text_width  = string_width(tt);
		draw_text(x+sprite_width/2-text_width/2,y+jump+d*i,tt);
		i++
	}
	if(gain_cleanars >0)
	{
		var tt = "clean $$$: " + string(gain_cleanars);
		text_width  = string_width(tt);
		draw_text(x+sprite_width/2-text_width/2,y+jump+d*i,tt);
		i++
	}
	if(gain_guys1 >0)
	{
		var tt ="Kid: " + string(gain_guys1);
		text_width  = string_width(tt);
		draw_text(x+sprite_width/2-text_width/2,y+jump+d*i,tt);
		i++
	}
	if(gain_guys2 >0)
	{
		var tt =
		text_width  = string_width(gain_guys2);
		draw_text(x+sprite_width/2-text_width/2,y+jump+d*i,"Guys: " + string(gain_guys2));
		i++
	}
	if(gain_guys3 >0)
	{
		text_width  = string_width(gain_guys3);
		draw_text(x+sprite_width/2-text_width/2,y+jump+d*i,"BigGuys: " + string(gain_guys3));
		i++
	}
}
