//------------------------------------------------------------
//Handles character movement
//------------------------------------------------------------
//argument0 = direction

var dir = argument0; //can be left, right, up, down
var components = global.components[dir];
var dx = components[0];
var dy = components[1];

//Move
if (state == states.idle)
{
	//Collision Handler
	if !(tilemap_get(tile_map, x_pos + dx, y_pos + dy))
	{
		x_from = x_pos;
		y_from = y_pos;
	
		x_to = x_pos + dx;
		y_to = y_pos + dy;
	
		x_pos = x_to;
		y_pos = y_to;
		
		//Remove 1 step from the count
		remaining_steps -= 1;
		
		state = states.walking;
	
		//We get the good sprite according to the direction of our character
		sprite_index = sprite[dir];
	}
}