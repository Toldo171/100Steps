x_reward = tile_width * 9;
y_reward = tile_width * 5;
hasSpawned = false;

//Possible loots and droprates
drop_rates_room_keys = [obj_Rune, obj_Key, obj_Full_Heart]
drop_rates_room_values = [0.9, 0.05, 0.05]
array_size = array_length_1d(drop_rates_room_values);
thresholds = [1, 0, 0, 0, 0, 0, 0, 0]