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
	alarm[0] = blinking_duration;
}

//Destroy bullet, play sound and Launch screenshake
instance_create_layer(x + 16, y + 16, "LightAndParticles", obj_ParticleProjectile)
instance_destroy();
playSound("hitEnnemy");
with (obj_ScreenShake)
{
	alarm[0] = shake_length;
}
