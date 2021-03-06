//Get tilemap IDs for Walls and Decor
tile_layer_walls = layer_get_id("Walls");
tile_map_walls = layer_tilemap_get_id(tile_layer_walls);
tile_layer_decor = layer_get_id("Decor");
tile_map_decor = layer_tilemap_get_id(tile_layer_decor);

//Coordinates of the room in the dungeon
room_coordinates = obj_DungeonGeneration.rooms_dict[? room];
x_room_in_dungeon = real(string_char_at(room_coordinates, 1));
y_room_in_dungeon = real(string_char_at(room_coordinates, 2));

//Positions of all the change_room objects
x_change_room_from = [9 * tile_width, 10 * tile_width, 15 * tile_width, 15 * tile_width, 9 * tile_width,   10 * tile_width,  4 * tile_width,  4 * tile_width];
y_change_room_from = [0,              0,               5 * tile_height, 6 * tile_height, 11 * tile_height, 11 * tile_height, 5 * tile_height, 6 * tile_height];

//Positions of all the destinations of change_room objects
x_change_room_to = [9 * tile_width,   10 * tile_width,  5 * tile_width,  5 * tile_width,  9 * tile_width,   10 * tile_width,  14 * tile_width,  14 * tile_width];
y_change_room_to = [10 * tile_height, 10 * tile_height, 5 * tile_height, 6 * tile_height, tile_height   ,   tile_height,      5 * tile_height,  6 * tile_height];

//Create change_room objects, and set change_room destinations for every change_room object
change_room = [];
var k;
for (k = 0; k < 8; k += 1)
{
	change_room[k] = instance_create_layer(x_change_room_from[k], y_change_room_from[k], "Projectiles", obj_ChangeRoom);
	
	//Set target room for each door, and drawing tiles
	//Left of the Dungeon
	if (x_change_room_to[k] == 14 * tile_width)
	{
		change_room[k].target_room = ds_grid_get(obj_DungeonGeneration.rooms, x_room_in_dungeon - 1, y_room_in_dungeon);
	}
	//Right of the Dungeon
	else if (x_change_room_to[k] == 5 * tile_width)
	{
		change_room[k].target_room = ds_grid_get(obj_DungeonGeneration.rooms, x_room_in_dungeon + 1, y_room_in_dungeon);
	}	
	//Top of the Dungeon
	else if (y_change_room_to[k] == 10 * tile_height)
	{
		change_room[k].target_room = ds_grid_get(obj_DungeonGeneration.rooms, x_room_in_dungeon, y_room_in_dungeon - 1);
		tilemap_set_at_pixel(tile_map_decor, 4, x_change_room_from[0], y_change_room_from[0]);
		tilemap_set_at_pixel(tile_map_decor, 5, x_change_room_from[1], y_change_room_from[1]);
	}	
	//Bottom of the Dungeon
	else if (y_change_room_to[k] == tile_height)
	{
		change_room[k].target_room = ds_grid_get(obj_DungeonGeneration.rooms, x_room_in_dungeon, y_room_in_dungeon + 1);
	}
	
	change_room[k].x_target = x_change_room_to[k];
	change_room[k].y_target = y_change_room_to[k];
}

//Then, we destroy each change_room object which is at the edge of the dungeon
with (obj_ChangeRoom)
{
	//Remove at the left of the dungeon
	if (obj_RoomGeneration.x_room_in_dungeon == 0 and x = 4 * tile_width)
	{
		instance_destroy();
	}
	//Remove at the right of the dungeon
	if (obj_RoomGeneration.x_room_in_dungeon == dungeon_width - 1 and x = 15 * tile_width)
	{
		instance_destroy();
	}
	//Remove at the top of the dungeon
	if (obj_RoomGeneration.y_room_in_dungeon == 0 and y = 0)
	{
		instance_destroy();
		tilemap_set_at_pixel(obj_RoomGeneration.tile_map_walls, 2, obj_RoomGeneration.x_change_room_from[0], obj_RoomGeneration.y_change_room_from[0]);
		tilemap_set_at_pixel(obj_RoomGeneration.tile_map_walls, 2, obj_RoomGeneration.x_change_room_from[1], obj_RoomGeneration.y_change_room_from[1]);
	}
	//Remove at the bottom of the dungeon
	if (obj_RoomGeneration.y_room_in_dungeon == dungeon_height - 1 and y = 11 * tile_height)
	{
		instance_destroy();
	}
}