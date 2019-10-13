//------------------------------------------------------------------
//Check collision with a wall and destroy projectile if necessary
//------------------------------------------------------------------
//argument0 = NA

var components = global.components[dir];
var dx = components[0];
var dy = components[1];

//If the projectile is heading left or up, we update dx or dy
if (dx == -1) dx += 1
if (dy == -1) dy += 1

//if (tilemap_get(tile_map, (x div tile_width) + dx , (y div tile_height) + dy))
if (tilemap_get(tile_map, (x div tile_width) + dx , (y div tile_height) + dy))
{
	instance_destroy();
}