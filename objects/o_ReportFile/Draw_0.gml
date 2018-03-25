/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_color(c_black)
draw_text(x,y,display_name)
if (countdown>0)
{
	draw_text(x,y+12,"Countdown: " + string(countdown) + " turns");
}
else
{
	var i =1;
	var d = 12;
	if(gain_dollars >0)
	{
		draw_text(x,y+d*i,"$$$: " + string(gain_dollars));
		i++
	}
	if(gain_cleanars >0)
	{
		draw_text(x,y+d*i,"clean $$$: " + string(gain_cleanars));
		i++
	}
	if(gain_guys1 >0)
	{
		draw_text(x,y+d*i,"Kid: " + string(gain_guys1));
		i++
	}
	if(gain_guys2 >0)
	{
		draw_text(x,y+d*i,"Guys: " + string(gain_guys2));
		i++
	}
	if(gain_guys3 >0)
	{
		draw_text(x,y+d*i,"BigGuys: " + string(gain_guys3));
		i++
	}
}
