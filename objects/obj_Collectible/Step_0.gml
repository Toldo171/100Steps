if (x == obj_Hero.x and y == obj_Hero.y)
{
	if (is_spawn_reward = true)
	{
		with(obj_Collectible)
		{
			if (is_spawn_reward = true and (x != obj_Hero.x or y != obj_Hero.y))
			{
				instance_destroy();
			}
		}
	}
}