//------------------------------------------------------------
//Blinks when taking a hit
//------------------------------------------------------------
//argument0 = NA

if (alarm[0] >= 0)
{
	if (alarm[0] mod 4 == 0)
	{
		image_alpha = 0;
	}
	else
	{
		image_alpha = 1;
	}
}
else if (alarm[0] = -1)
{
	image_alpha = 1;
}