//------------------------------------------------------------
//Shoot
//------------------------------------------------------------
//argument0 = Hero

if (keyboard_check_pressed(vk_space) and hasGun = true)
{	
	//The following code will be applied on the new created instance of projectile
	with (instance_create_layer(x, y, "Projectiles", obj_Projectile))
	{
		//Set the direction of the projectile
		dir = argument0.dir;
		direction = global.dir_projectile[? argument0.dir];
	}
}