var toto = instance_number(o_TileBar);
while toto > 0
{
	maj = instance_find(o_TileBar, toto-1);
	maj.biere = irandom(5);
	maj.alcool = irandom(5);
	maj.cigare = irandom(5);
	toto--;
}