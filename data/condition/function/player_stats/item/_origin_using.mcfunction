execute if entity @s[gamemode=spectator] run return fail
execute store result storage minecraft:player uid int 1 run scoreboard players get @s uid
return run function condition:player_stats/item/origin_using with storage minecraft:player