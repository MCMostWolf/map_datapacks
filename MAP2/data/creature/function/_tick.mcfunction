execute as @e[type=minecraft:item_display,tag=creature_spawner] at @s run function creature:creature_spawner/_tick
execute as @e[type=minecraft:marker,tag=creature_spawner_place] run function creature:creature_spawner/marker_place
execute as @e[type=minecraft:item_display,tag=render_display] unless function condition:entity_stats/has_vehicle run kill @s
execute as @e[type=minecraft:item,tag=horror_creeper] unless function condition:entity_stats/has_vehicle at @s run function creature:hostial/horror_creeper/event/explode