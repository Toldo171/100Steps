x_reward = tile_width * 7;
y_reward = tile_width * 5;
hasSpawned = false;

//Possible loots and droprates
drop_rates_room_keys = [obj_Rune, obj_Life, obj_Key, obj_Full_Heart]
drop_rates_room_values = [0.85, 0.05, 0.05, 0.05]
array_size = array_length_1d(drop_rates_room_values);
thresholds = [1, 0, 0, 0, 0]