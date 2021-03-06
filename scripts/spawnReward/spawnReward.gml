//------------------------------------------------------------
//Spawn Reward (spawnReward)
//------------------------------------------------------------
//argument0 = Hero

var x_grid_hero = (argument0.x div tile_width) * tile_width;
var y_grid_hero = (argument0.y div tile_height) * tile_height;

if (x_grid_hero >= 8 * tile_width)
{
	x1_reward = x_grid_hero - dist_from_reward;
	y1_reward = y_grid_hero;
}
else if (y_grid_hero >= 4 * tile_height)
{
	x1_reward = x_grid_hero;
	y1_reward = y_grid_hero - dist_from_reward;
}
else
{
	x1_reward = x_grid_hero;
	y1_reward = y_grid_hero + dist_from_reward;
}

if (x_grid_hero <= room_width - 5 * tile_width)
{
	x2_reward = x_grid_hero + dist_from_reward;
	y2_reward = y_grid_hero;
}
else if (y_grid_hero >= 4 * tile_height)
{
	x2_reward = x_grid_hero;
	y2_reward = y_grid_hero - dist_from_reward;
}
else
{
	x2_reward = x_grid_hero;
	y2_reward = y_grid_hero + dist_from_reward;
}

loot(drop_rates_runes_room_keys, drop_rates_runes_room_values, array_size_runes, thresholds_runes, x1_reward, y1_reward, true);
loot(drop_rates_steps_room_keys, drop_rates_steps_room_values, array_size_steps, thresholds_steps, x2_reward, y2_reward, true);
hasSpawned = true;