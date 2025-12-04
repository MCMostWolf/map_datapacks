effect give @s minecraft:invisibility 1 9 true
execute unless predicate condition:tick/30t run return fail
particle minecraft:squid_ink ~ ~0.7 ~ 0.2 0.9 0.2 0.05 15 normal
playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 0.3 0.8
playsound minecraft:item.ink_sac.use hostile @a ~ ~ ~ 1 0.8