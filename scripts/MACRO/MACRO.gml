//Global values need to be called for them to be defined. gml_pragma will execute a small snippet of code when the game initializes
gml_pragma("global", "MACRO()");

//Les macros sont des variables globales qui ne peuvent jamais être modifiées, et qui sont accessibles depuis n'importe quelle pièce
#macro tile_width 32
#macro tile_height 32

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