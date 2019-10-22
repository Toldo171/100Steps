//------------------------------------------------------------
//Loot
//------------------------------------------------------------
//argument0 = NA

drop_rates_ennemy_keys = [obj_Heart, obj_Steps, obj_Life, obj_Key]
drop_rates_ennemy_values = [0.1, 0.1, 0.05, 0.05]
array_size = array_length_1d(drop_rates_ennemy_values);
thresholds = [1, 0, 0, 0, 0]

maxRand = 1000;
var rand = irandom_range(1, maxRand);	

for (i = 0; i < array_size; i++)
{
	//Creating thresholds
	thresholds[i+1] = thresholds[i] - drop_rates_ennemy_values[i];
	
	//Generating loot
	if (maxRand * thresholds[i+1] < rand and rand <= maxRand * thresholds[i])
	{
		instance_create_layer(x, y, "Objects", drop_rates_ennemy_keys[i]);
	}
}
