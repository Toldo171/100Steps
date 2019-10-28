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
	}
	
	//According to the time of the animation, a specific frame is displayed. Each frame will be displayed the same amount of time.
	image_index = frames[floor((walk_anim_frames - 1) * t)]
}