//Initialiaze the states of our hero
state = states.idle;

//Whatever the value of x, x_pos will always move 32 by 32 pixels (Example: if 32 < x < 63, x_pos = x div 32 = 1)
x_pos = x div tile_width;
y_pos = y div tile_height;

//Hero direction
dir = directions.down

//Where is the hero, and where he is going to
x_from = x_pos;
y_from = y_pos;
x_to = x_pos;
y_to = y_pos;

//Animation length
walk_anim_length = 0.15;
death_anim_length = 1;
//How many time of the animation is left
walk_anim_time = 0;
death_anim_time = 0;

//Animation speed
image_speed = 0.5;

tile_layer = layer_get_id("Walls");
//Get the tilemap ID
tile_map = layer_tilemap_get_id(tile_layer);

//life
attack = 1;
currentHearts = 3;