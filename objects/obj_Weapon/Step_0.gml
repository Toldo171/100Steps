//When the player walks on the gun, he gets it
assignWeapon(obj_Hero);

//Create the projectile and launch it
if (keyboard_check_pressed(vk_space) and obj_Hero.hasGun = true and obj_Hero.state != states.dead)
{
	shoot(obj_Hero, obj_Projectile_Hero);
}