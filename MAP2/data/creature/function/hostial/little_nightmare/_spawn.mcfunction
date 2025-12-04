summon minecraft:vex ~ ~ ~ {"Tags":["loading"]}
execute as @n[distance=..0.01,type=minecraft:vex,tag=loading] run function creature:hostial/little_nightmare/load
