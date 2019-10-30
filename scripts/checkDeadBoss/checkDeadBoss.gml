//------------------------------------------------------------
//Check if Boss is dead (checkDeadBoss)
//------------------------------------------------------------
//argument0 = NA

if (currentHearts <= 0)
{
	var x_grid_ennemy = (x div tile_width) * tile_width;
	var y_grid_ennemy = (y div tile_height) * tile_height;
	
	loot(drop_rates_ennemy_keys, drop_rates_ennemy_values, array_size, thresholds, x_grid_ennemy, y_grid_ennemy, true);
	loot(drop_rates_ennemy_keys, drop_rates_ennemy_values, array_size, thresholds, x_grid_ennemy + tile_width, y_grid_ennemy, true);
	loot(drop_rates_ennemy_keys, drop_rates_ennemy_values, array_size, thresholds, x_grid_ennemy, y_grid_ennemy + tile_height, true);
	loot(drop_rates_ennemy_keys, drop_rates_ennemy_values, array_size, thresholds, x_grid_ennemy + tile_width, y_grid_ennemy + tile_height, true);
	instance_destroy();
}