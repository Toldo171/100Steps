//Change Room
if (x = obj_Hero.x and y = obj_Hero.y)
{
	room_goto(target_room);
	obj_Hero.x = x_target;
	obj_Hero.x_pos = x_target;
	obj_Hero.x_from = x_target;
	obj_Hero.x_to = x_target;
	obj_Hero.y = y_target;
	obj_Hero.y_pos = y_target;
	obj_Hero.y_from = y_target;
	obj_Hero.y_to = y_target;
}