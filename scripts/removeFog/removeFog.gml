//------------------------------------------------------------
//Remove fog of war
//------------------------------------------------------------
//argument0 = character

//Remove Fog of War
var x_from_char = abs(x - argument0.x) div tile_width;
var y_from_char = abs(y - argument0.y) div tile_height;
var dist_from_char = x_from_char + y_from_char;

if (dist_from_char <= argument0.field_of_view)
{
	image_alpha = (dist_from_char - 0.2) / argument0.field_of_view;
}