//------------------------------------------------------------
//Handles character animation during movement
//------------------------------------------------------------
//argument0 = NA

if (state == states.walking)
{
	//Let's increase the value of walk_anim_time for every frame, so that it's equal to 1 after 1 sec.
	walk_anim_time += 1 / game_get_speed(gamespeed_fps);
	var t = walk_anim_time / walk_anim_length;
	
	//When t = 1, it means we have reach the end of the animation
	if (t >= 1)
	{
		walk_anim_time = 0;
		t = 1;
		state = states.idle;
		
		//We launch idle animation again, and get the good sprite according to the direction of our character
		image_speed = 0.5;
		sprite_index = idle_sprite[dir];
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