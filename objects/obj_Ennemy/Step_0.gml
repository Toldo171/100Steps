//Setup movement and shooting delays
if (alarm[1] == -1)
{
	alarm[1] = action_delay;
}

//Animate Ennemy
animateCharacter();

//Blinking effect
blinkOnHit();