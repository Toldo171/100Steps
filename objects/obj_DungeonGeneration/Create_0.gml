//Initial hero position
x_hero_init = 9 * tile_width;
y_hero_init = 5 * tile_height;

//Positions of all the change_room objects
x_change_room_from = [9 * tile_width, 10 * tile_width, 15 * tile_width, 15 * tile_width, 9 * tile_width,   10 * tile_width,  4 * tile_width,  4 * tile_width];
y_change_room_from = [0,              0,               5 * tile_height, 6 * tile_height, 11 * tile_height, 11 * tile_height, 5 * tile_height, 6 * tile_height];

//Initialize dungeon variables and grid
dungeon_width = 3;
dungeon_height = 3;
initial_room_width = floor(dungeon_width / 2);
initial_room_height = floor(dungeon_height / 2);
rooms = ds_grid_create(dungeon_width, dungeon_width);
rooms_id = ds_grid_create(dungeon_width, dungeon_width);
rooms_dict = ds_map_create();

//change_room objects array
change_room_grid = ds_grid_create(dungeon_width, dungeon_width);

//Create dungeon
var i, j, k, roomDupe, roomGeneration;
var change_room = [];
for (i = 0; i < ds_grid_width(rooms); i += 1)
{
	for (j = 0; j < ds_grid_height(rooms); j += 1)
	{
		roomDupe = room_duplicate(room_Template);
		ds_grid_set(rooms, i, j, roomDupe);
		ds_grid_set(rooms_id, i, j, string(i) + string(j));
		rooms_dict[? ds_grid_get(rooms, i, j)] = ds_grid_get(rooms_id, i, j);
		
		//Create change_room objects
		for (k = 0; k < 8; k += 1)
		{
			change_room[k] = room_instance_add(ds_grid_get(rooms, i, j), x_change_room_from[k], y_change_room_from[k], obj_ChangeRoom);
		}
		ds_grid_set(change_room_grid, i, j, change_room);
	}
}

//Go to initial room and create hero
initial_room = ds_grid_get(rooms, initial_room_width, initial_room_height);
room_goto(initial_room);
room_instance_add(initial_room, x_hero_init, y_hero_init, obj_Hero);