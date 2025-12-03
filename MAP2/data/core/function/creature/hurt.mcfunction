#execute unless function condition:entity_stats/attacker_with_bypasses_invul run scoreboard players set @s invul 10
data modify storage temp creature_id set from entity @s[type=!#minecraft:noplayerne] data.creature_id
tag @s add creature.hurt
execute if entity @s[type=!#minecraft:noplayerne] run function core:creature/hurt/_event with storage temp
execute unless entity @n[distance=..0,tag=creature.hurt] run function core:creature/hurt/_death
#execute if score @s death matches 1 run function core:creature/hurt/death
tag @s remove creature.hurt