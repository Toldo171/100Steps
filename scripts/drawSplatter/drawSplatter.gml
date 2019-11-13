//------------------------------------------------------------
//Shoot
//------------------------------------------------------------
//argument0 = minSplatter
//argument1 = maxSplatter
//argument2 = Particle Type

// Amount of blood
var count = irandom_range(argument0, argument1);

for (var i = 0; i < count; i++)
{
    // Spawn blood within an 8x8 square around the mouse cursor
    instance_create_layer(x, y, "Splatter", argument2);
}