function onCastSpell(creature, variant)
	doTargetCombatHealth(0, creature.uid, COMBAT_HEALING, creature:getMaxHealth() * 0.25, creature:getMaxHealth() * 0.25, 252)
	return true
end