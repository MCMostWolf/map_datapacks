
execute unless function condition:entity_stats/has_vehicle run kill @s
particle minecraft:dust_color_transition{from_color:4325478,scale:1,to_color:10879231} ~ ~ ~ 0 1 0 0.05 0 normal
execute on vehicle unless predicate condition:entity_stats/onground run return fail
#落地生成
execute on vehicle at @s align xyz positioned ~0.5 ~ ~0.5 run function creature:creature_spawner/nightmare/control/summon/summon_creature with entity @s data