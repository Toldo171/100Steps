//Move Ennemy
if keyboard_check_pressed(vk_left)
{
	moveCharacter(directions.left, self);
}
if keyboard_check_pressed(vk_right)
{
	moveCharacter(directions.right, self);
}
if keyboard_check_pressed(vk_up)
{
	moveCharacter(directions.up, self);
}
if keyboard_check_pressed(vk_down)
{
	moveCharacter(directions.down, self);
}

//Animate Ennemy
animateCharacter();

shoot(obj_Slime);