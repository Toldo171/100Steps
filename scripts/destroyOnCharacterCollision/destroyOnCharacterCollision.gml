//------------------------------------------------------------------
//Check collision with a character and destroy projectile if necessary
//------------------------------------------------------------------
//argument0 = Sound to play

instance_create_layer(x + 16, y + 16, "LightAndParticles", obj_ParticleProjectile)
instance_destroy();
playSound(argument0);
with (obj_ScreenShake)
{
	alarm[0] = shake_length;
}