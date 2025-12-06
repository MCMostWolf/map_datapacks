summon minecraft:wither ~ ~ ~ {"Tags":["loading"]}
execute as @n[distance=..0.01,type=minecraft:wither,tag=loading] run function creature:boss/nightmare_wither/load
scoreboard players set #wither gamerule 0
function area:nightmare_tower/eye/_spawn