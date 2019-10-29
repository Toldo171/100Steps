//Setup movement and shooting delays
if (alarm[0] == -1)
{
	alarm[0] = action_delay;
}

//AI Behaviour
activateSlimeAI();

//Animate Ennemy
animateCharacter();

//Kill slime
if (currentHearts <= 0)
{
	loot(drop_rates_ennemy_keys, drop_rates_ennemy_values, array_size, thresholds, x, y, False);
	instance_destroy();
}
