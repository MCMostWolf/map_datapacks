summon minecraft:endermite ~ ~ ~ {"Tags":["loading"]}
execute as @n[distance=..0.01,type=minecraft:endermite,tag=loading] run function creature:hostial/dead_mite/load
