//Setup movement and shooting delays
if (alarm[0] == -1)
{
	alarm[0] = move_delay;
}
if (alarm[1] == -1)
{
	alarm[1] = shoot_delay;
}

//Move Ennemy (AI)
moveSlimeAI(self);

//Animate Ennemy
animateCharacter();

//Shooting AI
if (alarm[1] == 0)
{
	shoot(dir, self, obj_Projectile_Ennemy);
}

//Kill slime
if (currentHearts <= 0)
{
	loot(drop_rates_ennemy_keys, drop_rates_ennemy_values, array_size, thresholds, x, y);
	instance_destroy();
}
