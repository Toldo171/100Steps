//Handle screenshake
if (alarm[0] > 0)
{
	var shake = random_range(-shake_range, shake_range)
	camera_set_view_pos(view_camera[0], view_x + shake, view_y + shake);
}
else if (alarm[0] <= 0)
{
	camera_set_view_pos(view_camera[0], view_x, view_y);
}

//Handle zoom to the beats
if (alarm[1] == -1)
{
	zoom_is_reset = false;
	alarm[1] = zoom_tempo;
	camera_set_view_size(view_camera[0], view_wport[0] - zoom_range, view_hport[0] - zoom_range);
	camera_set_view_pos(view_camera[0], zoom_range, zoom_range);
}
else if (alarm[1] <= zoom_tempo - zoom_duration and !zoom_is_reset)
{
	zoom_is_reset = true;
	camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);
	camera_set_view_pos(view_camera[0], 0, 0);
}
