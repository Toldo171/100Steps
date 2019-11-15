//------------------------------------------------------------
//Handle zoom to the beats
//------------------------------------------------------------
//argument0 = NA

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