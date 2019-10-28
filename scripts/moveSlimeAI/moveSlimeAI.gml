//------------------------------------------------------------
//Handles character movement
//------------------------------------------------------------
//argument0 = NA

if (alarm[0] == 0)
{
	if (action_count == 0 or action_count == 1)
	{
		moveCharacter(global.dir_projectile[? degree_direction], self);
		degree_direction += turn * 90;
		action_count += 1;
	}
	else if (action_count == 2)
	{
		shoot(directions.down, self, obj_Projectile_Ennemy);
		shoot(directions.up, self, obj_Projectile_Ennemy);
		shoot(directions.left, self, obj_Projectile_Ennemy);
		shoot(directions.right, self, obj_Projectile_Ennemy);
		action_count += 1;
	}
	else if (action_count == 3)
	{
		action_count = 0;
	}
}
