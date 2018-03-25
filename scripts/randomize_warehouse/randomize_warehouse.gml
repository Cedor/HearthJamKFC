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
	}	
	toto--;
}