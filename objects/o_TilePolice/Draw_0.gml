draw_self()
if (danger >0)
{
	draw_set_color(c_red);
	draw_circle(x+global.SPRITESIZE/2,y+global.SPRITESIZE/2,global.SPRITESIZE/2+global.SPRITESIZE*danger,true);
}