
execute unless function condition:entity_stats/has_vehicle run kill @s
particle minecraft:small_flame ~ ~ ~ 0 1 0 0.05 0 normal
execute on vehicle unless predicate condition:entity_stats/onground run return fail
#落地生成
execute on vehicle at @s align xyz positioned ~0.5 ~ ~0.5 run function creature:creature_spawner/vanilla/control/summon/summon_creature with entity @s data