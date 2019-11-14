//Initializing the particle system
part_system = part_system_create();
part_emitter = part_emitter_create(part_system);
part_type = part_type_create();

//Choosing the shape, type of fading, color, life span, scale and gravity of the particles
//part_type_shape(part_type, pt_shape_smoke);
part_type_sprite(part_type, spr_Smoke, false, false, false);
part_type_alpha3(part_type, 0, 1, 0);
part_type_color3(part_type, c_yellow, c_orange, c_red);
part_type_life(part_type, game_get_speed(gamespeed_fps), game_get_speed(gamespeed_fps) * 1.5);
part_type_scale(part_type, 0.05, 0.05);
part_type_gravity(part_type, 0.003, 90);

//Choosing the region where the particles will be emitted
part_emitter_region(part_system, part_emitter, x, x + 5, y - 5, y, ps_shape_diamond, ps_distr_invgaussian);

//Emitting a burst of particles
part_emitter_burst(part_system, part_emitter, part_type, 1);