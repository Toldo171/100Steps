obj_Hero.currentHearts -= attack;

//Destroy bullet, play sound and Launch screenshake
instance_destroy();
playSound("hitHero");
with (obj_ScreenShake)
{
	alarm[0] = shake_length;
}
