//------------------------------------------------------------
//Handles Slime Boss AI (activateSlimeBossAI)
//------------------------------------------------------------
//argument0 = NA

if (alarm[0] == 0)
{
	if (rerandom_count == 2)
	{
		//Every 8 beats, we rerandomize initial direction and turn
		rerandom_count = 0;
		turn = choose(-1, 1);
		dir_indice = irandom_range(0,3);
		dir = dir_array[dir_indice];
	}
	
	if (action_count == 0 or action_count == 1)
	{
		moveCharacter(dir, self, step_length);
		dir_indice += turn;
		if (dir_indice == -1) {dir_indice = 3;}
		if (dir_indice == 4) {dir_indice = 0;}
		dir = dir_array[dir_indice];
		action_count += 1;
	}
	else if (action_count == 2)
	{
		shoot(directions.down, self, obj_Projectile_Ennemy, x, y + 3 * tile_height);
		shoot(directions.down, self, obj_Projectile_Ennemy, x + 1 * tile_height, y + 3 * tile_height);
		shoot(directions.down, self, obj_Projectile_Ennemy, x + 2 * tile_height, y + 3 * tile_height);
		shoot(directions.down, self, obj_Projectile_Ennemy, x + 3 * tile_height, y + 3 * tile_height);
		
		shoot(directions.up, self, obj_Projectile_Ennemy, x, y);
		shoot(directions.up, self, obj_Projectile_Ennemy, x + 1 * tile_height, y);
		shoot(directions.up, self, obj_Projectile_Ennemy, x + 2 * tile_height, y);
		shoot(directions.up, self, obj_Projectile_Ennemy, x + 3 * tile_height, y);
		
		shoot(directions.left, self, obj_Projectile_Ennemy, x, y);
		shoot(directions.left, self, obj_Projectile_Ennemy, x, y + 1 * tile_height);
		shoot(directions.left, self, obj_Projectile_Ennemy, x, y + 2 * tile_height);
		shoot(directions.left, self, obj_Projectile_Ennemy, x, y + 3 * tile_height);
		
		shoot(directions.right, self, obj_Projectile_Ennemy, x + 3 * tile_height, y);
		shoot(directions.right, self, obj_Projectile_Ennemy, x + 3 * tile_height, y + 1 * tile_height);
		shoot(directions.right, self, obj_Projectile_Ennemy, x + 3 * tile_height, y + 2 * tile_height);
		shoot(directions.right, self, obj_Projectile_Ennemy, x + 3 * tile_height, y + 3 * tile_height);
		
		action_count += 1;
	}
	else if (action_count == 3)
	{
		action_count = 0;
		rerandom_count += 1;
	}
}