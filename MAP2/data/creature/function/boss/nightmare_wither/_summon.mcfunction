#召唤物标签
tag @s add loading
execute as @n[distance=..0.01,type=minecraft:wither,tag=loading] run function creature:boss/nightmare_wither/load
scoreboard players set #wither gamerule 1