//Inherit from Character object
event_inherited();

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

//Objects assigned to the ennemy
hasGun = true;

//Alarms for moving and shooting AI
alarm[0] = -1;
alarm[1] = -1;
move_delay = 60;
shoot_delay = 15;

//life
life = 1;