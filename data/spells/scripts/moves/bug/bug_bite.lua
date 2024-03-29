local damageMultiplier = damageMultiplierMoves.singletarget
local areaEffect = 266
local combat = COMBAT_BUGDAMAGE
local defenseType = COMBAT_PHYSICALDAMAGE

function onCastSpell(creature, variant)
	local target = creature:getTarget()
	if not target then return true end

	local damage = damageMultiplier * creature:getTotalMeleeAttack()
	doTargetCombatHealth(creature.uid, target.uid, combat, -damage, -damage, areaEffect, defenseType)

	return true
end
