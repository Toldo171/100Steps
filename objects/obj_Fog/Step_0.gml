//Remove Fog of War
removeFog(obj_Hero);
removeFog(obj_Pixie);

//Clear fog if tile is enlighten enough
if image_alpha <= 0.4
{
	instance_destroy();
}