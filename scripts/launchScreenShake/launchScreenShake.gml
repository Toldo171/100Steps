//------------------------------------------------------------
//Handle screenshake
//------------------------------------------------------------
//argument0 = NA

if (alarm[0] > 0)
{
	var shake = random_range(-shake_range, shake_range)
	camera_set_view_pos(view_camera[0], view_x + shake, view_y + shake);
}
else if (alarm[0] <= 0)
{
	camera_set_view_pos(view_camera[0], view_x, view_y);
}