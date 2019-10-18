//------------------------------------------------------------
//Shoot
//------------------------------------------------------------
//argument0 = Hero
//argument1 = Projectile

//Remove 1 step from the count
if (argument0 == obj_Hero) { argument0.remaining_steps -= 1; }
	
//The following code will be applied on the new created instance of projectile
with (instance_create_layer(x, y, "Projectiles", argument1))
{
	//Set the direction of the projectile
	dir = argument0.dir;
	direction = global.dir_projectile[? argument0.dir];
}