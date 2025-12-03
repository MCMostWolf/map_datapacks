summon minecraft:cave_spider ~ ~ ~ {"Tags":["loading"]}
execute as @n[distance=..0.01,type=minecraft:cave_spider,tag=loading] run function creature:hostial/spider_mother/load
