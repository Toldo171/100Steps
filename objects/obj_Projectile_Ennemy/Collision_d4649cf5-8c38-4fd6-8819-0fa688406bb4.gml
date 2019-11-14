with (obj_Hero)
{
	currentHearts -= obj_Projectile_Ennemy.attack;
	alarm[0] = blinking_duration;
}

//Destroy bullet, add particles from the middle of the projectile play sound and Launch screenshake
instance_create_layer(x + 16, y + 16, "LightAndParticles", obj_ParticleProjectile)
instance_destroy();
playSound("hitHero");
with (obj_ScreenShake)
{
	alarm[0] = shake_length;
}
