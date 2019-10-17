if (alarm[0] == -1)
{
	alarm[0] = move_delay;
}
if (alarm[1] == -1)
{
	alarm[1] = shoot_delay;
}

//Move Ennemy (AI)
if (alarm[0] == 0)
{
	var x_from_hero = x_pos - obj_Hero.x_pos;
	var y_from_hero = y_pos - obj_Hero.y_pos;
	var diff_xy = abs(x_from_hero) - abs(y_from_hero);

	if (diff_xy >= 0)
	{
		if (y_from_hero > 0)
		{
			moveCharacter(directions.up, self);
		}
		else if (y_from_hero < 0)
		{
			moveCharacter(directions.down, self);
		}
		else if (y_from_hero = 0)
		{
			if (x_from_hero > 1)
			{
				moveCharacter(directions.left, self);
			}
			else if (x_from_hero < -1)
			{
				moveCharacter(directions.right, self);
			}
		}
	}
	else if (diff_xy < 0)
	{
		if (x_from_hero > 0)
		{
			moveCharacter(directions.left, self);
		}
		else if (x_from_hero < 0)
		{
			moveCharacter(directions.right, self);
		}
		else if (x_from_hero = 0)
		{
			if (y_from_hero > 1)
			{
				moveCharacter(directions.up, self);
			}
			else if (y_from_hero < -1)
			{
				moveCharacter(directions.down, self);
			}
		}
	}
}

//Animate Ennemy
animateCharacter();

//Shooting AI
if (alarm[1] == 0)
{
	var rand = irandom_range(1,2);
	
	if (rand == 1)
	{
		shoot(obj_Slime);
	}
}