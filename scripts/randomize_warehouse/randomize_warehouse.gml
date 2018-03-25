var toto = instance_number(o_TileWarehouse);
while toto > 0
{
	var test = irandom(100);
	if test < 50
	{
		maj = instance_find(o_TileWarehouse, toto-1);
		maj.biere_dispo = irandom(10);
		maj.alcool_dispo = irandom(10);
		maj.cigare_dispo = irandom(10);
		maj.biere_prix  = 5+irandom(10);
		maj.alcool_prix = 10+irandom(25);
		maj.cigare_prix = 7+irandom(30);
	}	
	toto--;
}