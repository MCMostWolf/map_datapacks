summon minecraft:wither ~ ~ ~ {"Tags":["loading"]}
execute as @n[distance=..0.01,type=minecraft:wither,tag=loading] run function creature:boss/nightmare_wither/load
