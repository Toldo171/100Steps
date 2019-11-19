//Initial position of the hero
x_hero_init = 9 * tile_width;
y_hero_init = 5 * tile_height;

//change_room objects array
change_room = [];

//Positions of all the change_room objects
x_change_room_from = [9 * tile_width, 10 * tile_width, 15 * tile_width, 15 * tile_width, 9 * tile_width,   10 * tile_width,  4 * tile_width,  4 * tile_width];
y_change_room_from = [0,              0,               5 * tile_height, 6 * tile_height, 11 * tile_height, 11 * tile_height, 5 * tile_height, 6 * tile_height];

//Positions of all the destinations of change_room objects
//x_change_room_to = [9 * tile_width,   10 * tile_width,  4 * tile_width,  4 * tile_width,  9 * tile_width,   10 * tile_width,  15 * tile_width,  15 * tile_width];
//y_change_room_to = [11 * tile_height, 11 * tile_height, 5 * tile_height, 6 * tile_height, 0,                0,                5 * tile_height,  6 * tile_height];

first_room = room_duplicate(room_Template);
room_goto(first_room);

//Create hero
room_instance_add(first_room, x_hero_init, y_hero_init, obj_Hero);

//Create change_room objects
var i;
for (i = 0; i < 8; i += 1)
{
	change_room[i] = room_instance_add(first_room, x_change_room_from[i], y_change_room_from[i], obj_ChangeRoom);
	//Set change_room destinations for every change_room object
	//change_room[i].target_room = ;
	//change_room[i].x_target = x_change_room_to[i];
	//change_room[i].y_target = y_change_room_to[i];
}

