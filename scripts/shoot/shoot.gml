//------------------------------------------------------------
//Shoot
//------------------------------------------------------------
//argument0 = Direction
//argument1 = Hero
//argument2 = Projectile
//argument3 = x
//argument4 = y

//Remove 1 step from the count
if (argument1 == obj_Hero) { argument1.remaining_steps -= 1; }
	
//The following code will be applied on the new created instance of projectile
with (instance_create_layer(argument3, argument4, "Projectiles", argument2))
{
	//Set the direction of the projectile
	direction = global.dir_projectile[? argument0];
}

//Update the direction of the character
sprite_index = argument1.idle_sprite[argument0];
