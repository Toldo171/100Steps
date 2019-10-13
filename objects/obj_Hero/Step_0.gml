//Move Hero
if keyboard_check_pressed(vk_left)
{
	moveHero(directions.left);
}
if keyboard_check_pressed(vk_right)
{
	moveHero(directions.right);
}
if keyboard_check_pressed(vk_up)
{
	moveHero(directions.up);
}
if keyboard_check_pressed(vk_down)
{
	moveHero(directions.down);
}

//Animate Hero
animateHero();



