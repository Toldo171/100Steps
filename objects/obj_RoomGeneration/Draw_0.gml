tile_layer_walls = layer_get_id("Walls");
tile_map_walls = layer_tilemap_get_id(tile_layer_walls);
tile_set_walls = tilemap_get_tileset(tile_map_walls)
var data = tilemap_get(tile_map_walls, 1, 0);

draw_tile(tile_set_walls, data, 0, 160, 96);