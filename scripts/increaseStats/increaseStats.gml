//------------------------------------------------------------
//Increase stats according to rune (increaseStats)
//------------------------------------------------------------
//argument0 = Hero

if (slot == "speed")
	{
		if (rune_type == "speed_common")
		{
			var rand = irandom_range(min_boost_common, max_boost_common);
		}
		else if (rune_type == "speed_rare")
		{
			var rand = irandom_range(min_boost_rare, max_boost_rare);
		}	
		else if (rune_type == "speed_epic")
		{
			var rand = irandom_range(min_boost_epic, max_boost_epic);
		}	
		else if (rune_type == "speed_legendary")
		{
			var rand = irandom_range(min_boost_legendary, max_boost_legendary);
		} 
		
	argument0.spd_projectile += rand * spd_mul;
	}
	
	if (slot == "critRate")
	{
		if (rune_type == "critRate_common")
		{
			var rand = irandom_range(min_boost_common, max_boost_common);
		}
		else if (rune_type == "critRate_rare")
		{
			var rand = irandom_range(min_boost_rare, max_boost_rare);
		}	
		else if (rune_type == "critRate_epic")
		{
			var rand = irandom_range(min_boost_epic, max_boost_epic);
		}	
		else if (rune_type == "critRate_legendary")
		{
			var rand = irandom_range(min_boost_legendary, max_boost_legendary);
		} 
	
	//Increase crit rate by x%
	argument0.crit_rate += rand * CR_mul;
	}
	
	if (slot == "critDamage")
	{
		if (rune_type == "critDamage_common")
		{
			var rand = irandom_range(min_boost_common, max_boost_common);
		}
		else if (rune_type == "critDamage_rare")
		{
			var rand = irandom_range(min_boost_rare, max_boost_rare);
		}	
		else if (rune_type == "critDamage_epic")
		{
			var rand = irandom_range(min_boost_epic, max_boost_epic);
		}	
		else if (rune_type == "critDamage_legendary")
		{
			var rand = irandom_range(min_boost_legendary, max_boost_legendary);
		} 
	//Increase crit damage by x%
	argument0.crit_damage += rand * CD_mul;
	}
	
	if (slot == "attack")
	{
		if (rune_type == "attack_common")
		{
			var rand = irandom_range(min_boost_common, max_boost_common);
		}
		else if (rune_type == "attack_rare")
		{
			var rand = irandom_range(min_boost_rare, max_boost_rare);
		}	
		else if (rune_type == "attack_epic")
		{
			var rand = irandom_range(min_boost_epic, max_boost_epic);
		}	
		else if (rune_type == "attack_legendary")
		{
			var rand = irandom_range(min_boost_legendary, max_boost_legendary);
		} 
	
	//Increase attack by x% of base attack	
	argument0.attack += rand * atk_mul;
	}
	
instance_destroy();