//------------------------------------------------------------
//Handles character movement
//------------------------------------------------------------
//argument0 = Ennemy

if (alarm[0] == 0)
{
	var x_from_hero = argument0.x_pos - obj_Hero.x_pos;
	var y_from_hero = argument0.y_pos - obj_Hero.y_pos;
	var diff_xy = abs(x_from_hero) - abs(y_from_hero);

	if (diff_xy >= 0)
	{
		if (y_from_hero > 0 and place_free(argument0.x, argument0.y - tile_height))
		{
			moveCharacter(directions.up, self);
		}
		else if (y_from_hero < 0 and place_free(argument0.x, argument0.y + tile_height))
		{
			moveCharacter(directions.down, self);
		}
		else if (y_from_hero = 0)
		{
			if (x_from_hero > 1 and place_free(argument0.x - tile_width, argument0.y))
			{
				moveCharacter(directions.left, self);
			}
			else if (x_from_hero < -1 and place_free(argument0.x + tile_width, argument0.y))
			{
				moveCharacter(directions.right, self);
			}
		}
	}
	else if (diff_xy < 0)
	{
		if (x_from_hero > 0 and place_free(argument0.x - tile_width, argument0.y))
		{
			moveCharacter(directions.left, self);
		}
		else if (x_from_hero < 0 and place_free(argument0.x + tile_width, argument0.y))
		{
			moveCharacter(directions.right, self);
		}
		else if (x_from_hero = 0)
		{
			if (y_from_hero > 1 and place_free(argument0.x, argument0.y - tile_height))
			{
				moveCharacter(directions.up, self);
			}
			else if (y_from_hero < -1 and place_free(argument0.x, argument0.y + tile_height))
			{
				moveCharacter(directions.down, self);
			}
		}
	}
}