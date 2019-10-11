//Initialiaze the states of our hero
enum states
{
	idle,
	walking
}

state = states.idle;

//Whatever the value of x, x_pos will always move 32 by 32 pixels (Example: if 32 < x < 63, x_pos = x div 32 = 1)
x_pos = x div tile_width;
y_pos = y div tile_height;

//Where is the hero, and where he is going to
x_from = x_pos;
y_from = y_pos;
x_to = x_pos;
y_to = y_pos;

//Animation length
walk_anim_length = 0.1;
//How many time of the animation is left
walk_anim_time = 0;

//Animation speed
image_speed = 0.5;

//Order in which the frames has to be displayed during the animation
frames = [0, 1, 2, 1, 0];
walk_anim_frames = 5;

//
sprite[directions.left] = spr_Hero;
sprite[directions.right] = spr_Hero;
sprite[directions.up] = spr_Hero;
sprite[directions.down] = spr_Hero;

var tile_layer = layer_get_id("Walls");
//Get the tilemap ID
tile_map = layer_tilemap_get_id(tile_layer);

//Hero field_of_view
field_of_view = 6

//Remaining Steps
remaining_steps = 100
