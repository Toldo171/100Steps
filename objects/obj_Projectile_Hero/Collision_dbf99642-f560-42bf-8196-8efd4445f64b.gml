with (other)
{
	var rand = irandom_range(1, 100);
	
	//Inflict damage according to crit rate and crit damage
	if (rand <= obj_Hero.crit_rate)
	{
		currentHearts -= obj_Hero.attack * obj_Hero.crit_damage;
	}
	else
	{
		currentHearts -= obj_Hero.attack;
	}
}

//Destroy bullet, play sound and Launch screenshake
instance_destroy();
playSound("hitEnnemy");
with (obj_ScreenShake)
{
	alarm[0] = shake_length;
}
