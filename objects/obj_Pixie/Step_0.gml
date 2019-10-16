if (x == obj_Hero.x and y == obj_Hero.y)
{
	field_of_view = 8;
	obj_Hero.hasPixie = true;
}

if (obj_Hero.hasPixie = true)
{
	x_end = obj_Hero.x + 20;
	y_end = obj_Hero.y - 20;
	move_towards_point(x_end, y_end, spd);
}
