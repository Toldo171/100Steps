//------------------------------------------------------------
//Shoot
//------------------------------------------------------------
//argument0 = Hero

if (keyboard_check_pressed(vk_space) and argument0.hasGun = true)
{	
	//Remove 1 step from the count
	if (argument0 == obj_Hero) { argument0.remaining_steps -= 1; }
	
	//The following code will be applied on the new created instance of projectile
	with (instance_create_layer(x, y, "Projectiles", obj_Projectile))
	{
		//Set the direction of the projectile
		dir = argument0.dir;
		direction = global.dir_projectile[? argument0.dir];
	}
}