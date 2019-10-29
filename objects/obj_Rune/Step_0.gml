event_inherited();

if (x == obj_Hero.x and y == obj_Hero.y)
{
	if (slot == "speed")
	{
		if (rune_type == "speed_common")
		{
			var rand = irandom_range(1,3);
		}
		else if (rune_type == "speed_rare")
		{
			var rand = irandom_range(2,5);
		}	
		else if (rune_type == "speed_epic")
		{
			var rand = irandom_range(4,7);
		}	
		else if (rune_type == "speed_legendary")
		{
			var rand = irandom_range(6,10);
		} 
		
	obj_Hero.spd_projectile += rand / 10;
	}
	
	if (slot == "critRate")
	{
		if (rune_type == "critRate_common")
		{
			var rand = irandom_range(1,3);
		}
		else if (rune_type == "critRate_rare")
		{
			var rand = irandom_range(2,5);
		}	
		else if (rune_type == "critRate_epic")
		{
			var rand = irandom_range(4,7);
		}	
		else if (rune_type == "critRate_legendary")
		{
			var rand = irandom_range(6,10);
		} 
	
	//Increase crit rate by x%
	obj_Hero.crit_rate += rand;
	}
	
	if (slot == "critDamage")
	{
		if (rune_type == "critDamage_common")
		{
			var rand = irandom_range(1,3);
		}
		else if (rune_type == "critDamage_rare")
		{
			var rand = irandom_range(2,5);
		}	
		else if (rune_type == "critDamage_epic")
		{
			var rand = irandom_range(4,7);
		}	
		else if (rune_type == "critDamage_legendary")
		{
			var rand = irandom_range(6,10);
		} 
	//Increase crit damage by x%
	obj_Hero.crit_damage += rand / 100;
	}
	
	if (slot == "attack")
	{
		if (rune_type == "attack_common")
		{
			var rand = irandom_range(1,3);
		}
		else if (rune_type == "attack_rare")
		{
			var rand = irandom_range(2,5);
		}	
		else if (rune_type == "attack_epic")
		{
			var rand = irandom_range(4,7);
		}	
		else if (rune_type == "attack_legendary")
		{
			var rand = irandom_range(6,10);
		} 
	
	//Increase attack by x% of base attack	
	obj_Hero.attack += rand / 10;
	}
	instance_destroy();
}