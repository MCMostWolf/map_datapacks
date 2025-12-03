data modify storage minecraft:tool creature_spawner set from entity @s data
execute at @s run function creature:creature_spawner/_place
kill @s