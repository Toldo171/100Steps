with (obj_Hero)
{
	currentHearts -= obj_Projectile_Ennemy.attack;
	alarm[0] = blinking_duration;
}

//Destroy bullet, play sound and Launch screenshake
instance_destroy();
playSound("hitHero");
with (obj_ScreenShake)
{
	alarm[0] = shake_length;
}
