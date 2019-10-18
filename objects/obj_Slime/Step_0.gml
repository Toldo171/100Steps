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
	shoot(self, obj_Projectile_Ennemy);
}

//Kill slime
if (currentHearts == 0)
{
	var rand = irandom_range(1, 100);
	
	if (80 < rand and rand <= 95)
	{
		instance_create_layer(x, y, "Objects", obj_Heart)
	}
	else if (95 < rand and rand <= 100)
	{
		instance_create_layer(x, y, "Objects", obj_Key)
	}
	
	instance_destroy();
}