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

if (argument0 = "hitHero")
{
	var hitHeroSounds = [snd_hitHero1, snd_hitHero2, snd_hitHero3]
	var rand = irandom_range(0,2);
	audio_play_sound(hitHeroSounds[rand], 1000, false);
}

if (argument0 = "hitEnnemy")
{
	var hitEnnemySounds = [snd_hitEnnemy1, snd_hitEnnemy2]
	var rand = irandom_range(0,1);
	audio_play_sound(hitEnnemySounds[rand], 1000, false);
}

