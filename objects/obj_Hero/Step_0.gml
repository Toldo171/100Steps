//Move Hero
if (keyboard_check_pressed(vk_left))
{
	moveCharacter(directions.left, obj_Hero);
}
if (keyboard_check_pressed(vk_right))
{
	moveCharacter(directions.right, obj_Hero);
}
if (keyboard_check_pressed(vk_up))
{
	moveCharacter(directions.up, obj_Hero);
}
if (keyboard_check_pressed(vk_down))
{
	moveCharacter(directions.down, obj_Hero);
}

//Animate Hero
animateCharacter();

//Death animation
animateDeath();

//Check steps
checkSteps();