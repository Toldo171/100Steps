//Setup movement and shooting delays
if (alarm[0] == -1)
{
	alarm[0] = action_delay;
}

//AI Behaviour
activateSlimeBossAI();

//Animate Ennemy
animateCharacter();

//Kill slime
checkDeadBoss();
