//Choosing the region where the particles will be emitted
part_emitter_region(part_system, part_emitter, x, x + 5, y - 5, y, ps_shape_diamond, ps_distr_invgaussian);

//Emitting a burst of particles
part_emitter_burst(part_system, part_emitter, part_type, 1);