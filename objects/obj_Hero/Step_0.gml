//Move Player
if keyboard_check_pressed(vk_left)
{
	move(directions.left);
}
if keyboard_check_pressed(vk_right)
{
	move(directions.right);
}
if keyboard_check_pressed(vk_up)
{
	move(directions.up);
}
if keyboard_check_pressed(vk_down)
{
	move(directions.down);
}

//Animate player
if (state == states.walking)
{
	//Let's increase the value of walk_anim_time for every frame, so that it's equal to 1 after 1 sec.
	walk_anim_time += 1 / game_get_speed(gamespeed_fps);
	show_debug_message(walk_anim_time);
	var t = walk_anim_time / walk_anim_length;
	
	//When t = 1, it means we have reach the end of the animation
	if (t >= 1)
	{
		walk_anim_time = 0;
		t = 1;
		state = states.idle;
	}
	
	//lerp (linear interpolation) is used to compute where the player should be drawn at every frame. Example : lerp(32, 64, 0.1) = 32 + 3.2 = 35.2
	var _x = lerp(x_from, x_to, t);
	var _y = lerp(y_from, y_to, t);
	//Update x and y coordinates
	x = _x * tile_width;
	y = _y * tile_height;
	
	//According to the time of the animation, a specific frame is displayed. Each frame will be displayed the same amount of time.
	image_index = frames[floor((walk_anim_frames - 1) * t)]
}