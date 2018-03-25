var dataUpdate = false;
// Beers
if (position_meeting(mouse_x, mouse_y, biere_plus) && refTile.biere_dispo >0)
{
		refTile.biere_commande++;
		refTile.biere_dispo--;
		dataUpdate = true;
}
if (position_meeting(mouse_x, mouse_y,biere_moins ) && refTile.biere_commande >0)
{
		refTile.biere_commande--;
		refTile.biere_dispo++;
		dataUpdate = true;
}

// Whiskey
if (position_meeting(mouse_x, mouse_y, alcool_plus) && refTile.alcool_dispo >0)
{
	refTile.alcool_commande++;
	refTile.alcool_dispo--;
	dataUpdate = true;
}
if (position_meeting(mouse_x, mouse_y,alcool_moins )&& refTile.alcool_commande >0)
{
	refTile.alcool_commande--;
	refTile.alcool_dispo++;
	dataUpdate = true;
}

// Cigars
if (position_meeting(mouse_x, mouse_y,cigare_plus )&& refTile.cigare_dispo >0)
{
	refTile.cigare_commande++;
	refTile.cigare_dispo--;
	dataUpdate = true;
}

if (position_meeting(mouse_x, mouse_y, cigare_moins) && refTile.cigare_commande >0)
{
	refTile.cigare_commande--;
	refTile.cigare_dispo++;
	dataUpdate = true;
}


if (dataUpdate)
{
	acheter.cost_dollars = 0;
	acheter.cost_dollars += refTile.biere_commande * refTile.biere_prix;
	acheter.cost_dollars += refTile.alcool_commande * refTile.alcool_prix;
	acheter.cost_dollars += refTile.cigare_commande * refTile.cigare_prix;
}