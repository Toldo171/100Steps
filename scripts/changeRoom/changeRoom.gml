//------------------------------------------------------------
//Change Room and update hero and pixie positions
//------------------------------------------------------------
//argument0 = NA

room_goto(target_room);
	
//Updating hero position values
obj_Hero.x = x_target;
obj_Hero.x_pos = x_target div tile_width;
obj_Hero.x_from = x_target div tile_width;
obj_Hero.x_to = x_target div tile_width;
obj_Hero.y = y_target;
obj_Hero.y_pos = y_target div tile_height;
obj_Hero.y_from = y_target div tile_height;
obj_Hero.y_to = y_target div tile_height;
	
//Update pixies position values
with (obj_Pixie)
{
	x = obj_Hero.x;
	y = obj_Hero.y;
}