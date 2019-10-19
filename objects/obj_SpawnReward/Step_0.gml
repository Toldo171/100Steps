if (!(layer_has_instance("Ennemies", obj_Slime)) and hasSpawned == false)
{
	instance_create_layer(x_reward, y_reward, "Objects", obj_Heart);
	hasSpawned = true;
}