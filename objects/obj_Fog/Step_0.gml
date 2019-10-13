//Remove Fog of War
var x_from_hero = abs(x - obj_Hero.x) div tile_width;
var y_from_hero = abs(y - obj_Hero.y) div tile_height;
var dist_from_hero = x_from_hero + y_from_hero;

if dist_from_hero <= obj_Hero.field_of_view
{
	image_alpha = (dist_from_hero - 0.2) / obj_Hero.field_of_view;
}


if image_alpha <= 0.4
{
	instance_destroy();
}