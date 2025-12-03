summon minecraft:spider ~ ~ ~ {"Tags":["loading"]}
execute as @n[distance=..0.01,type=minecraft:spider,tag=loading] run function creature:hostial/spider_baby/load
