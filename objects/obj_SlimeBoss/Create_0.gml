//Inherit from Character object
event_inherited();

//Step length
step_length = 2;

//Order in which the frames has to be displayed during the animation
frames = [2, 1, 0, 0, 1, 2, 3, 4];
walk_anim_frames = 8;

//Animation sprites
anim_sprite[directions.left] = spr_Slime_Anim_Left;
anim_sprite[directions.right] = spr_Slime_Anim_Right;
anim_sprite[directions.up] = spr_Slime_Anim_Back;
anim_sprite[directions.down] = spr_Slime_Anim_Front;

//Idle sprites
idle_sprite[directions.left] = spr_Slime_Left;
idle_sprite[directions.right] = spr_Slime_Right;
idle_sprite[directions.up] = spr_Slime_Back;
idle_sprite[directions.down] = spr_Slime_Front;

//Alarms for moving and shooting AI
alarm[0] = -1;
action_delay = (game_get_speed(gamespeed_fps) / (music1_BPM / 60)) - 1;
action_count = 0;

//Random initial direction, and clockwise or anticlockwise turn
dir_indice = irandom_range(0,3);
dir_array = [directions.right, directions.up, directions.left, directions.down];
dir = dir_array[dir_indice];
turn = choose(-1, 1);
rerandom_count = 0;

//Possible loots and droprates
drop_rates_ennemy_keys = [obj_Rune, obj_Full_Heart, obj_Key]
drop_rates_ennemy_values = [0.34, 0.33, 0.33]
array_size = array_length_1d(drop_rates_ennemy_values);
thresholds = [1, 0, 0, 0]

//Stats
attack = 1;
currentHearts = 100;

//He's big
image_xscale = 4;
image_yscale = 4;
