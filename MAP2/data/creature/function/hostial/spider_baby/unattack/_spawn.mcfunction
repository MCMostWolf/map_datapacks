execute if score #arachnophobia_mode gamerule matches 1 run return fail
summon minecraft:cave_spider ~ ~ ~ {"Tags":["loading","creature.spider_baby.unattack"]}
execute as @n[distance=..0.01,type=minecraft:cave_spider,tag=loading] run function creature:hostial/spider_baby/unattack/load
