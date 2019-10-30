//------------------------------------------------------------
//Handles Slime AI
//------------------------------------------------------------
//argument0 = NA

if (alarm[0] == 0)
{
	if (action_count == 0 or action_count == 1)
	{
		moveCharacter(dir, self);
		dir_indice += turn;
		if (dir_indice == -1) {dir_indice = 3;}
		if (dir_indice == 4) {dir_indice = 0;}
		dir = dir_array[dir_indice];
		action_count += 1;
	}
	else if (action_count == 2)
	{
		shoot(directions.down, self, obj_Projectile_Ennemy, x, y);
		shoot(directions.up, self, obj_Projectile_Ennemy, x, y);
		shoot(directions.left, self, obj_Projectile_Ennemy, x, y);
		shoot(directions.right, self, obj_Projectile_Ennemy, x, y);
		action_count += 1;
	}
	else if (action_count == 3)
	{
		action_count = 0;
	}
}
