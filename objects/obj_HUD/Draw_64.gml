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
draw_text(x_life_text, y_life_text, string(obj_Hero.remaining_lives));

//Items
draw_sprite(spr_Hero_Front, 0, x_life, y_life);
draw_sprite(spr_Full_Heart, 0, x_heart, y_heart);
draw_sprite(spr_Square_Weapon, 0, x_square_weapon, y_square_weapon);

if (obj_Hero.hasGun == true) { draw_sprite(spr_Weapon, 0, x_weapon, y_weapon); }
if (obj_Hero.hasPixie == true) { draw_sprite(spr_Pixie, 0, x_pixie, y_pixie); }
draw_sprite(spr_Key, 0, x_key, y_key);