if (!(layer_has_instance("Ennemies", obj_Slime)) and hasSpawned == false)
{
	loot(drop_rates_room_keys, drop_rates_room_values, array_size, thresholds, x_reward, y_reward);
	hasSpawned = true;
}