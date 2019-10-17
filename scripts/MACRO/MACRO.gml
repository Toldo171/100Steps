//Global values need to be called for them to be defined. gml_pragma will execute a small snippet of code when the game initializes
gml_pragma("global", "MACRO()");

//Les macros sont des variables globales qui ne peuvent jamais Ãªtre modifiÃ©es, et qui sont accessibles depuis n'importe quelle piÃ¨ce
#macro tile_width 32
#macro tile_height 32

enum states
{
	idle,
	walking,
	dead
}

enum directions
{
	left,
	right,
	up,
	down
}

global.components = [];
global.components[directions.right] = [1,0];
global.components[directions.up] = [0,-1];
global.components[directions.left] = [-1,0];
global.components[directions.down] = [0,1];

//Dictionnary that relates the direction of the character with the angle of the projectile
global.dir_projectile = ds_map_create();
global.dir_projectile[? directions.right] = 0;
global.dir_projectile[? directions.up] = 90;
global.dir_projectile[? directions.left] = 180;
global.dir_projectile[? directions.down] = 270;