//------------------------------------------------------------
//Loot
//------------------------------------------------------------
//argument0 = drop_rates_ennemy_keys
//argument1 = drop_rates_ennemy_values
//argument2 = array_size
//argument3 = thresholds
//argument4 = x
//argument5 = y

maxRand = 1000;
var rand = irandom_range(1, maxRand);	

for (i = 0; i < argument2; i++)
{
	//Creating thresholds
	argument3[i+1] = argument3[i] - argument1[i];
	
	//Generating loot
	if (maxRand * argument3[i+1] < rand and rand <= maxRand * argument3[i])
	{
		instance_create_layer(argument4, argument5, "Objects", argument0[i]);
	}
}
