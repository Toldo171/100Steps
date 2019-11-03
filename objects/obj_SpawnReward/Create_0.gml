x1_reward = 0;
y1_reward = 0;
x2_reward = 0;
y2_reward = 0;
dist_from_reward = 3 * tile_width;
hasSpawned = false;

//Possible loots and droprates
drop_rates_runes_room_keys = [obj_Rune, obj_Key, obj_Full_Heart];
drop_rates_runes_room_values = [0.9, 0.05, 0.05];
array_size_runes = array_length_1d(drop_rates_runes_room_values);
thresholds_runes = [1, 0, 0, 0];

drop_rates_steps_room_keys = [obj_Rune, obj_Steps, obj_Key, obj_Full_Heart];
drop_rates_steps_room_values = [0.45, 0,45, 0.05, 0.05];
array_size_steps = array_length_1d(drop_rates_steps_room_values);
thresholds_steps = [1, 0, 0, 0, 0];