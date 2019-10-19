//Move Hero
if (keyboard_check_pressed(vk_left) and place_free(x - tile_width, y))
{
	moveCharacter(directions.left, obj_Hero);
}
if (keyboard_check_pressed(vk_right) and place_free(x + tile_width, y))
{
	moveCharacter(directions.right, obj_Hero);
}
if (keyboard_check_pressed(vk_up) and place_free(x, y - tile_height))
{
	moveCharacter(directions.up, obj_Hero);
}
if (keyboard_check_pressed(vk_down) and place_free(x, y + tile_height))
{
	moveCharacter(directions.down, obj_Hero);
}

//Shoot
if (obj_Hero.state != states.dead)
{
	if (keyboard_check_pressed(ord("Q")))
	{
		shoot(directions.left, obj_Hero, obj_Projectile_Hero);
	}
	if (keyboard_check_pressed(ord("D")))
	{
		shoot(directions.right, obj_Hero, obj_Projectile_Hero);
	}
	if (keyboard_check_pressed(ord("Z")))
	{
		shoot(directions.up, obj_Hero, obj_Projectile_Hero);
	}
	if (keyboard_check_pressed(ord("S")))
	{
		shoot(directions.down, obj_Hero, obj_Projectile_Hero);
	}
}

//Animate Hero
animateCharacter();

//Death animation
animateDeath();

//Check dead
checkDead();