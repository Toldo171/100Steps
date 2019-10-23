//------------------------------------------------------------
//Handles character animation death
//------------------------------------------------------------
//argument0 = NA

if (state == states.dead)
{
	//Let's increase the value of death_anim_time for every frame, so that it's equal to 1 after 1 sec.
	death_anim_time += 1 / game_get_speed(gamespeed_fps);
	var t = death_anim_time / death_anim_length;
	
	//When t = 1, it means we have reach the end of the animation
	if (t >= 1)
	{
		death_anim_time = 0;
		t = 1;
		state = states.idle;
		
		//We launch idle animation again, and get the good sprite according to the direction of our character
		image_speed = 0.5;
		sprite_index = idle_sprite[dir];
		
		//Removing 1 life, reinitializing steps, position, direction, hearts
		room_goto(spawning_room);
		remaining_lives -= 1;
		remaining_steps = 50;
		x = tile_width * 7;
		y = tile_width * 5;
		x_pos = x div tile_width;
		y_pos = y div tile_height;
		currentHearts = maxHearts;
	}
	
	//According to the time of the animation, a specific frame is displayed. Each frame will be displayed the same amount of time.
	image_index = frames[floor((walk_anim_frames - 1) * t)]
}