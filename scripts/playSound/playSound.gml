//------------------------------------------------------------
//Shoot
//------------------------------------------------------------
//argument0 = soundType

if (argument0 = "heroShoot")
{
	var shootSounds = [snd_shootHero1, snd_shootHero2, snd_shootHero3]
	var rand = irandom_range(0,2);
	audio_play_sound(shootSounds[rand], 1000, false);
}

