//Définition de la police et de la couleur
//draw_set_font(font_fontawesome);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

//Remaining steps bar
draw_sprite(spr_Step_Bar, 0, x_step_bar, y_step_bar);
draw_text(x_step_text, y_step_text, string(obj_Hero.remaining_steps));
//Gestion de la barre d'objectif
draw_steps = lerp(draw_steps, obj_Hero.remaining_steps, 0.25);
draw_set_color(c_yellow);
//draw_rectangle(x_topStats + 30, y_topStats - 12, x_topStats + 30 + (99 * draw_steps / obj_Hero.max_steps), y_topStats-12+22, false);
draw_set_color(c_white);

//Keys
draw_sprite(spr_Key, 0, x_key, y_key);
draw_text(x_key_text, y_key_text, string(obj_Hero.keys));

//Runes
draw_sprite(spr_Rune_Spd, 0, x_rune_spd, y_rune_spd);
draw_text(x_rune_spd_text, y_rune_spd_text, "Spd \n" + string(obj_Hero.spd_projectile));
draw_sprite(spr_Rune_CR, 0, x_rune_CR, y_rune_CR);
draw_text(x_rune_CR_text, y_rune_CR_text, "CR \n" + string(obj_Hero.crit_rate));
draw_sprite(spr_Rune_CD, 0, x_rune_CD, y_rune_CD);
draw_text(x_rune_CD_text, y_rune_CD_text, "CD \n" + string(obj_Hero.crit_damage));
draw_sprite(spr_Rune_Atk, 0, x_rune_Atk, y_rune_Atk);
draw_text(x_rune_Atk_text, y_rune_Atk_text, "Atk \n" + string(obj_Hero.attack));

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


//DEBUG
/*draw_text(32, 300, string(obj_Hero.x));
draw_text(64, 300, string(obj_Hero.y));
draw_text(32, 330, string(obj_Hero.x_pos));
draw_text(64, 330, string(obj_Hero.y_pos));
draw_text(32, 360, string(obj_Hero.x_from));
draw_text(64, 360, string(obj_Hero.y_from));
draw_text(32, 390, string(obj_Hero.x_to));
draw_text(64, 390, string(obj_Hero.y_to));
