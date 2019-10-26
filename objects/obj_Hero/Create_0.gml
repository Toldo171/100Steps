//Inherit from Character object
event_inherited();

//Random Seed
randomize();

//spawn
spawning_room = room_0_0;

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

//Death sprite
death_sprite = spr_Hero_Death;

//Hero field_of_view
field_of_view = 4

//Objects assigned to the hero
hasBluePixie = false;
hasRedPixie = false;
hasYellowPixie = false;
hasGreenPixie = false;

//Stats Hero
remaining_steps = 50;
remaining_lives = 10;
currentHearts = 3;
maxHearts = 3;
keys = 0;

//Stats damage
attack = 10;
crit_rate = 1;
crit_damage = 1.5;
spd_projectile = 5;