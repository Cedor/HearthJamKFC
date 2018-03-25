if !instance_exists(o_TileWindow)
{
draw_self();
if (danger >0)
{
	draw_set_color(c_red);
	draw_set_alpha(0.22);
	draw_circle(x+global.SPRITESIZE/2,y+global.SPRITESIZE/2,global.SPRITESIZE/2+global.SPRITESIZE*danger,false);
	draw_set_alpha(1);
}
}