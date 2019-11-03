//Generate screenshake
if (keyboard_check_pressed(vk_space))
{
	alarm[0] = shake_length;
}

if (alarm[0] >= 0)
{
	var shake = random_range(-shake_range, shake_range)
	camera_set_view_pos(view_camera[0], view_x + shake, view_y + shake);
}
else
{
	camera_set_view_pos(view_camera[0], view_x, view_y);
}