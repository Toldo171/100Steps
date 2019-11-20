//Coordinates of the room in the dungeon
room_coordinates = obj_DungeonGeneration.rooms_dict[? room];
x_room_in_dungeon = real(string_char_at(room_coordinates, 1));
y_room_in_dungeon = real(string_char_at(room_coordinates, 2));

//Positions of all the destinations of change_room objects
x_change_room_to = [9 * tile_width,   10 * tile_width,  5 * tile_width,  5 * tile_width,  9 * tile_width,   10 * tile_width,  14 * tile_width,  14 * tile_width];
y_change_room_to = [10 * tile_height, 10 * tile_height, 5 * tile_height, 6 * tile_height, tile_height   ,   tile_height,      5 * tile_height,  6 * tile_height];

change_room = ds_grid_get(obj_DungeonGeneration.change_room_grid, x_room_in_dungeon, y_room_in_dungeon);

/*with (obj_ChangeRoom)
{
	target_room = room;
	x_target = 160;
	y_target = 160;
}*/

var i;
for (i = 0; i < 8; i += 1)
{
	//Set change_room destinations for every change_room object
	//change_room[i].target_room = room;
	//change_room[i].x_target = x_change_room_to[i];
	//change_room[i].y_target = y_change_room_to[i];
}