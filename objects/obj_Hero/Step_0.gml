image_xscale = remaining_steps / 150;
image_yscale = remaining_steps / 150;

//Blinking effect
blinkOnHit();

//Move Hero
if (keyboard_check_pressed(vk_left) and place_free(x - tile_width, y))
{
	moveCharacter(directions.left, obj_Hero, step_length);
	playSound("heroShoot");
}
if (keyboard_check_pressed(vk_right) and place_free(x + tile_width, y))
{
	moveCharacter(directions.right, obj_Hero, step_length);
	playSound("heroShoot");
}
if (keyboard_check_pressed(vk_up) and place_free(x, y - tile_height))
{
	moveCharacter(directions.up, obj_Hero, step_length);
	playSound("heroShoot");
}
if (keyboard_check_pressed(vk_down) and place_free(x, y + tile_height))
{
	moveCharacter(directions.down, obj_Hero, step_length);
	playSound("heroShoot");
}

//Shoot
if (obj_Hero.state != states.dead)
{
	if (keyboard_check_pressed(ord("Q")))
	{
		shoot(directions.left, obj_Hero, obj_Projectile_Hero, x, y);
		playSound("heroShoot");
	}
	if (keyboard_check_pressed(ord("D")))
	{
		shoot(directions.right, obj_Hero, obj_Projectile_Hero, x, y);
		playSound("heroShoot");
	}
	if (keyboard_check_pressed(ord("Z")))
	{
		shoot(directions.up, obj_Hero, obj_Projectile_Hero, x, y);
		playSound("heroShoot");
	}
	if (keyboard_check_pressed(ord("S")))
	{
		shoot(directions.down, obj_Hero, obj_Projectile_Hero, x, y);
		playSound("heroShoot");
	}
}

//Animate Hero
animateCharacter();

//Death animation
animateDeath();

//Check dead
checkDead();

//If the room has changed, we update the value of the tileset to recognize walls and collision
tile_layer = layer_get_id("Walls");
//Get the tilemap ID
tile_map = layer_tilemap_get_id(tile_layer);
