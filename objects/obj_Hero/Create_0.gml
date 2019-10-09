//Initialiaze the states of our hero
enum states
{
	idle,
	walking
}

state = states.idle;

//Whatever the value of x, x_pos will always move 32 by 32 pixels (Example: if 32 < x < 63, x_pos = x div 32 = 1)
x_pos = x div tile_width;
y_pos = y div tile_height;

/*h_speed = 0;
v_speed = 0;
walk_speed = 20