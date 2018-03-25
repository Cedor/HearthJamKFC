/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if (countdown ==0)
{
	if (!delivery_done)
	{
		var i, j, bar, warehouse,deli;
		gain_satisfaction = 0;
		gain_dollars = 0;
		for (i = 0; i < instance_number(o_TileBar); i++)
		{
			bar= instance_find(o_TileBar,i);
			if (bar.selected)
			{
				for (j = 0; j < instance_number(o_TileWarehouse); j++)
				{
					warehouse = instance_find(o_TileWarehouse,i);
					if (bar.biere >0)
					{
						deli = abs(warehouse.biere >= bar.biere)
						gain_satisfaction += deli;
						gain_dollars += deli*warehouse.biere_prix;
						if (warehouse.biere >= bar.biere)
						{
							warehouse.biere -= bar.biere;
							bar.biere = 0;
						}
						else
						{
							bar.biere -= warehouse.biere;
							warehouse.biere = 0;
						}
					}
					if (bar.alcool >0)
					{
						deli = abs(warehouse.alcool >= bar.alcool)
						gain_satisfaction += deli;
						gain_dollars += deli*warehouse.alcool_prix;
						if (warehouse.alcool >= bar.alcool)
						{
							warehouse.alcool -= bar.alcool;
							bar.alcool = 0;
						}
						else
						{
							bar.alcool -= warehouse.alcool;
							warehouse.alcool = 0;
						}
					}
					if (bar.cigare >0)
					{
						deli = abs(warehouse.cigare >= bar.cigare)
						gain_satisfaction += deli;
						gain_dollars += deli*warehouse.cigare_prix;
						if (warehouse.cigare >= bar.cigare)
						{
							warehouse.cigare -= bar.cigare;
							bar.cigare = 0;
						}
						else
						{
							bar.cigare -= warehouse.cigare;
							warehouse.cigare = 0;
						}
					}
				}
			}
		}
		delivery_done = true;
	}

	display_name = "Delivery done"
}