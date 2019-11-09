xStart = 5 * tile_width;
yStart = 2 * tile_height;
xEnd = 14 * tile_width;
yEnd = 10 * tile_height;

part_system = part_system_create();
part_emitter = part_emitter_create(part_system);
part_type = part_type_create();

part_type_shape(part_system, pt_shape_cloud);
part_type_size(part_system, 0.5, 1.5, 0, 0);
part_type_life(part_system, 150, 225);
part_type_blend(part_system, 1);
part_type_speed(part_system, 0, 0.1, 0, 0);
part_type_alpha3(part_system, 0, 0.1, 0);
part_type_color1(part_system, c_yellow);