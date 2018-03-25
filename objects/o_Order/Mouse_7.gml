/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
//on check qu'on a le droit de faire l'action
var act_ok = false;
var dollars = instance_find(o_Dollars,0);
var guys1 = instance_find(o_Guys_lvl1,0);
var guys2 = instance_find(o_Guys_lvl2,0);
var guys3 = instance_find(o_Guys_lvl3,0);
if (dollars.quantity >= cost_dollars && guys1.quantity >= cost_guys1
		&& guys2.quantity >= cost_guys2 && guys3.quantity >= cost_guys3
	)
{
	act_ok = true

}
else
{
	//On pete une erreur
}
if (act_ok == true)
{
	
	dollars.quantity -= cost_dollars;
	guys1.quantity -= cost_guys1;
	guys2.quantity -= cost_guys2;
	guys3.quantity -= cost_guys3;
	refWin.refTile.biere += refWin.refTile.biere_commande;
	refWin.refTile.biere_commande = 0;
	refWin.refTile.alcool += refWin.refTile.alcool_commande;
	refWin.refTile.alcool_commande = 0;
	refWin.refTile.cigare += refWin.refTile.cigare_commande;
	refWin.refTile.cigare_commande = 0;
	if (instance_exists(refWin))
	{
	instance_destroy(refWin);
	}
	end_turn();
}