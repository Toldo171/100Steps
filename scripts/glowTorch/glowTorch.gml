//------------------------------------------------------------
//Add a glowing effect to the torches
//------------------------------------------------------------
//argument0 = NA

if (alarm[0] > 0)
{
	var glow = random_range(-glow_range, glow_range)
	light[| eLight.Range] += glow;
}
else if (alarm[0] == 0)
{
	light[| eLight.Range] = initial_light_range;
}

if (alarm[0] == -1)
{
	alarm[0] = change_range_delay;
}