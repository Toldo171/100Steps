//------------------------------------------------------------
//Assign weapon
//------------------------------------------------------------
//argument0 = Hero

//When the player walks on the gun, he gets it
if (x == argument0.x and y == argument0.y)
{
	argument0.hasGun = true;
}

//Assign the gun to the hero
if (argument0.hasGun = true)
{
	image_alpha = 0;
	x = argument0.x;
	y = argument0.y;
}