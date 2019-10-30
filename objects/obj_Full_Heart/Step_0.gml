event_inherited();

if (x == obj_Hero.x and y == obj_Hero.y)
{
	if (obj_Hero.maxHearts < max_possible_hearts)
	{
		obj_Hero.maxHearts += 1;
		instance_destroy();
	}
}
