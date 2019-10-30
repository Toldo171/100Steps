event_inherited();

//Relates the sprite according to the slot
rune_slot = ds_map_create();
rune_slot[? "speed"] = spr_Rune_Spd;
rune_slot[? "critRate"] = spr_Rune_CR;
rune_slot[? "critDamage"] = spr_Rune_CD;
rune_slot[? "attack"] = spr_Rune_Atk;

//Relates the sprite according to the rarity
rune_rarity = ds_map_create();
rune_rarity[? "common"] = 0;
rune_rarity[? "rare"] = 1;
rune_rarity[? "epic"] = 2;
rune_rarity[? "legendary"] = 3;

//max randomization
max_rand = 100;

//Rune can be slot 1, 2, 3 or 4
var rand_slot = irandom_range(1,max_rand);
slot_rates_keys = ["speed", "critRate", "critDamage", "attack"];
slot_rates_values = [0.25, 0.25, 0.25, 0.25];
slot_array_size = array_length_1d(slot_rates_values);
slot_thresholds = [1, 0, 0, 0, 0]

//Rune can be common, rare, epic or legendary
var rand_rarity = irandom_range(1,max_rand);
rarity_rates_keys = ["common", "rare", "epic", "legendary"];
rarity_rates_values = [0.4, 0.3, 0.2, 0.1];
rarity_array_size = array_length_1d(rarity_rates_values);
rarity_thresholds = [1, 0, 0, 0, 0]

for (i = 0; i < slot_array_size; i++)
{
	//Creating thresholds
	slot_thresholds[i+1] = slot_thresholds[i] - slot_rates_values[i];
	
	//Generating loot
	if (max_rand * slot_thresholds[i+1] < rand_slot and rand_slot <= max_rand * slot_thresholds[i])
	{
		slot = slot_rates_keys[i];
	}
}

for (i = 0; i < rarity_array_size; i++)
{
	//Creating thresholds
	rarity_thresholds[i+1] = rarity_thresholds[i] - rarity_rates_values[i];
	
	//Generating loot
	if (max_rand * rarity_thresholds[i+1] < rand_rarity and rand_rarity <= max_rand * rarity_thresholds[i])
	{
		rarity = rarity_rates_keys[i];
	}
}

//Assign the sprite to the new rune
rune_type = slot + "_" + rarity;
sprite_index = rune_slot[? slot];
image_index = rune_rarity[? rarity];

//Ranges type runes
min_boost_common = 1;
max_boost_common = 3;

min_boost_rare = 2;
max_boost_rare = 5;

min_boost_epic = 4;
max_boost_epic = 7;

min_boost_legendary = 6;
max_boost_legendary = 10;

//stats multiplicator
spd_mul = 0.1;
CR_mul = 1;
CD_mul = 0.01;
atk_mul = 0.1;
