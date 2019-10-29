event_inherited();

if (x == obj_Hero.x and y == obj_Hero.y)
{
	if (obj_Hero.maxHearts < 8)
	{
		obj_Hero.maxHearts += 1;
		instance_destroy();
	}
}