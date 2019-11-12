// Draw blood surface
if (surface_exists(surf))
{
    draw_surface(surf, xStart, yStart);
}
// Create new surface if DX destroys old surface due to port resize
else
{
    surf = surface_create(10 * tile_width, 10 * tile_height);
}