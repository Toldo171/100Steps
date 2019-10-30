event_inherited();

if (x == obj_Hero.x and y == obj_Hero.y)
{
	obj_Hero.remaining_steps += steps_added;
	instance_destroy();
}
