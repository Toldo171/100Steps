//Move Hero
if keyboard_check_pressed(vk_left)
{
	moveCharacter(directions.left, obj_Hero);
}
if keyboard_check_pressed(vk_right)
{
	moveCharacter(directions.right, obj_Hero);
}
if keyboard_check_pressed(vk_up)
{
	moveCharacter(directions.up, obj_Hero);
}
if keyboard_check_pressed(vk_down)
{
	moveCharacter(directions.down, obj_Hero);
}

//Animate Hero
animateCharacter();

//Check steps
if (remaining_steps <= 0 and obj_Hero.state == states.idle)
{
	remaining_lives -= 1;
	remaining_steps = 50;
	x = tile_width * 7;
	y = tile_width * 5;
	x_pos = x div tile_width;
	y_pos = y div tile_height;
}



