summon minecraft:wither_skeleton ~ ~ ~ {"Tags":["loading"]}
execute as @n[distance=..0.01,type=minecraft:wither_skeleton,tag=loading] run function creature:hostial/silent_archer/load
