/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
win_available = true;
win_obj = o_Win_Warehouse;

//Pyrate Begin

biere	= 0;
alcool	= 0;
cigare	= 0;

biere_dispo = irandom(10);
alcool_dispo = irandom(10);
cigare_dispo = irandom(10);

biere_commande = 0;
alcool_commande = 0;
cigare_commande = 0;

biere_prix  = 5+irandom(10);
alcool_prix = 10+irandom(25);
cigare_prix = 7+irandom(30);

//Pyrate End