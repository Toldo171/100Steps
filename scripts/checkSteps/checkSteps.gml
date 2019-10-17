//------------------------------------------------------------
//Check if hero has still steps left
//------------------------------------------------------------
//argument0 = NA

if (remaining_steps <= 0 and state == states.idle)
{
	//Hero is dead
	state = states.dead;
	dir = directions.down;
	//We update the sprite to get the death animation
	sprite_index = death_sprite;
}