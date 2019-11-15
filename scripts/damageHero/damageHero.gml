//------------------------------------------------------------------
//Damage Hero
//------------------------------------------------------------------
//argument0 = NA

with (obj_Hero)
{
	currentHearts -= obj_Projectile_Ennemy.attack;
	alarm[0] = blinking_duration;
}