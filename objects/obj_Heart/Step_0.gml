if (x == obj_Hero.x and y == obj_Hero.y)
{
	if (obj_Hero.currentHearts < obj_Hero.maxHearts)
	{
		obj_Hero.currentHearts += 1;
		instance_destroy();
	}
}