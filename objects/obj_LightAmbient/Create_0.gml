//light = light_create_point(x, y, Light_Shadow_Length, Light_Color, Light_Range, Light_Intensity);
initial_shadow_length = 32000;
initial_light_range = 768;
initial_light_intensity = 0.7;

light = light_create_point(x, y, initial_shadow_length, Light_Color, initial_light_range, initial_light_intensity);
sprite_index = spr_light_point;

// Set LUTs
if(LUT_Intensity != noone)
{
	light[| eLight.LutIntensity] = sprite_get_texture(LUT_Intensity, 0);
}

// Add the light to the world
light_add_to_world(light);

//Changing light range
glow_range = 3;
change_range_delay = 30;
alarm[0] = -1;