//------------------------------------------------------------
//Remove fog of war
//------------------------------------------------------------
//argument0 = 

dropRateEnnemy = ds_map_create();
dropRateEnnemy[? obj_Heart] = 0.1;
dropRateEnnemy[? obj_Steps] = 0.1;
dropRateEnnemy[? obj_Life] = 0.05;
dropRateEnnemy[? obj_Key] = 0.05;

heart_threshold = 1 - dropRateEnnemy[? obj_Heart];
steps_threshold = heart_threshold - dropRateEnnemy[? obj_Steps];
life_threshold = steps_threshold - dropRateEnnemy[? obj_Life];
key_threshold = life_threshold - dropRateEnnemy[? obj_Key];
maxRand = 1000;

var rand = irandom_range(1, maxRand);
	



if (maxRand * heart_threshold < rand and rand <= maxRand)
{
	instance_create_layer(x, y, "Objects", obj_Heart);
}
else if (maxRand * steps_threshold < rand and rand <= maxRand * heart_threshold)
{
	instance_create_layer(x, y, "Objects", obj_Steps);
}
else if (maxRand * life_threshold < rand and rand <= maxRand * steps_threshold)
{
	instance_create_layer(x, y, "Objects", obj_Life);
}
else if (maxRand * key_threshold < rand and rand <= maxRand * life_threshold)
{
	instance_create_layer(x, y, "Objects", obj_Key);
}