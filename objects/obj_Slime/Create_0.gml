//Inherit from Character object
event_inherited();

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
alarm[1] = -1;
move_delay = 90;
shoot_delay = 60;

//Possible loots and droprates
drop_rates_ennemy_keys = [obj_Heart, obj_Steps, obj_Life, obj_Key]
drop_rates_ennemy_values = [0.1, 0.1, 0.05, 0.05]
array_size = array_length_1d(drop_rates_ennemy_values);
thresholds = [1, 0, 0, 0, 0]

//Stats
damage = 1;
currentHearts = 1;