// Thin out the blood as it spreads
image_xscale -= sizeChange;
image_yscale  = image_xscale;

// I also decided to fade the blood out by a random percentage as it spreads
// These values seemed to feel right
if (movSpd > 0)
{
    image_alpha -= random_range(0.05, 0.1);
}

// Slow down the blood with friction
movSpd = choose(movSpd, 0, fric);

// I decided to draw the blood to the surface here
// This isn't really necessary, you could put this somewhere else
if (instance_exists(obj_DrawSplatter))
{
    surface_set_target(obj_DrawSplatter.surf);
	//Adapt x and y according to the position of the surface, and on the middle of the tile (+16))
    draw_sprite_ext(spr_Trail, 0, x - 5 * tile_width + irandom_range(8, 24), y - tile_height + irandom_range(8, 24), image_xscale, image_yscale, image_angle, c_white, image_alpha);
    surface_reset_target();  
}

// Once the blood thins away to nothing, destroy it
// Destroy self
if (image_xscale <= 0)
{
    instance_destroy();
}