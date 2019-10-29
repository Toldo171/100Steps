if (!(layer_has_instance("Ennemies", obj_Slime)) and hasSpawned == false)
{
	
	var x_grid_hero = (obj_Hero.x div tile_width) * tile_width;
	var y_grid_hero = (obj_Hero.y div tile_height) * tile_height;

	if (x_grid_hero >= 8 * tile_width)
	{
		x1_reward = x_grid_hero - 3 * tile_width;
		y1_reward = y_grid_hero;
	}
	else if (y_grid_hero >= 4 * tile_height)
	{
		x1_reward = x_grid_hero;
		y1_reward = y_grid_hero - 3 * tile_height;
	}
	else
	{
		x1_reward = x_grid_hero;
		y1_reward = y_grid_hero + 3 * tile_height;
	}

	if (x_grid_hero <= room_width - 5 * tile_width)
	{
		x2_reward = x_grid_hero + 3 * tile_width;
		y2_reward = y_grid_hero;
	}
	else if (y_grid_hero >= 4 * tile_height)
	{
		x2_reward = x_grid_hero;
		y2_reward = y_grid_hero - 3 * tile_height;
	}
	else
	{
		x2_reward = x_grid_hero;
		y2_reward = y_grid_hero + 3 * tile_height;
	}
	
	loot(drop_rates_runes_room_keys, drop_rates_runes_room_values, array_size_runes, thresholds_runes, x1_reward, y1_reward, true);
	loot(drop_rates_steps_room_keys, drop_rates_steps_room_values, array_size_steps, thresholds_steps, x2_reward, y2_reward, true);
	hasSpawned = true;
}
