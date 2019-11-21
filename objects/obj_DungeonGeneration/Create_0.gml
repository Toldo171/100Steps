//Initial hero position
x_hero_init = 9 * tile_width;
y_hero_init = 5 * tile_height;

//Initialize dungeon variables and grid
initial_room_width = floor(dungeon_width / 2);
initial_room_height = floor(dungeon_height / 2);
rooms = ds_grid_create(dungeon_width, dungeon_height);
rooms_id = ds_grid_create(dungeon_width, dungeon_height);
rooms_dict = ds_map_create();

//Create dungeon
var i, j, roomDupe;
for (i = 0; i < ds_grid_width(rooms); i += 1)
{
	for (j = 0; j < ds_grid_height(rooms); j += 1)
	{
		roomDupe = room_duplicate(room_Template);
		ds_grid_set(rooms, i, j, roomDupe);
		ds_grid_set(rooms_id, i, j, string(i) + string(j));
		rooms_dict[? ds_grid_get(rooms, i, j)] = ds_grid_get(rooms_id, i, j);
	}
}

//Go to initial room and create hero
initial_room = ds_grid_get(rooms, initial_room_width, initial_room_height);
room_goto(initial_room);
room_instance_add(initial_room, x_hero_init, y_hero_init, obj_Hero);