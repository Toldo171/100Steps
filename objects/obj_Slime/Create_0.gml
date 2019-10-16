state = states.idle;

//Whatever the value of x, x_pos will always move 32 by 32 pixels (Example: if 32 < x < 63, x_pos = x div 32 = 1)
x_pos = x div tile_width;
y_pos = y div tile_height;

//Character direction
dir = directions.down

//Where is the hero, and where he is going to
x_from = x_pos;
y_from = y_pos;
x_to = x_pos;
y_to = y_pos;

//Animation length
walk_anim_length = 0.15;
//How many time of the animation is left
walk_anim_time = 0;

//Animation speed
image_speed = 0.5;

//Order in which the frames has to be displayed during the animation
frames = [2, 1, 0, 0, 1, 2, 3, 4];
walk_anim_frames = 8;

//Animation sprites
anim_sprite[directions.left] = spr_Hero_Anim_Left;
anim_sprite[directions.right] = spr_Hero_Anim_Right;
anim_sprite[directions.up] = spr_Hero_Anim_Back;
anim_sprite[directions.down] = spr_Hero_Anim_Front;

//Idle sprites
idle_sprite[directions.left] = spr_Hero_Left;
idle_sprite[directions.right] = spr_Hero_Right;
idle_sprite[directions.up] = spr_Hero_Back;
idle_sprite[directions.down] = spr_Hero_Front;

var tile_layer = layer_get_id("Walls");
//Get the tilemap ID
tile_map = layer_tilemap_get_id(tile_layer);

//Objects assigned to the ennemy
hasGun = true;