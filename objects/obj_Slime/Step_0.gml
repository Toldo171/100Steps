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
checkDeadEnnemy();