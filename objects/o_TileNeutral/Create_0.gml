/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var type = irandom(4);

switch(type)
	{
		case 0:
			sprite_index = s_Neutral;
			break;
		/*case 1:
			sprite_index = s_Factory;
			
			// Génération aléatoire du sprite de factory
			var factory = irandom(1)
			switch(factory)
				{
						case 1:
							image_index = 1;
							break;
						default:
							image_index = 0;
				}
			break;*/
		default:
			sprite_index = s_Building;
			
			// Génération aléatoire du sprite de building
			var building = irandom(3)
			switch(building)
				{
						case 1:
							image_index = 1;
							break;
						case 2:
							image_index = 2;
							break;
						case 3:
							image_index = 3;
							break;
						default:
							image_index = 0;
				}
	}