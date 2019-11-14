//Initializing the particle system
part_system = part_system_create();
part_emitter = part_emitter_create(part_system);
part_type = part_type_create();

//Choosing the shape, type of fading, color, life span, scale and gravity of the particles
part_type_shape(part_type,pt_shape_square);
part_type_size(part_type, 0.01, 0.05, 0, 0);
part_type_color1(part_type, 959175);
part_type_alpha2(part_type, 0.5, 1);
part_type_speed(part_type, 1.5, 2, 0, 0);
part_type_direction(part_type, 0, 360, 0, 0);
part_type_blend(part_type, 1);
part_type_life(part_type, game_get_speed(gamespeed_fps) / 12, game_get_speed(gamespeed_fps) / 6); //Between 5 and 10 frames at 60 fps

//Choosing the region where the particles will be emitted
part_emitter_region(part_system, part_emitter, x, x + 5, y - 5, y, 0, 0);

//Emitting a burst of particles
part_emitter_burst(part_system, part_emitter, part_type, 10);