//------------------------------------------------------------
//Check if hero has still steps left
//------------------------------------------------------------
//argument0 = NA

if ((remaining_steps <= 0 and state == states.idle) or currentHearts <= 0)
{
	//Hero is dead
	state = states.dead;
	dir = directions.down;
	room_goto(room_Game_Over);
	currentHearts = 3;
	//We update the sprite to get the death animation
	sprite_index = death_sprite;
}