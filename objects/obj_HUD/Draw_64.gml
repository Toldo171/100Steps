//Définition de la police et de la couleur
//draw_set_font(font_fontawesome);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

//Remaining steps bar
draw_sprite(spr_Step_Bar, 0, x_step_bar, y_step_bar);
draw_text(x_step_text, y_step_text, string(obj_Hero.remaining_steps));
//Gestion de la barre d'objectif
draw_steps = lerp(draw_steps, obj_Hero.remaining_steps, 0.25);
draw_set_color(c_yellow);
//draw_rectangle(x_topStats + 30, y_topStats - 12, x_topStats + 30 + (99 * draw_steps / obj_Hero.max_steps), y_topStats-12+22, false);
draw_set_color(c_black);

//Remaining lives
draw_sprite(spr_Hero_Front, 0, x_life, y_life);
draw_text(x_life_text, y_life_text, string(obj_Hero.remaining_lives));

//Keys
draw_sprite(spr_Key, 0, x_key, y_key);
draw_text(x_key_text, y_key_text, string(obj_Hero.keys));

//Max Hearts
var i
for (i = 0; i < 8; i += 1)
{
	if (obj_Hero.maxHearts >= i+1)
	{
		if (i < 4)
		{
			draw_sprite(spr_Empty_Heart, 0, x_heart + (i * heart_interval), y_heart);
		}
		else
		{
			draw_sprite(spr_Empty_Heart, 0, x_heart + ((i-4) * heart_interval), y_heart + heart_interval);
		}
	}
}

//Hearts
var j;
for (j = 0; j < 8; j += 1)
{
	if (obj_Hero.currentHearts >= j+1)
	{
		if (j < 4)
		{
			draw_sprite(spr_Heart, 0, x_heart + (j * heart_interval), y_heart);
		}
		else
		{
			draw_sprite(spr_Heart, 0, x_heart + ((j-4) * heart_interval), y_heart + heart_interval);
		}
	}
}

//Pixies
if (obj_Hero.hasBluePixie == true) { draw_sprite(spr_Blue_Pixie, 0, x_blue_pixie, y_blue_pixie); }
if (obj_Hero.hasRedPixie == true) { draw_sprite(spr_Red_Pixie, 0, x_red_pixie, y_red_pixie); }
if (obj_Hero.hasYellowPixie == true) { draw_sprite(spr_Yellow_Pixie, 0, x_yellow_pixie, y_yellow_pixie); }
if (obj_Hero.hasGreenPixie == true) { draw_sprite(spr_Green_Pixie, 0, x_green_pixie, y_green_pixie); }