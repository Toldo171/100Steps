//Setup movement and shooting delays
if (alarm[0] == -1)
{
	alarm[0] = action_delay;
}

//AI Behaviour
activateSlimeAI();

//Animate Ennemy
animateCharacter();

//Kill slime
if (currentHearts <= 0)
{
	var x_grid_ennemy = (x div tile_width) * tile_width;
	var y_grid_ennemy = (y div tile_height) * tile_height;
	
	loot(drop_rates_ennemy_keys, drop_rates_ennemy_values, array_size, thresholds, x_grid_ennemy, y_grid_ennemy, false);
	instance_destroy();
}