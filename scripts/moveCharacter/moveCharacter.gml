//------------------------------------------------------------
//Handles character movement
//------------------------------------------------------------
//argument0 = direction
//argument1 = character

var dir_temp = argument0; //can be left, right, up, down
var components = global.components[dir_temp];
var dx = components[0];
var dy = components[1];

//Move
if (state == states.idle)
{
	//Even if there is an obstacle, we update the direction of the sprite
	dir = dir_temp;
	sprite_index = idle_sprite[dir];
	
	//Collision Handler
	if !(tilemap_get(tile_map, x_pos + dx, y_pos + dy))
	{
		//Stop idle animation
		image_speed = 0;
		
		x_from = x_pos;
		y_from = y_pos;
	
		x_to = x_pos + dx;
		y_to = y_pos + dy;
	
		x_pos = x_to;
		y_pos = y_to;
		
		//Remove 1 step from the count
		if (argument1 == obj_Hero) { remaining_steps -= 1; }
		
		state = states.walking;
	
		//We get the good sprite according to the direction of our character
		sprite_index = anim_sprite[dir_temp];
	}
}