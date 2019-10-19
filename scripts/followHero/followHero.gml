//------------------------------------------------------------
//Remove fog of war
//------------------------------------------------------------
//argument0 = character

if (activated == true)
{
	x_end = argument0.x + x_relative_hero;
	y_end = argument0.y + y_relative_hero;
	move_towards_point(x_end, y_end, spd);
}
