//Remove Fog of War
removeFog(obj_Hero);

if instance_exists(obj_Blue_Pixie)
{
	removeFog(obj_Blue_Pixie);
}

//Clear fog if tile is enlighten enough
if image_alpha <= 0.4
{
	instance_destroy();
}