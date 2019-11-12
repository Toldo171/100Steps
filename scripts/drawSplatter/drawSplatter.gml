//------------------------------------------------------------
//Shoot
//------------------------------------------------------------
//argument0 = NA

// Amount of blood
var count = irandom_range(4, 32);

for (var i = 0; i < count; i++)
{
    // Spawn blood within an 8x8 square around the mouse cursor
    instance_create_layer(x, y, "Splatter", obj_ParticleSplatter);
}